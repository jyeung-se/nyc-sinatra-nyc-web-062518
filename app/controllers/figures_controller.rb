class FiguresController < ApplicationController

    get '/figures' do
      @figures = Figure.all
      erb :'/figures/view'
    end

    get '/figures/new' do
      erb :'/figures/new'
    end

    post '/figures' do
      binding.pry
      @figure = Figure.create(params)
      # @name = params[:figure][:name]
      # @name = params[:title_ids][]


      redirect to '/figures'
    end

end
