set :bundle_without, [:development, :test, :staging]
set :rails_env, 'production'
set :branch, :stage
server 'trailer-d02.springcarnival.org', :app, :web, :db, :primary => true

set :bundle_dir, ''
set :bundle_flags, '--system --quiet'
set :rvm_type, :system