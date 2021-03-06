# Copyright (c) 2009-2012 VMware, Inc.

require 'spec_helper'

module Bosh::Director
  describe Jobs::CloudCheck::ApplyResolutions do
    before do
      Models::Deployment.make(name: 'deployment')
      ProblemResolver.stub(new: resolver)
    end

    describe 'Resque job class expectations' do
      let(:job_type) { :cck_apply }
      it_behaves_like 'a Resque job'
    end

    let(:resolutions) { {1 => 'delete_disk', 2 => 'ignore'} }
    let(:normalized_resolutions) { {'1' => 'delete_disk', '2' => 'ignore'} }
    let(:job) { described_class.new('deployment', resolutions) }
    let(:resolver) { instance_double('Bosh::Director::ProblemResolver') }
    let(:deployment) { Models::Deployment[1] }

    it 'should normalize the problem ids' do
      job.stub(:with_deployment_lock).and_yield

      resolver.should_receive(:apply_resolutions).with(normalized_resolutions)

      job.perform
    end

    it 'obtains a deployment lock' do
      job.should_receive(:with_deployment_lock).with(deployment).and_yield

      resolver.stub(:apply_resolutions)

      job.perform
    end

    it 'applies the resolutions' do
      job.stub(:with_deployment_lock).and_yield

      resolver.should_receive(:apply_resolutions).and_return(1)

      job.perform.should == '1 resolved'
    end
  end
end
