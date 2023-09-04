class Admin::AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin::Admin.new(admin_params)

    if @admin.save
      redirect_to [:admin, @admin], notice: 'Admin was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @admin.update(admin_params)
      redirect_to [:admin, @admin], notice: 'Admin was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @admin.destroy
    redirect_to admin_admins_url, notice: 'Admin was successfully destroyed.'
  end

  private

  def set_admin
    @admin = Admin::Admin.find(params[:id])
  end

  def admin_params
    params.require(:admin_admin).permit(:name, :email, :password, :password_confirmation)
  end
end
