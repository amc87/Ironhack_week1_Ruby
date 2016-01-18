class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
      @all_emp = []
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      total_pay = @hours_worked * @hourly_rate
      pay_tax = (total_pay * 1.18).round(2)
      puts "Payroll: #{pay_tax}€"
       Emailing.new(@name)
    end
end

class SalaryEmployee < Employee
    def initialize(name, email, yearly_salary)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
        
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      total_pay = @yearly_salary / 12
      pay_tax = (total_pay * 1.18).round(2)
      puts "Payroll: #{pay_tax}€"
      Emailing.new(@name)
    end
end


class MultiPaymentEmployee < Employee
    def initialize(name, email, yearly_salary, overtime_rate, hours_worked)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
        @overtime_rate = overtime_rate
        @hours_worked = hours_worked
        
    end

    def calculate_salary
      #returns the hours worked * hourly_rate

      if @hours_worked > 40
      	total_pay = ((@hours_worked - 40) * 275)+5000

      else
      	total_pay = 5000
      end
      pay_tax = (total_pay * 1.18).round(2)
      puts "Payroll: #{pay_tax}€"
       Emailing.new(@name)
    end
end

class Emailing
	def initialize(employee)
		puts "Email to #{employee}"
	end
end


class Payroll
    def initialize(employees)
        @employees = employees
    end

	  def pay_employees
	      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
			

			josh = @josh

		josh = HourlyEmployee.new("Josh", "nachoemail@example.com", 35, 50)
		nizar = SalaryEmployee.new("Nizar", "starcraftrulez@gmail.com", 1000000)
		ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
		emily = HourlyEmployee.new("Emily", "emily@example.com", 15, 37)
		alvaro = HourlyEmployee.new("Alvaro", "alvaro@example.com", 15, 37)


		josh.calculate_salary
		nizar.calculate_salary
		ted.calculate_salary
		emily.calculate_salary
		alvaro.calculate_salary

	  end

	  def notify_employee(employee)
          #email them
      	puts "Payroll for: #{employee.name}"
          
  	  end

end

employees = ["josh", "nizar", "ted", "emily", "alvaro"]
payroll = Payroll.new(employees)
payroll.pay_employees

# josh = HourlyEmployee.new("Josh", "nachoemail@example.com", 35, 50)

# josh.calculate_salary

# nizar = SalaryEmployee.new("Nizar", "starcraftrulez@gmail.com", 1000000)

# nizar.calculate_salary

# ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

# new_multi.calculate_salary