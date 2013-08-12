class RelationIndustriesController < ApplicationController
  before_action :set_relation_industry, only: [:show, :edit, :update, :destroy]

  # GET /relation_industries
  # GET /relation_industries.json
  def index
    @relation_industries = RelationIndustry.all
  end

  # GET /relation_industries/1
  # GET /relation_industries/1.json
  def show
  end

  # GET /relation_industries/new
  def new
    @relation_industry = RelationIndustry.new
  end

  # GET /relation_industries/1/edit
  def edit
  end

  # POST /relation_industries
  # POST /relation_industries.json
  def create
    @selected_industry = Industry.find(params[:relation_industry][:industry_id])

    respond_to do |format|
      if @selected_industry.relation_industries.create!(product_id: params[:relation_industry][:product_id])
        format.html { redirect_to relation_industries_path, notice: 'Relation industry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @relation_industry }
      else
        format.html { render action: 'new' }
        format.json { render json: @relation_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relation_industries/1
  # PATCH/PUT /relation_industries/1.json
  def update
    respond_to do |format|
      if @relation_industry.update(relation_industry_params)
        format.html { redirect_to @relation_industry, notice: 'Relation industry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @relation_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relation_industries/1
  # DELETE /relation_industries/1.json
  def destroy
    @relation_industry.destroy
    respond_to do |format|
      format.html { redirect_to relation_industries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relation_industry
      @relation_industry = RelationIndustry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relation_industry_params
      params.require(:relation_industry).permit(:industry_id, :product_id)
    end
end
