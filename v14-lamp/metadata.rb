name             'v14-lamp'
maintainer       'The Authors'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures v14-lamp'
long_description 'Installs/Configures v14-lamp'
version          '0.1.0'

depends 'marker'
depends 'application'
depends 'rs-application_php'
depends 'rs-mysql'

recipe 'v14-lamp::default', 'Configures attributes for running a standalone LAMP server'
recipe 'v14-lamp::backup', 'Backup lamp server'
recipe 'v14-lamp::restore', 'Restore lamp server'

attribute 'rs-application_php/application_name',
:display_name => 'Application Name',
:description => 'The name of the application',
:required => 'required',
:recipes => ['rs-applicaiton_php::default']
