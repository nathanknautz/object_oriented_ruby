class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee_1 = Employee.new(
                          first_name: "Bruce", 
                          last_name: "Wayne", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Diana", 
                          last_name: "Prince", 
                          salary: 80000, 
                          active: true
                          )
# employee_2.print_info
# p employee_1.active
# employee_1.active = false
# p employee_1.active

class Manager < Employee
  
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending Email..."
    #code that sends email
    puts "Email sent."
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise 
    end 
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false 
    end 
  end 

end


manager = Manager.new(
                      first_name: "Clark",
                      last_name: "Kent",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
p employee_1
p employee_2

manager.give_all_raises
manager.fire_all_employees

p employee_1
p employee_2