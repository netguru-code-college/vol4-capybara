class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.readonly.all

    # checkbox logic
    @all_parameters = params
    @selected_product_names = params[:selected_products] || []

    @api_response_hash = {}
    if !@selected_product_names.empty?
      @api_response_hash = RecipeApiRequest.send_request(@selected_product_names)
    end
  end

  def show
    @product = Product.readonly.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end


  private def product_params
    params.require(:product).permit(:name, :exp_date)
  end

end
