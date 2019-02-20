class RecipeApiRequest

  def self.send_request(arr_products = [], arr_key_words = [])

    arr_products = arr_products.join(',')
    arr_key_words = arr_key_words.join(',')
    num_of_pages = 3
    url = "http://www.recipepuppy.com/api/?i=#{arr_products}&q=#{arr_key_words}&p=#{num_of_pages}"

    @response_json = RestClient.get url, headers = { accept: :json }
    JSON.parse(@response_json)

  end

end
