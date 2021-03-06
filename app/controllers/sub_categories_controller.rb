class SubCategoriesController < ApplicationController
  before_action :admin_check, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_sub_category, only: [:edit, :update, :destroy]
  before_action :set_sub_category1, only: [:show]
  # GET /sub_categories
  # GET /sub_categories.json
  def index
    @sub_categories = SubCategory.all
  end

  # GET /sub_categories/1
  # GET /sub_categories/1.json
  def show
  end

  # GET /sub_categories/new
  def new
    @sub_category = SubCategory.new
  end

  # GET /sub_categories/1/edit
  def edit
  end

  # POST /sub_categories
  # POST /sub_categories.json
  def create
    @sub_category = SubCategory.new(sub_category_params)

    respond_to do |format|
      if @sub_category.save
        format.html { redirect_to @sub_category, notice: 'Sub category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sub_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_categories/1
  # PATCH/PUT /sub_categories/1.json
  def update
    respond_to do |format|
      if @sub_category.update(sub_category_params)
        format.html { redirect_to @sub_category, notice: 'Sub category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_categories/1
  # DELETE /sub_categories/1.json
  def destroy
    @sub_category.destroy
    respond_to do |format|
      format.html { redirect_to sub_categories_url }
      format.json { head :no_content }
    end
  end

  private

    def admin_check
      redirect_to root_url unless signed_in? && current_user.admin?
    end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_category
      @sub_category = SubCategory.find(params[:id])
    end

    def set_sub_category1
      @category = Category.find_by_name(params[:name].tr('-',' '))
      @sub_category = @category.sub_categories
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_category_params
      params.require(:sub_category).permit(:name, :description, :category_id, :sub_category_picture1)
    end
end
