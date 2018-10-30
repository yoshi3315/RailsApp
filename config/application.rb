require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Railsapp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # デフォルトのlocaleを日本語(:ja)にする
    config.i18n.default_locale = :ja

    # 翻訳ファイルのディレクトを追加する場合は、次の行のコメントを外しパスを追加してください。
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local

  end
end

