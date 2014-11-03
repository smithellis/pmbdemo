class Salesrep < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  belongs_to :salesgroup
  belongs_to :location
  
  validates_presence_of :first_name, :last_name

  def full_name
    first_name + ' ' + last_name
  end

  def location
    Location.find location_id
  end
end
