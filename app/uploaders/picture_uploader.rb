class PictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true

  process convert: 'jpg'

  version :index_card do
    cloudinary_transformation width: 400, height: 400, crop: :crop
  end
end
