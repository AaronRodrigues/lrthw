filename = ARGV.first #takes in the first argument when running the rb file

txt = open(filename) #opens the file and assigns it to txt

puts "Here's your file #{filename}:" #prints the filename as a string
print txt.read                        #prints the contents of the file

print "Type the filename again: "     #Reuests the file name only a string
file_again = $stdin.gets.chomp        # takes the filename and stores it in file_again

txt_again = open(file_again)          #opens the file and assigns it to a variable txt_again

print txt_again.read                  #prints the contents of txt_again
