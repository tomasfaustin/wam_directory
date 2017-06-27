class Job < ApplicationRecord

  def self.search(search)
    where("name LIKE ? OR position LIKE ?", "%#{search}%", "%#{search}%")
  end

end
