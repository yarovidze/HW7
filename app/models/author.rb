class Author < ApplicationRecord
  has_many :post
  has_many :comments
  def display_author
    "#{first_name} #{last_name}"
  end
end
