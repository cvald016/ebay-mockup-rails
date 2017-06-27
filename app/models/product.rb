class Product < ApplicationRecord
  # belongs_to :user
  mount_uploader :picture, PictureUploader # Tells rails to use this uploader for this model.
  validates :title, :picture, presence: true # Make sure the owner's name is present.
end
