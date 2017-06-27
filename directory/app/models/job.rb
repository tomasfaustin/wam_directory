class Job < ApplicationRecord

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    where("position ILIKE ?", "%#{search}%")
  end

end
