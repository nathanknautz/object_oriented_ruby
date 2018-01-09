# employee_1 = {first_name: "Bruce", last_name: "Wayne", salary: 70000, active: true}
# employee_2 = {first_name: "Diana", last_name: "Prince", salary: 80000, active: true}

# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."
# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active ]
  end 

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

end 

employee_1 = Employee.new(first_name: "Bruce", 
                          last_name: "Wayne", 
                          salary: 70000,
                          active: true
                          )
employee_2 = Employee.new(first_name: "Diana", 
                          last_name: "Prince", 
                          salary: 80000,
                          active: true
                          )



