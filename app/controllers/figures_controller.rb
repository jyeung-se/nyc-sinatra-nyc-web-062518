class FiguresController < ApplicationController

    get '/figures' do
      @figures = Figure.all
      # binding.pry
      erb :'/figures/view'
    end

    get '/figures/new' do
      erb :'/figures/new'
    end

    post '/figures' do

      @figures = Figure.create(name: params[:figure][:name])
      # if !Landmark.all.id.includes?(params[:figure][:landmark_ids])
      #   redirect to '/landmarks/new'
      # end
      #
      # if !Title.all.id.includes?(params[:figure][:title_ids])
      #   redirect to '/titles/new'
      # end
      #
      # @figures = Figure.create(name: params[:figure][:name], landmark_ids: params[:figure][:landmark_ids], title_ids: params[:figure][:title_ids])
      redirect to '/figures'
    end

end
