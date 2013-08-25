class ProductsController < ApplicationController
  before_action :admin_check, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_product1, only: [:list]
  before_action :set_product2, only: [:details]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # list item
  def list
  end

  # list item
  def details
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  private

    def admin_check
      redirect_to root_url unless signed_in? && current_user.admin?
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_product1
      @sub_category = SubCategory.find_by_name(params[:name].tr('-',' '))
      @products = Product.where(sub_category_id: @sub_category.id)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_product2
      @product = Product.find_by_name(params[:name].tr('_',' '))
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :series, :description, :specs, :brand, :sub_category_id, :remarks1, :remarks2, :remarks3, :remarks4, :product_picture1, :product_picture2, :product_picture3, :product_pdf1)
    end
end
