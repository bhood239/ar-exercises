class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  private
  def store_must_carry_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:base, "Store must carry either Men's or Women's apparel")
    end
  end
end
