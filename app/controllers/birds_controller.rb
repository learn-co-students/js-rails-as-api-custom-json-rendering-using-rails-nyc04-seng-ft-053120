class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: @birds
  end


  def show
    bird = Bird.find_by(id: params[:id])
    render json: bird
    # render json: { id: bird.id, name: bird.name, species: bird.species}
    # the result is when we visist local with id 3 we''' only see the specified info
    # or the slice method render json: bird.slice(:id, :name, :species)
    # render json: birds, only: [:id, :name, :species] is better than slice
    #another way is to use except,  render json: birds, except: [:created_at, :updated_at]
    # render json: birds, except: [:created_at, :updated_at]
  end
end