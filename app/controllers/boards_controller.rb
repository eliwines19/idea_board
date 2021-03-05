class BoardsController < ApplicationController

    def index

        @boards = Board.where(user_id: current_user.id)

    end

    def show

        @board = Board.find_by(id: params[:id])

    end

    def new

        @board = Board.new

    end

    def create

        @board = Board.create(board_params)
        @board.user_id = session[:user_id]

        if @board.save! 
            redirect_to '/boards'
        else
            render "new"
        end

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
