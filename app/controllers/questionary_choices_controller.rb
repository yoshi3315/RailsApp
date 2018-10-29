class QuestionaryChoicesController < ApplicationController

   # GET /questionary_choices/new
  def new
    @questionary_choice = QuestionaryChoice.new
    @questionary_choice.questionary_item_id = params[:id]
    @questionary_item = QuestionaryItem.find(params[:id])
  end

  # POST /questionary_choices
  # POST /questionary_choices.json
  def create
    @questionary_choice = QuestionaryChoice.new(questionary_choice_params)
    @questionary_item = QuestionaryItem.find(@questionary_choice.questionary_item_id)
    @questionary = Questionary.find(@questionary_item.questionary_id)

    respond_to do |format|
      if @questionary_choice.save
        format.html { redirect_to "/questionary_choices/#{@questionary_choice.questionary_item_id}/new/", notice: "選択肢を登録しました：「#{@questionary_choice.content}」" }
        format.json { render :show, status: :created, location: @questionary_choice }
      else
        format.html { render :new }
        format.json { render json: @questionary_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def questionary_choice_params
      params.require(:questionary_choice).permit(:content, :value, :questionary_item_id)
    end
end
