
notice('PLUGIN: fuel-plugin-compute-local-storage - scheduler_default_filters.pp')

class fuel-plugin-compute-local-storage_scheduler_default_filters {

    ini_subsetting {'add_aggregateinstanceextraspecsfilter':
      ensure             => present,
      section            => 'DEFAULT',
      key_val_separator  => '=',
      path               => '/etc/nova/nova.conf',
      setting            => 'scheduler_default_filters',
      subsetting         => 'AggregateInstanceExtraSpecsFilter',
      subsetting_separator => ',',
      notify             => Service['nova-scheduler'],
    }

  Ini_subsetting <||> ~>
  service { 'nova-scheduler':
    ensure    => $ensure,
    enable    => $enabled,
    hasstatus => true,
  }


}

class {'fuel-plugin-compute-local-storage_scheduler_default_filters': }