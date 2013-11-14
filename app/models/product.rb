class Product < ActiveRecord::Base
  attr_accessible :merchant, :name, :price
  has_many :measurements, :dependent => :destroy

end
