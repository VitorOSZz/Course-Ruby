
def separation_line(n)
  puts '-'*n
end
=begin
  First. What is difference on file.open and require_relative?
  File.open:
  This command OPEN the file and you can work with read, write, delete etc

  Require relative:
  This command you can get a module or class from file and
  NOT can read write and delete.
=end

system('clear')

resumeDbs = File.open('Resume_DbS.txt', 'r+')
# Code to read or write to the file goes here
=begin
separation_line(30)
puts "#{resumeDbs}"
puts "#{resumeDbs.read}"
#resumeDbs.close
#puts "#{resumeDbs.read}" <-- Error because resumeDbs Is Closed.
separation_line(30)
=end
x =0
File.foreach("Resume_DbS.txt") { |line| puts "#{x += 1}- #{line}" }

resumeDbs.close # We can't only open many files and wontt close.
