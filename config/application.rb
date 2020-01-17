require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module FacebookCloneExam
  class Application < Rails::Application
    config.load_defaults 5.2
    I18n.config.available_locales = :ja
    I18n.default_locale = :ja
  end
end
