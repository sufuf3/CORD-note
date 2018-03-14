# Project 分類

* #### R-CORD
* #### E-CORD
* #### M-CORD
* #### A-CORD
* #### Trellis
* #### VOLTHA
* #### XOS

## R-CORD

* Residential CORD
* Design:
  * [Virtual OLT \(vOLT\)](https://wiki.opencord.org/pages/viewpage.action?pageId=1278086)
  * [Virtual Subscriber Gateway \(vSG\)](https://wiki.opencord.org/pages/viewpage.action?pageId=1278090)
  * [Virtual Router \(vRouter\)](https://wiki.opencord.org/pages/viewpage.action?pageId=1278093)

## E-CORD

* Enterprise CORD
* OpenStack, Docker, ONOS, and XOS
* Open source
  * Openstack provides a base IaaS capability, and is responsible for creating and provisioning virtual machines \(VMs\) and virtual networks \(VNs\). CORD uses OpenStack’s Nova, Neutron, Keystone, Ceilometer and Glance subsystems.
  * ONOS is the network operating system that manages the white­box switches and software switches \(OvS\) in each server. It hosts control programs that implement services and it is responsible for embedding virtual networks in the underlying network.
  * XOS is a framework for assembling and composing services. It unifies data plane services supported by OpenStack and Docker, and the control plane services running on ONOS.
  * Atrium is the software stack that runs on each white­box switch. It includes Open Network Linux, the Indigo OpenFlow Agent \(OF 1.3\), and the OpenFlow Data Plane Abstraction \(OF­DPA\), layered on top of Broadcom merchant silicon. We also present a fully open sourced implementation of MEF Forum \(MEF­ LSO Presto interface\) services running on top of commodity hardware using open protocols \(OpenFlow etc.\).

## M-CORD

* Mobile CORD

## A-CORD

* Analytics for CORD
 
  ![](https://wiki.opencord.org/download/attachments/754784/image2017-1-12%2012%3A42%3A55.png?version=1&modificationDate=1484254108754&api=v2)

## Trellis

* A unique combination of an underlay leaf-spine fabric, overlay virtual networking and unified SDN control over both underlay and overlay.
 
  ![](https://wiki.opencord.org/download/attachments/1278078/cord_trellis.jpg?version=1&modificationDate=1469902673504&api=v2)

## VOLTHA

* optical access system architecture, based on SDN/NFV technologies

## XOS

* brings the
  _Everything-as-a-Service \(XaaS\)_
  organizing principle to the CORD architecture
* addresses several of CORD’s high-level design requirements, including a means to seamlessly integrate control plane \(SDN\) and data plane \(NFV\) based services



