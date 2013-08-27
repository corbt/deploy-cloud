Dir["./packages/*.rb"].each { |file| require file }

policy :seafile, :roles => :cloud do 
  requires :seafile
  requires :seafile_proxy
end

deployment do
  delivery :capistrano do 
    role :cloud, "corbt.com"
    set :user, "deploy"
    logger.level = Capistrano::Logger::TRACE
    default_run_options[:shell] = '/bin/bash'
    default_run_options[:pty] = true
  end
end