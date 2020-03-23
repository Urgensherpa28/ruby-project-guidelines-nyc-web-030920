require 'rest-client'
# require 'pry'
require 'json'

class TicketMaster

    def self.get_programs
        RestClient.get("https://app.ticketmaster.com/discovery/v2/events?apikey=7elxdku9GGG5k8j0Xm8KWdANDgecHMV0&locale=*")
    end

    def self.parse_json
        JSON.parse(self.get_programs)
    end
    
end


#left here 

# TicketMaster.parse_json[":_embedded"]["events"]
