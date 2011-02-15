class AddHoursColumnToTickets < ActiveRecord::Migration
	def self.up
    		add_column 'tickets', 'estimated_hours', :integer, :null => false, :default => 0
      	end
      
        def self.down
	 	remove_column 'tickets', 'estimated_hours'
	end
	      
end
