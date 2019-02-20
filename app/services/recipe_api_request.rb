class RecipeApiRequest

  def self.send_request(arr_products = [], food_cat = "", diet_cat = "")

    arr_products = arr_products.join(',')
    url = "http://www.recipepuppy.com/api/?i=#{arr_products}&q=#{food_cat}+#{diet_cat}"
    @response_json = RestClient.get url, headers = { accept: :json }
    JSON.parse(@response_json)

  end

end
