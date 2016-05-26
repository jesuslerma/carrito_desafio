class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :store
  mount_uploader :photo, ProductImageUploader
end
