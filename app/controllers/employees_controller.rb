class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

<<<<<<< HEAD
#   def new
#     @employee = Employee.new
#   end
  
#   def create
#     @employee = self.new(employee_params)
#     @employee.save
#     redirect_to employee_path(@employee.id)
#   end
  
#   def edit
#     @employee = Employee.find(params[:id])
#   end
  
  
#   def update
#     @employee = Employee.find(params[:id])
#     @employee.update(employee_params)
#     redirect_to employee_path(@employee.id)
#   end
  
#   def destroy
#     @employee = Employee.find(params[:id])
#     @employee.destroy
#     redirect_to employees_path
#   end

#   private
  
#   def employee_params
#     params.require(:employee).permit(:!UPDATE VARIABLES!)
#   end
# end
=======
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to employee_path(@employee.id)
  end

  def edit
    @employee = Employee.find(params[:id])
  end


  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    redirect_to employee_path(@employee.id)
  end

  # def destroy
  #   @employee = Employee.find(params[:id])
  #   @employee.destroy
  #   redirect_to employees_path
  # end

  private

  def employee_params
    params.require(:employee).permit(:name, :title)
  end
end
>>>>>>> second_branch
