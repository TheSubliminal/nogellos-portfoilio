class Image < ApplicationRecord
  belongs_to :category
  validates :image, presence: true
  validate :year_validation
  
  private 
    def year_validation
      if self.image_year && ((self.image_year < 2000) || (self.image_year > Date.today.year))
        self.errors.add_to_base("Not valid year of creation")
      end
    end
end
