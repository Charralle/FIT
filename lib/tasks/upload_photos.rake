namespace :upload_photos do
  desc "This rake upload all public photos to Cloudinary"
  task :exec => :environment do
    Dir.glob("#{Rails.root}/app/assets/images/detail_name/*.jpg").each do |file|
      Cloudinary::Uploader.upload(file, :use_filename => true, :unique_filename => false, :folder => "fit/detail_name")
    end
    puts "zbi"
  end
end

namespace :upload_details do
  desc "This rake upload all public photos to Cloudinary details"
  task :exec => :environment do
    Dir.glob("#{Rails.root}/app/assets/images/details/*.png").each do |file|
      Cloudinary::Uploader.upload(file, :use_filename => true, :unique_filename => false, :folder => "fit/details")
    end
    puts "zbi"
  end
end

namespace :upload_fabric_name do
  desc "This rake upload all public photos to Cloudinary fabric"
  task :exec => :environment do
    Dir.glob("#{Rails.root}/app/assets/images/fabric_name/*.jpg").each do |file|
      Cloudinary::Uploader.upload(file, :use_filename => true, :unique_filename => false, :folder => "fit/fabric_name")
    end
    puts "zbi"
  end
end

namespace :upload_garments do
  desc "This rake upload all public photos to Cloudinary garments"
  task :exec => :environment do
    Dir.glob("#{Rails.root}/app/assets/images/garments/*.jpg").each do |file|
      Cloudinary::Uploader.upload(file, :use_filename => true, :unique_filename => false, :folder => "fit/garments")
    end
    puts "zbi"
  end
end

namespace :upload_shapes do
  desc "This rake upload all public photos to Cloudinary shapes"
  task :exec => :environment do
    Dir.glob("#{Rails.root}/app/assets/images/shapes/*.png").each do |file|
      Cloudinary::Uploader.upload(file, :use_filename => true, :unique_filename => false, :folder => "fit/shapes")
    end
    puts "zbi"
  end
end

namespace :upload_none do
  desc "This rake upload all none photos to Cloudinary"
  task :exec => :environment do
    Dir.glob("#{Rails.root}/app/assets/images/none/Garments_none/*.png").each do |file|
      Cloudinary::Uploader.upload(file, :use_filename => true, :unique_filename => false, :folder => "fit/none")
    end
    puts "zbi"
  end
end
