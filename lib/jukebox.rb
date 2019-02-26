require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(array)
  array.each_with_index do |song, i|
      puts "#{i+1}.#{song}"
end
end

def play(array)
  list(array)
  puts "Please enter a song name or number:"
  next_track = gets.chomp.to_i
  if next_track > 1 && next_track < 10
    puts "Playing #{next_track}"
  else
    puts "Invalid input, please try again"
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  methods = ["help", "list", "play", "exit"]
    help
    puts "Please enter a command:"
    input = gets.strip
while !methods.include?(input)
    puts "Please enter a command:"
case input
  when "help"
    help
  when "list"
    list(array)
  when "play"
    play(array)
  when "exit"
    puts "Goodbye"
    exit_jukebox
    exit
  end

end



end
