class AnnounceC < ActiveRecord::Base
  attr_accessible :action, :area, :city, :manager_id, :name, :owner, :price, :region, :rent, :settlement, :square, :type
end
