
notice('PLUGIN: fuel-plugin-compute-local-storage - images_type.pp')

class fuel-plugin-compute-local-storage_images_type {

  include ::nova::params

  service { $::nova::params::compute_service_name: }

  nova_config {
    'libvirt/images_type':      value => 'default';
  }

  Nova_config<||> ~>
  Service[$::nova::params::compute_service_name]


}

class {'fuel-plugin-compute-local-storage_images_type': }