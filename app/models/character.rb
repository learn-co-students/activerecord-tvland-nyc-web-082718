require 'pry'
class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show)
    show = Show.create(show)
    self.show_id = show.id
    self
  end

  def build_network(network)
    network = Network.create(network)
    self.show.network_id = network.id
    self
  end

end
