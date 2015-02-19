class Book < ActiveRecord::Base
  validates :author, :title, presence: true
  
  validate :published_format

  private

  def published_format
    unless (1000..Date.today.year).include?(publication_date.to_i)
      errors.add(:publication_date, "should be a four-digit year")
    end
  end
end