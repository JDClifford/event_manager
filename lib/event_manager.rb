require "csv"

def clearn_zipcode(zipcode) #Corrects for issues in formatting with zipcode inputs
	if zipcode == nil
		zipcode = "00000"
	elsif zipcode.length > 5
		zipcode = zopcode[0..4]
	else
		zipcode.rjust(5,"0")
	end
end

puts "EventManager Initialized!"
contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
	name = row[:first_name]
	zipcode = row[:zipcode]
	zipcode = clearn_zipcode(zipcode)
	puts "#{name}: #{zipcode}"
end