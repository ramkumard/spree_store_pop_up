Installation
===============

    Add the Spree Store Pop Up gem to your Gemfile:

    gem "spree_store_pop_up", :git => 'git@github.com:vijaypapasani/spree_store_pop_up.git', :branch => 'master'

    Install the gem:

    bundle install

    Install the assets:

    rails g spree_store_pop_up:install


Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2014 [name of extension creator], released under the New BSD License
