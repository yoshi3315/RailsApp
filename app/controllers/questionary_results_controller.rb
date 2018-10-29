class QuestionaryResultsController < ApplicationController
  before_action :set_questionary_result, only: [:show, :edit, :update, :destroy]

  # GET /questionary_results
  # GET /questionary_results.json
  def index
    @questionaries = Questionary.all
  end

  # GET /questionary_results/1
  # GET /questionary_results/1.json
  def show
    @questionary = Questionary.find(params[:id])
    @questionary_results = QuestionaryResult.where('questionary_id = ?', params[:id])
  end

  def calc
    @questionary = Questionary.find(params[:id])
    results = QuestionaryResult.where('questionary_id = ?', params[:id])
    @clac = {}
    results.each do |result|
      data = result.result.split(',')
      data.each do |value|
        keyval = value.split(':')
        ky = keyval[0].to_s
        vl = keyval[1].to_i
        if ky != 'question_id'
          if @clac[ky] == nil
            @clac[ky] = []
          end
          @clac[ky][vl] = @calc[ky][vl] == nil ? 1 : @calc[ky][vl].to_i + 1
        end
      end
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionary_result
      @questionary_result = QuestionaryResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionary_result_params
      params.require(:questionary_result).permit(:questionary_id, :result)
    end
end
