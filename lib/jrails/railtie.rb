class JRails::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/jrails.rake'
  end
end