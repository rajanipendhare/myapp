class EmployeesController < ApplicationController
  before_action :find_employee, only: %i[edit update destroy]
  before_action :build_employee, only: %i[new create]

  def new
  end

  def edit
  end

  def index
  	@employees = Employee.all
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path
      flash[:success] = 'Employee details added Successfully'
    else
      render :new
      flash[:notice] = 'Employee details not added'
    end
  end

  def update
    if @employee.update_attributes(employee_params)
      redirect_to employees_path
      flash[:success] = 'Employee details Update Successfully'
    else
      render :edit
      flash[:notice] = 'Employee details Not Update'
    end
  end

  def destroy
  	@employee.destroy
    redirect_to employees_path
  end

  private
  def find_employee
  	@employee = Employee.find(params[:id])
  end

  def build_employee
    @employee = Employee.new
  end

  def employee_params
    params.require(:employee).permit(:f_name, :l_name, :gender, :birth_date, :contact, :state_id, :district_id, :joining_date, :aadhar_number, :is_active)
  end
end