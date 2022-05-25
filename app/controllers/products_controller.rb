class ProductsController < ApplicationController
 # before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
  end

  def show
    @seller = Seller.find(params[:seller_id])
    @product = @seller.products.find(params[:id])
  end
 
  def create
    @seller = Seller.find(params[:seller_id]) 
    @product = @seller.products.create(product_params)
    redirect_to seller_path(@seller)
      #@product = Product.new(product_params)
  end    
=begin
    respond_to do |format|
      if @product.save
       format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
       format.json { render :show, status: :created, location: @product }
       else
       format.html { render :new, status: :unprocessable_entity }
       format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
=end    
  
  # DELETE /products/1 or /products/1.json
  def destroy
    @seller = Seller.find(params[:seller_id])
    @product = @seller.productss.find(params[:id])
    @product.destroy
    redirect_to seller_path(@seller), status: 303 
    #  @product.destroy
  end  
=begin
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
=end    
 
=begin # GET /products/new
  def new
    @product = Product.new
  end
=end
  # GET /products/1/edit
  def edit
    @seller = Seller.find(params[:seller_id])
    @product = Product.find(params[:id])
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    @seller = Seller.find(params[:seller_id])
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @seller
    else
      render :edit, status: :unprocessable_entity  
    end
  end
=begin
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
=end    
 
  private
=begin    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
=end
    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:image, :title, :description, :price, :seller_id, :video)
    end
end
