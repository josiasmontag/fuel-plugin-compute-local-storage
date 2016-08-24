
notice('PLUGIN: fuel-plugin-compute-local-storage - images_type.pp')

class fuel-plugin-compute-local-storage_images_type {

  include ::nova::params

  service { $::nova::params::compute_service_name: }

  nova_config {
    'libvirt/images_type': value => 'default';
    'DEFAULT/use_cow_images': value => 'True';
    'DEFAULT/disk_allocation_ratio': value => '1.25';
  }

  Nova_config<||> ~>
  Service[$::nova::params::compute_service_name]


}

class {'fuel-plugin-compute-local-storage_images_type': }