require'colorize'
require 'open-uri'
require 'os'

def clear()
    if os.windows?
        system("cls")
    else
        system("clear")
    end
end

def name = <<-'EOF'
           _                   _       _     _           
    /\   /(_) _____      __   /_\   __| | __| | ___ _ __ 
    \ \ / / |/ _ \ \ /\ / /  //_\\ / _` |/ _` |/ _ \ '__|
     \ V /| |  __/\ V  V /  /  _  \ (_| | (_| |  __/ |   
      \_/ |_|\___| \_/\_/   \_/ \_/\__,_|\__,_|\___|_|   
                                                         
   EOF
puts "#{name}".blue

print("\nVeuillez choisir le nombre de vues que vous voulez: ")
ok = gets.chomp.to_i
clear()

puts "#{name}".blue
print "\nMetter votre compte Github :\n"
raph = gets.chomp
           
(1..ok).each do |i| 
      puts "#{i} views added\r"
      req = open("https://camo.githubusercontent.com/#{raph}").read
end
puts "#{name}".blue
puts"\nVous avez eu +#{ok} views !"
