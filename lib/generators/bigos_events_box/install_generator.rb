module BigosEventsBox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a BigosEventsBox initializer."
      def copy_initializer
        template "bigos_events_box.rb", "config/initializers/bigos_contact_box.rb"
      end

      def include_routes
        route 'mount BigosEventsBox::Engine => "/bigos_events_box"'
      end

      def create_settings
        Setting["#{BigosEventsBox.name}.access_key_id"] = "Access key id"
        Setting["#{BigosEventsBox.name}.secret_access_key"] = "Secret access key"
        Setting["#{BigosEventsBox.name}.uploads_bucket_development_name"] = "Uploads bucket development name"
        Setting["#{BigosEventsBox.name}.uploads_bucket_production_name"] = "Uploads bucket production name"
        BigosApp::InstalledModule.create(name: BigosEventsBox.name, page_element: BigosApp::BigosEventsBoxElement.name)
      end

    end
  end
end