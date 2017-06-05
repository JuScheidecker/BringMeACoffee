class Shop < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :items

end
