fuel-plugin-compute-local-storage
============

Adds a role for Compute nodes to use its local storage instead of the Ceph storage. This is useful if you want to use local SSDs for specific compute nodes / flavors for better performance.


Usage
-----------

Install Plugin and activate in settings. Redeploy all computer nodes. Nodes, which should be use their local SSD, need to have 
sufficient Virtual Stroage and both the "Compute" and "Compute: Local Storage" roles attached. This plugin automatically installs the `AggregateInstanceExtraSpecsFilter` filter. By this you can configure your flavors as described [here](http://docs.openstack.org/mitaka/config-reference/compute/scheduler.html).
