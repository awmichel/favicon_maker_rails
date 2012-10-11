require 'favicon_maker'

def say(message)
  puts message unless Rake.application.options.silent
end

namespace :favicon do
  task :generate do
    options = {
      :versions => [:apple_114, :apple_57, :apple, :fav_png, :fav_ico],
      :custom_versions => {:apple_extreme_retina => {:filename => "apple-touch-icon-228x228-precomposed.png", :dimensions => "228x228", :format => "png"}},
      :root_dir => Rails.root,
      :input_dir => File.join('app', 'assets', 'images'),
      :base_image => 'favicon.png',
      :output_dir => 'public',
      :copy => true
    }

    if File::exists?(File.join('app', 'assets', 'images', 'favicon.png'))
      FaviconMaker::Generator.create_versions(options) do |filepath|
        say "Created favicon: #{filepath}"
      end
    else
      say "No source favicon found, please create favicon.png in your app/assets/images directory."
    end
  end
end

desc "Generate favicons from single favicon.png source"
task :favicon => "favicon:generate"
