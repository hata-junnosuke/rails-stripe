class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  scope :latest, -> { order(created_at: :desc) }
  scope :price_high_to_low, -> { order(price: :desc) }
  scope :price_low_to_high, -> { order(:price) }
end
