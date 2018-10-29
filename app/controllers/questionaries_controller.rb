class QuestionariesController < ApplicationController
  before_action :set_questionary, only: [:show]

  # GET /questionaries
  # GET /questionaries.json
  def index
    @questionaries = Questionary.all.order('created_at desc')
  end

  # GET /questionaries/1
  # GET /questionaries/1.json
  def show
  end
  
  def sendform
    id = params[:id]
    result = 'question_id:' + id
    (1..100).each do |i|
      str = 'r' + i.to_s
      if params[str] == nil
        result += ',' + str + ':0'
      else
        result += ',' + str + ':' + params[str]
      end
    end
    @questionary_result = QuestionaryResult.new
    @questionary_result.questionary_id = id
    @questionary_result.result = result
    @questionary_result.save!
    redirect_to questionaries_path
  end

  # GET /questionaries/new
  def new
    @questionary = Questionary.new
  end


  # POST /questionaries
  # POST /questionaries.json
  def create
    @questionary = Questionary.new(questionary_params)

    respond_to do |format|
      if @questionary.save
        format.html { redirect_to "/questionary_items/#{@questionary.id}/new/" }
        format.json { render :show, status: :created, location: @questionary }
      else
        format.html { render :new }
        format.json { render json: @questionary.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionary
      @questionary = Questionary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionary_params
      params.require(:questionary).permit(:title, :description, :deadline)
    end
end
