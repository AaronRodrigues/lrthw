input_file = ARGV.first							#takes the first argument and saves it to input_file

def print_all(f)								#prints the entire file
  puts f.read
end

def rewind(f)									#Goes back to line 1 in the file
  f.seek(0)
end

def print_a_line(line_count, f)					#prints the line number and the corresponding line fom the file
  puts "#{line_count}, #{f.gets.chomp}"
end


current_file = open(input_file)					#opens the input_file and saves it to a variable current_file

puts "First let's print the whole file: \n"

print_all(current_file)							#invokes the print_all function to print the file

puts "Now let's rewind, kind of like a tape."	

rewind(current_file)							#invokes the rewind function to go back to line 1

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)		#invokes print_a_line which takes current line and current_file as arguments

current_line +=  1
print_a_line(current_line, current_file)

current_line +=  1
print_a_line(current_line, current_file)