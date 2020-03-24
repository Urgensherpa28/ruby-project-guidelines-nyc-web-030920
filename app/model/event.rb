require_relative "../db/seeds"

class Event < ActiveRecord::Base
    has_many :tickets
    has_many :users, through: :tickets 

    # def find_events
    #     json.map do |event|
    #         event[:_embedded]
    #     end
    # end
end