class Rating < ActiveRecord::Base
 
  belongs_to :rateable, polymorphic: true
  belongs_to :rate

  enum severity: [ :PG, :PG13, :R ]

end