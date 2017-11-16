namespace :jrails do

	namespace :assets do
		desc "Install javascript and css files for jrails"
		task :install do
			puts "Copying files..."
			project_dir = Rails.root.to_s + '/public/'
			plugin_assets_dir = File.join(File.dirname(__FILE__), '../..', 'assets/.')
			FileUtils.cp_r plugin_assets_dir, project_dir
			puts "files install succesfully"
		end
  end
  
end
