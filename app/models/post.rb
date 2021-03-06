class Post < ApplicationRecord
  belongs_to :user

  def self.search_by(@search_term)
    where("LOWER(name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
  end

end
