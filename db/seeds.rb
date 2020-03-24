require 'rest-client'
require_relative '../app/model/user'

User.destroy_all

user1 = User.create(name: "Will", age: 50, gender: "Male", budget: 170)
user2 = User.create(name: "Willie", age: 15, gender: "Male", budget: 50)
user3 = User.create(name: "William", age: 21, gender: "Male", budget: 250)
user4 = User.create(name: "Urgen", age: 30, gender: "Male", budget: 150)
user5 = User.create(name: "Jon", age: 99, gender: "Male", budget: 300)



tickets = RestClient.get("https://app.ticketmaster.com/discovery/v2/events?apikey=7elxdku9GGG5k8j0Xm8KWdANDgecHMV0&locale=*")


json = JSON.parse(tickets)

json_embedded = json["_embedded"]
json_events = json_embedded["events"]
# json_event_name = json_events[0]["name"]
json_events.map do |n|
    n["name"]
end

# puts json_event_name 