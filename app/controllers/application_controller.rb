class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
<<<<<<< HEAD
    erb :index
  end 
  
  get '/recipes/new' do 
    erb :new
  end 
  
  get '/recipes' do 
    @recipes = Recipe.all
    erb :index
  end 
  
  post '/recipes' do 
      recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])

    redirect "/recipes/#{recipe.id}"

  end 
  
  get '/recipes/:id' do 
    @recipe = Recipe.find(params[:id])
    erb :show
  end 
  
  get '/recipes/:id/edit' do 
    @recipe = Recipe.find(params[:id])
    erb :edit 
  end 
  
  patch '/recipes/:id' do 
    recipe = Recipe.find(params[:id])
    recipe.name = params[:name]
    recipe.ingredients = params[:ingredients]
    recipe.cook_time = params[:cook_time]
    recipe.save
    redirect "/recipes/#{recipe.id}"
  end 
  
  delete '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect '/recipes'
  end
=======
    erb :new
  end 
  
  post '/recipes' do 
    @recipe = Recipe.new(name: params["name"], ingredients: params["ingredients"], cook_time: params["cook_time"])
    
    if recipe.save 
      redirect '/recipe/:id'
    else 
      redirect '/failure'
    end 
  end 
  
  get '/recipe/:id' do 
  end 
  
  get '/failure' do
		erb :failure
	end
>>>>>>> 8c57fc559391f3a1a042db1377c7e134fe7cc6a9
  
  
end
