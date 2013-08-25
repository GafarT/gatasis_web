class IndustriesController < ApplicationController
  before_action :admin_check, only: [:index, :new, :create, :edit, :update, :destroy]
  before_action :set_industry, only: [ :edit, :update, :destroy]
  before_action :set_industry_show, only: [:show]
  # GET /industries
  def index
    @industries = Industry.all
  end

  # GET /industries/1
  def show
  end

  # GET /industries/new
  def new
    @industry = Industry.new
  end

  # GET /industries/1/edit
  def edit
  end

  # POST /industries
  def create
    @industry = Industry.new(industry_params)

    if @industry.save
      redirect_to @industry, notice: 'Industry was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /industries/1
  def update
    if @industry.update(industry_params)
      redirect_to @industry, notice: 'Industry was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /industries/1
  def destroy
    @industry.destroy
    redirect_to industries_url, notice: 'Industry was successfully destroyed.'
  end

  private

    def admin_check
      redirect_to root_url unless signed_in? && current_user.admin?
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_industry
      @industry = Industry.find_by_id(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_industry_show
      if !params[:name].nil?
        @industry = Industry.find_by_name(params[:name].tr('-',' '))
      else
        @industry = Industry.find_by_id(params[:id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def industry_params
      params.require(:industry).permit(:name, :header, :description)
    end
end
