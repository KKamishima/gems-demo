# Ruby Gems Demo

## Prerequisites

* Create gems-virtual repository, which contains gems-local and gems-rubygems-remote repositories.
    * Also set gems-local as the Default Deployment Repository.
* Get your API Key
* Set up Ruby runtime
* Set an environment variable
    * export ARTIFACTORY_REPO=http://\<artifactory\>:8081/artifactory/api/gems/gems-virtual/
    * Note: Be sure to add / at the end
* Add it as the only source
    * gem source -a http://\<user\>:\<apikey\>@\<artifactory\>:8081/artifactory/api/gems/gems-virtual/
    * gem source -r https://rubygems.org/
    * (It is saved in ~/.gemrc)

## Build a Gem and push it to the repository

* Save your API Key for the gem command to use
    * curl http://\<artifactory\>:8081/artifactory/api/gems/gems-virtual/api/v1/api_key.yaml -u \<user\>:\<apikey\> > ~/.gem/credentials
    * chmod 600 ~/.gem/credentials
* Set another environment variable
    * export RUBYGEMS_HOST=http://localhost:8081/artifactory/api/gems/gems-virtual
    * Note: Be sure NOT to add / at the end
* Go to build-gem directory
* Run 'gem build'
* Run 'gem push *.gem'

## Run an application using the built gem

* Go to run-app directory
* Save your API key for the bundle command to use
    * bundle config $ARTIFACTORY_REPO \<user\>:\<apikey\>
    * (It is saved in ~/.bundle/config)
* Run 'bundle install'
* Run 'bundle exec rackup'
* Try visit http://localhost:9292
    * curl http://localhost:9292
