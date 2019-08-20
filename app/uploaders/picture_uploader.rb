class PictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true

  process convert: 'jpg'

  version :index_card do
    cloudinary_transformation width: 400, height: 400, crop: :crop
  end

  version :show_artwork do
    cloudinary_transformation height: 700, width: 700, background: "auto:predominant", crop: :pad
  end
end
