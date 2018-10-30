class QuestionaryItemsController < ApplicationController

  # GET /questionary_items/new
  def new
    @questionary_item = QuestionaryItem.new
    @questionary_item.questionary_id = params[:id]
    @questionary = Questionary.find(params[:id])
  end

  # POST /questionary_items
  # POST /questionary_items.json
  def create
    @questionary_item = QuestionaryItem.new(questionary_item_params)
    @questionary = Questionary.find(@questionary_item.questionary_id)

    respond_to do |format|
      if @questionary_item.save
        format.html { redirect_to "/questionary_choices/#{@questionary_item.id}/new/", notice: "設問を登録しました：設問「#{@questionary_item.content}」" }
        format.json { render :show, status: :created, location: @questionary_item }
      else
        format.html { render :new }
        format.json { render json: @questionary_item.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def questionary_item_params
      params.require(:questionary_item).permit(:content, :questionary_id)
    end
end
