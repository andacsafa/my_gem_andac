module MyGemAndac
  class Railtie < Rails::Railtie
    rake_tasks do
      load File.join(File.dirname(__FILE__),'tasks','trying.rake')
    end
  end
end
