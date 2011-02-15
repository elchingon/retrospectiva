Ticket.class_eval do 

  # Make sure estimated hours are ALWAYS numeric
  	validates_numericality_of :estimated_hours, 
  		:greater_than_or_equal_to => 0,
  		:only_integer => true  
 	# Make sure estimated hours are user-writeable
	attr_accessible :estimated_hours

end
