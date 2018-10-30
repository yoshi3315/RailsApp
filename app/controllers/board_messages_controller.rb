class BoardMessagesController < ApplicationController
  before_action :set_board_messages, only: [:index, :create]
  before_action :authenticate_account!
  
  # GET /board_messages
  # GET /board_messages.json
  def index
    users = BoardUser.where(account_id: current_account.id)
    if users[0] == nil
      user = BoardUser.new
      user.account_id = current_account.id
      user.nickname = '<<no name>>'
      user.save
      users = BoardUser.where(account_id: current_account.id)
    end
    @board_user = users[0]
    @board_message = BoardMessage.new
    @board_message.board_user_id = @board_user.id
  end

  # POST /board_messages
  # POST /board_messages.json
  def create
    @board_message = BoardMessage.new(board_message_params)
    @board_user = BoardUser.where(account_id: current_account.id)

    respond_to do |format|
      if @board_message.save
        format.html { redirect_to board_messages_path, notice: 'Board message was successfully created.' }
        format.json { render :show, status: :created, location: @board_message }
      else
        format.html { render :index }
        format.json { render json: @board_message.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_messages
      @board_messages = BoardMessage.page([:page]).order('created_at desc')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_message_params
      params.require(:board_message).permit(:content, :board_user_id)
    end
end
