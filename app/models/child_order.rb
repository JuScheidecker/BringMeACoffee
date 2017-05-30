class ChildOrder < ApplicationRecord
  belongs_to :order
  belongs_to :main_order
end
