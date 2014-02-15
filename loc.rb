# Lines of code calculator.
# Outputs the number of total file length, logical lines of code, comment lines, blank lines, etc..
puts 'input file name'
a = gets.chomp
b = File.open(a, 'r')
f_lines = b.readlines
b.close
loc = f_lines.length
com = f_lines.select { |x| x[0] == "#" }.length
bloc = f_lines.select { |x| x.strip == "" }.length
lloc = loc - bloc - com
puts"""___________________________________________________________
| file length | blank lines | comment lines | logical LOC |
|_____________|_____________|_______________|_____________|
| #{loc.to_s.center(11)} | #{bloc.to_s.center(11)} | #{com.to_s.center(13)} | #{lloc.to_s.center(11)} |
|_____________|_____________|_______________|_____________|"""

# When I wrote it, I discovered this:
# http://cloc.sourceforge.net/
