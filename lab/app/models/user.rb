class User < ApplicationRecord
  has_many :tickets , :through => :order
  has_many :orders

  def most_expensive_bouth(id)
    orders = Order.where(:user => id).joins(:tickets)
    tickets = Ticket.where(:order => id).order("price desc").limit(1)
    ticket[0].price
  end

  def most_expensive_ticket_bougth_betweem(id, start_date, end_date)
    orders = Order.where(:user => id).where('time < ?', end_date).where('time > ?', start_date)
    tickets = Ticket.where(:order => id).order("price desc").limit(1)
    tickets[0].price
  end

  def last_event(id)
    orders = Order.where(:user =>id).joins(:tickets)
    tickets = Ticket.where(:order => id).joins(:events)
    events = Event.where(:ticket => id).order("start_date desc").limit(1)
    events[0].name
  end

end
