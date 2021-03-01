class BoardController < ApplicationController

    def index
        @board = Board.all
    end

end
