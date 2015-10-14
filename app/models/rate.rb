class Rate < ActiveRecord::Base
  has_many :ratings

  belongs_to :rateable, polymorphic: true

  def self.update_rates(rates_string)
    new_rates = []

    unless rates_string.nil? || rates_string.empty?
      rates_string.split(",").each do |rate|
      rate_name = rate.strip
      new_rate = Rate.find_or_create_by(name: rate_name)
      new_rates << new_rate
      end
    end
    new_rates
  end

  has_many :topics, through: :ratings, source: :rateable, source_type: :Topic

  has_many :posts, through: :ratings, source: :rateable, source_type: :Post

  
end