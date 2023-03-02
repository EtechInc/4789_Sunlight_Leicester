#This class is where all customer deciders go
class CustomAction
  include DecidersHelper

  attr_accessor :waiting_rail

  def determine_next_rail(current_rail)
    self.waiting_rail = current_rail
    deciders = {
      '123401' => method(:my_method_name),
    }
    decider = deciders[current_rail.destination_decider_id.to_s]
    return decider.call
  end

  # Example method used as a custom decider.  Expectation is to return nil, or Rail
  def my_method_name
    return nil
  end

end
