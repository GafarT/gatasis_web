class FrontpagesController < ApplicationController
  before_action :admin_check, only: [:index, :new, :create, :edit, :update, :destroy]
  before_action :set_frontpage, only: [:show, :edit, :update, :destroy]

  # GET /frontpages
  # GET /frontpages.json
  def index
    @frontpages = Frontpage.all
  end

  # GET /frontpages/1
  # GET /frontpages/1.json
  def show
  end

  # GET /frontpages/new
  def new
    @frontpage = Frontpage.new
  end

  # GET /frontpages/1/edit
  def edit
  end

  # POST /frontpages
  # POST /frontpages.json
  def create
    @frontpage = Frontpage.new(frontpage_params)

    respond_to do |format|
      if @frontpage.save
        format.html { redirect_to @frontpage, notice: 'Frontpage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @frontpage }
      else
        format.html { render action: 'new' }
        format.json { render json: @frontpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frontpages/1
  # PATCH/PUT /frontpages/1.json
  def update
    respond_to do |format|
      if @frontpage.update(frontpage_params)
        format.html { redirect_to @frontpage, notice: 'Frontpage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @frontpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frontpages/1
  # DELETE /frontpages/1.json
  def destroy
    @frontpage.destroy
    respond_to do |format|
      format.html { redirect_to frontpages_url }
      format.json { head :no_content }
    end
  end

  private

    def admin_check
      redirect_to root_url unless signed_in? && current_user.admin?
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_frontpage
      @frontpage = Frontpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frontpage_params
      params.require(:frontpage).permit(:carousel_caption1, :carousel_lead1, :carousel_caption2, :carousel_lead2, :carousel_caption3, :carousel_lead3, :marketing_heading1, :marketing_desc1, :marketing_heading2, :marketing_desc2, :marketing_heading3, :marketing_desc3, :carousel_pic1, :carousel_pic2, :carousel_pic3, :marketing_pic1, :marketing_pic2, :marketing_pic3)
    end
end
