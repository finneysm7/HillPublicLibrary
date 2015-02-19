class Book < ActiveRecord::Base
  before_validation :set_status
  validates :author, :title, presence: true
  
  def set_status
    if !:status
      self.status = false
    end
  end
end