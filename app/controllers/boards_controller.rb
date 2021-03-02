class BoardsController < ApplicationController

    def index

        @boards = Board.all
        
    end

    def new

        @board = Board.new

    end

    def create

        @board = Board.create(board_params)
        @board.user_id = session[:user_id]
        redirect_to '/boards'

    end

    private

    def board_params

        params.require(:board).permit(
            :title,
            :landscaping_id,
            :hardscaping_id,
            :custom_pool_id,
            :artisan_masonry_id,
            :carpentry_id,
            :outdoor_lighting_id,
            :outdoor_kitchen_id,
            :outdoor_fireplace_id,
            :water_feature_id,
            :fire_pit_id
        )

    end

end
