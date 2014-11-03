class Location < ActiveRecord::Base
  attr_accessible :city, :line_1, :line_2, :name, :state, :zip_code

  has_one :salesrep, :dependent => :nullify

  validates_presence_of :name, :line_1, :city, :state, :zip_code

  def self.all_available(options = {})
    all.select { |loc| (loc.available? || loc.salesrep == options[:to])}
  end

  def available?
    salesrep.nil?
  end
end
