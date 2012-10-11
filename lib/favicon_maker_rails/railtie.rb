module FaviconMakerRails
  class Railtie < Rails::Railtie
    rake_tasks do
      load "favicon_maker_rails/tasks.rake"
    end
  end
end
