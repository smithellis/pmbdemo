class Salesgroup < ActiveRecord::Base
  attr_accessible :description
  has_many :salesreps, :dependent => :nullify
  has_many :locations, :through => :salesreps
  validates_presence_of :description
end
