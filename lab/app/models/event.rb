class Event < ApplicationRecord

  belongs_to :venue
  has_many :tickets

  def self.most_ticket_sold
    orders = Order.joins(:ticket).group(:event_id).count()
    max_value = 0
    max_key = 0
    orders.all do |key, value|
      if value > max_value
        max_value = value
        max_key = key
      end
      max_key
    end
  end

  def self.highest_revenue
    orders = Order.joins(:ticket).group(:event => id).sum(price)

    max_value = 0
    max_key = 0
    orders.all do |key, value|
      if value > max_value
        max_value = value
        max_key = key
      end
    end
    max_key
  end

end