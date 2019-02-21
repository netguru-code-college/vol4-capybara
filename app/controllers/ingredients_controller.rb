class IngredientsController < ApplicationController
  before_action :authenticate_user!

  def index
    @ingredients = Ingredient.readonly.all

    @products = Product.readonly.all

   #checkbox logic
    @all_parameters = params
    @selected_ingredient_names = params[:selected_ingredients] || []
    @selected_food_category = params[:food_cat] || ""
    @selected_diet_category = params[:diet_cat] || ""

     @api_response_hash = {}
     if !@selected_ingredient_names.empty?
       @api_response_hash = RecipeApiRequest.send_request(@selected_ingredient_names, @selected_food_category, @selected_diet_category)
     end
  end

  def show
    @ingredient = Ingredient.readonly.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.user = current_user
    if params[:ingredient][:product_id].present?
      @product = Product.find(params[:ingredient][:product_id])
      @ingredient.product = @product
      @ingredient.save!
      redirect_to ingredients_path
    else
      render 'new'
    end


   # @ingredient = Ingredient.new(ingredient_params)

    #if @ingredient.save
     # redirect_to ingredients_path
    #else
     # render 'new'
    #end
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    if @ingredient.update(ingredient_params)
      redirect_to ingredients_path
    else
      render 'edit'
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    redirect_to ingredients_path
  end

  private def ingredient_params
    params.require(:ingredient).permit(:name, :exp_date, :quantity, :product_id, :unit)
  end

end
