module Consul
  class Application < Rails::Application
    config.i18n.available_locales = [:ca, :es, :en]
    config.i18n.default_locale = :ca
    config.i18n.fallbacks = { 'ca' => 'es' }

    require Rails.root.join('lib/document_parser')
    require Rails.root.join('lib/custom/census_api')
    require Rails.root.join('lib/custom/sms_api')
  end
end
