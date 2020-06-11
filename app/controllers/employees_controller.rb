class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    employee = Employee.create(employee_params)
    if employee.valid?
    redirect_to employee_path(employee)
    else 
      flash[:employee_errors] = employee.errors.full_messages
      redirect_to new_employee_path
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
  end

  def update
    employee = Employee.find(params[:id])
    employee = Employee.update(employee_params)
    if employee.valid?
      byebug
      redirect_to employee_path(employee)
    else
      flash[:employee_errors] = employee.errors.full_messages
      redirect_to edit_employee_path
    end
  end

  private

  def employee_params
    params.require(:employee).permit!
  end

end

# DONE - For our index page for Employees, a user should be able to click on a specific 
# Employee and take them to their corresponding show page.

# DONE - The Employee show page should list all of their attributes 

# DONE - As a user, I should be able to create AND edit an Employee, and only be able to select 
# 1 dog from a list of already existing dogs.

# DONE - No one at Dunder Mifflin can have the same alias and/or job title (Dwight made up that 
# rule!)

# (and as a bonus, try to get their picture to show up!)