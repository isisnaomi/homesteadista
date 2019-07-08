class Activist < ApplicationRecord
  #scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
  scope :search_by_full_name, ->(query) { where("CONCAT_WS(' ', name, last_name) LIKE ?", "%#{query}%") }
end
