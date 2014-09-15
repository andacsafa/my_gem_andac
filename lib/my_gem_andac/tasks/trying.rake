desc "Turn off"
task :turn_off_alarm do
  puts "Turned off alarm. Would have liked 5 more minutes, though."
end

desc "Groom"
task :groom_myself do
  puts "Brushed teeth."
  puts "Showered."
  puts "Shaved."
end

desc "Coffe"
task :make_coffee do
  cups = ENV["COFFEE_CUPS"] || 2
  puts "Made #{cups} cups of coffee. Shakes are gone."
end

desc "Dog"
task :walk_dog do
  puts "Dog walked."
end

desc "Ready"
task :ready_for_the_day => [:turn_off_alarm, :groom_myself, :make_coffee, :walk_dog] do
  puts "Ready for the day!"
end
