class Store < ActiveRecord::Base
  include ActiveModel::Validations
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  
  def has_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add("store must have at least one apparel type!")
    end
  end

end
