# GCE BOSH Cloud Provider Interface

## Bringing the world’s most popular open source platform-as-a-service to Google's Compute Engine (GCE)

This repo contains software designed to manage the deployment of Cloud Foundry on top of GCE, using Cloud Foundry BOSH. Say what?

## GCE

GCE is a collection of interrelated open source projects that, together, form a pluggable framework for building massively-scalable infrastructure as a service clouds. GCE represents the world's largest and fastest-growing open cloud community, a global collaboration of over 150 leading companies.

## Cloud Foundry

Cloud Foundry is the leading open source platform-as-a-service (PaaS) offering with a fast growing ecosystem and strong enterprise demand.

## BOSH

Cloud Foundry BOSH is an open source tool chain for release engineering, deployment and lifecycle management of large scale distributed services. In this manual we describe the architecture, topology, configuration, and use of BOSH, as well as the structure and conventions used in packaging and deployment.

## GCE and Cloud Foundry, Together using BOSH

Cloud Foundry BOSH defines a Cloud Provider Interface API that enables platform-as-a-service deployment across multiple cloud providers - initially VMWare's vSphere and AWS. Piston Cloud has partnered with VMWare to provide a CPI for GCE, opening up Cloud Foundry deployment to an entire ecosystem of public and private GCE deployments.

Using a popular cloud-services client written in Ruby, the GCE CPI manages the deployment of a set of virtual machines and enables applications to be deployed dynamically using Cloud Foundry. A common image, called a stem-cell, allows Cloud Foundry BOSH to rapidly build new virtual machines enabling rapid scale-out.


## Velankani Information Systems, Inc.

Velankani provides Managed Big Data Services. Velankani's MDP deploys Big Data PaaS using Cloud Foundry.

## Legal Stuff

This project, as well as GCE and Cloud Foundry, are Apache2-licensed Open Source.

VMware and Cloud Foundry are registered trademarks or trademarks of VMware, Inc. in the United States and/or other jurisdictions.

GCE is a registered trademark of Google, Inc.
