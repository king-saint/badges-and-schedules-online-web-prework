# Write your code here.

def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  list = []
  name_array.each do |name|
    list << badge_maker(name)
  end
  list
end

def assign_rooms(attendees)
   rooms = 1
   room_assignments = []
    attendees.each do |name|
       room_assignments << "Hello, #{name}! You'll be assigned to room #{rooms}!"
       rooms += 1
    end
  room_assignments
end

def printer(attendees)
      badge_and_room_assignments = []
      badge_and_room_assignments << batch_badge_creator(attendees)
        badge_and_room_assignments.each do |name|
           puts name.join(' ')  
    end
      badge_and_room_assignments << assign_rooms(attendees)
        badge_and_room_assignments.each do |room|
          puts room.join(' ')
    end
  
end    
