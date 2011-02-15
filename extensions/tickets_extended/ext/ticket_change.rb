TicketChange.class_eval do 

  # Make sure we are able to accept changes to estimated_hours and forward 
  # those to the parent ticket
  delegate :estimated_hours, :estimated_hours=, :to => :ticket
  attr_accessible :estimated_hours
  #
  private
  	# Before saving, store the change (previous value -> new value)
  	def store_changes_for_estimated_hours!(result, old_value, new_value)
  		change = hash_for_ticket_change(old_value, new_value)
  		result[N_('Estimated hours')] = change if change
  	end  
  #
end



