# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.11.1'

set :application, 'kyc_backend_api'
set :repo_url, 'git@github.com:dimensi-tech/kyc_backend_api.git'
set :deploy_to, '/home/deploy/apps/kyc_backend_api'
set :branch, 'master'
set :assets_roles, []
append :linked_files, 'config/database.yml', 'config/secrets.yml', '.env'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets',
       'vendor/bundle', 'public/system', 'public/uploads'

namespace :puma do
  desc 'Create Directories for Puma Pids and Socket'
  task :make_dirs do
    on roles(:app) do
      execute "mkdir #{shared_path}/tmp/sockets -p"
      execute "mkdir #{shared_path}/tmp/pids -p"
    end
  end

  before :start, :make_dirs
end

namespace :deploy do
  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      before 'deploy:restart', 'puma:start'
      invoke 'deploy'
    end
  end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'puma:restart'
    end
  end
end
