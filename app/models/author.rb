class Author < ApplicationRecord
  has_many :post
  def display_author
    "#{first_name} #{last_name}"
  end
end
