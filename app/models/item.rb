class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :shop
  has_many :order_items
end
