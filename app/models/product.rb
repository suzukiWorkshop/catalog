class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :image, :image_cache, :recommend
  mount_uploader :image, ProductImageUploader

  validates_presence_of :name, :description
  validates_numericality_of :price, :only_integer => true, :greater_than => 0
  validates_uniqueness_of :name
  validate :price_must_be_a_multiple_of_hundreds

  private
  def price_must_be_a_multiple_of_hundreds
    unless price % 100 == 0
      errors.add :price, "must be a multiple of hundreds"
    end
  end

  scope(:recommend,where(:recommend => true))
end
