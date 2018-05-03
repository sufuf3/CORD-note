# XOS Architecture Guide

> 此篇為參考 http://guide.xosproject.org/archguide 所做的整理筆記。

- Defines a collection of abstractions in support of services and service composition
- datacenter cloud management systems + SDN-based network controllers
- create, name, operationalize, manage and compose services as first-class operations

## Software Structure
![](http://guide.xosproject.org/figures/archguide-fig03_block_diagram.jpg)

- Three layers
    - **Data Model**
        - A core
        - records the logically centralized state of the system.
        - 集結所有的 services，enables them to interoperate reliably and efficiently.
        - Two state
            - authoritative state: can be determined unambiguously at any given time, even if the operational state of the rest of the system is lagging behind, or is even erroneous.
            - operational state: the ongoing, fluctuating & sometimes erroneous state of the remainder of the system
        - 北向 RESTfull API: xoslib(a client/server library that uses Backbone.js and Marionette.js over the HTTP-based REST API)
        - is implemented in Django
    - **Views**
        - defines the lens through which different users interact with XOS
        - Javascript programs running on the user’s browser
    - **Controller Framework**
        - distributed state management
        - Synchronizer
        - executing service controller plug-ins
        - leverages Ansible to handle low-level configuration with the back-end controllers
        - keeping the state represented by a distributed set of service controllers in sync with the authoritative state maintained by the Data Model.

## Data Model
Five categories:  
- **Access Control**
    - User
    - Role
    - RootPrivilege(Admin/Default)
    - SitePrivilege(Admin/PI/Tech)
    - SlicePrivilege(Admin/Access)
    - Deployment Privileges(Admin)
- **Infrastructure**
    - Node: A physical server that can be virtualized.
    - Site: A logical grouping of Nodes that are co-located at the same geographic location, which also typically corresponds to the Nodes’ location in the physical network.
    - Deployment: A logical grouping of Nodes running a compatible set of virtualization technologies and being managed according to a coherent set of resource allocation policies.
- **Policies and Configurations**
    - Image
    - Flavor
    - NetworkTemplate
    - Controller

- **Virtualization**
    - Slice
    - Instance
    - Network
- **Services and Tenancy**
    - Service: A registered service that other Services can access via extensions to the XOS data model and API.
    - Tenant: Represents a binding of a tenant service to a provider service, and so corresponds to the edges in a service dependency graph.


Ref:
- http://guide.xosproject.org/archguide
- http://xos.wpengine.com/wp-content/uploads/2015/04/Services-in-XOS.pdf
- http://xosproject.org/wp-content/uploads/2015/04/paper-xos-bigsys15.pdf
