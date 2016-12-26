class Employe
	def initialize(id, name, salary)
		@emp_id = id
		@emp_name = name
		@emp_salary = salary				
	end
	def display_details()
		puts"Employee Details"
		puts "Id: #@emp_id" 
		puts "Name: #@emp_name" 
		puts "Salary: #@emp_salary"
		if @emp_salary <= 10000
			sal = @emp_salary / 12
			hra = @emp_salary / 10
			puts "PF/month: #{sal}"
			puts "HRA/month: #{hra}"
			print "NOTE: The employe salary is below 10,000 PF is 12% and HRA is 10% taken from the employe basic salary\n"
		elsif @emp_salary > 10000
			pf = @emp_salary / 20	
			hra = @emp_salary / 10
			puts "PF/month: #{pf}"
			puts "HRA/month: #{hra}"
			print "NOTE: The employe salary is above 10,000 PF is 20% and HRA is 10% taken from the employe basic salary\n"
		end	
	end
end
puts "welcome to Ruby"
print "enter employe id: "
d = STDIN.gets.to_i
catch (d > 0) do
	while d <= 0
		puts "invalid input and it shoul be a numder"
		print "enter employe id: "
		throw d <= 0 unless d = STDIN.gets.to_i 
	end
end	
	
print "enter Name: "
n = gets.chomp

catch (n == nil or n.size > 0)do
	while n.size <= 0
		puts "invalid input and it shoul be a characters"
		print "enter name: "
		throw n.size <= 0  unless n = gets.chomp
	end
end


print "enter salary: "
s = STDIN.gets.to_i

catch (s > 0) do
	while s <= 0
		puts "invalid input and salary shoul be in numder"
		print "enter salary: "
		throw s <= 0 unless s = STDIN.gets.to_i 
	end
end

e = Employe.new(d, n, s)
e.display_details	
