
# 環境名
set :stage, :production

# RAILS_ENVに設定する値
set :rails_env, :production

role :app, %w{ app@app1.infaoki.work }
role :web, %w{ app@app1.infaoki.work }
role :db,  %w{ app@app1.infaoki.work }