class TicTacToeController < ApplicationController

  def new
    @current_player = 'X'
    save_player
    render :game_board
  end

  def make_move
    @current_player = retrieve_current_player

    switch_player
    save_player

    render :game_board
  end

  private

  # switch the current player
  def switch_player
    @current_player = (@current_player == 'X' ? 'O' : 'X')
  end

  # pull the current player from the session
  def retrieve_current_player
    session[:current_player]
  end

  # save the current player in the session
  def save_player
    session[:current_player] = @current_player
  end 


end
