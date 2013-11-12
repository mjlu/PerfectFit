class Product < ActiveRecord::Base
  attr_accessible :merchant, :name, :style
  has_many :measurements

end
