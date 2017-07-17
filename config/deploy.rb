# config/deploy.rb

# capistranoのバージョン固定
lock '3.6.1'

# デプロイするアプリケーション名
set :application, infra-test-app

# cloneするgitのリポジトリ
set :repo_url, git@github.com:gestalt0822/infra-test-app.git

# deployするブランチ。デフォルトはmaster
# この記載をすることで bundle exec cap production deploy BRANCH=ブランチ名で特定のブランチをデプロイできるようになる
set :branch, ENV['BRANCH'] || 'master'

# deploy先のディレクトリ。
set :deploy_to, /var/www/infra-test-app

# シンボリックリンクをはるファイル。(※後述)
set :linked_files, %w(config/secrets.yml config/database.yml .env)

# シンボリックリンクをはるフォルダ。(※後述)
set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets)

# 保持するバージョンの個数(※後述)
set :keep_releases, 5

# rubyのバージョン
set :rbenv_ruby, '2.4.1'

# システムワイドにインストールされているRubyを使用する
set :rbenv_type, :system

# デプロイ実行時に出力するログのレベル。
set :log_level, :debug

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
