class QuestionaryResultsController < ApplicationController
  before_action :set_questionary_and_results, only: [:show, :calc]

  # GET /questionary_results
  # GET /questionary_results.json
  def index
    @questionaries = Questionary.all
  end

  # GET /questionary_results/1
  # GET /questionary_results/1.json
  def show
  end

  def calc
    @calc = {}
    @questionary_results.each do |result|
      data = result.result.split(',')
      data.each do |value|
        keyval = value.split(':')
        ky = keyval[0].to_s
        vl = keyval[1].to_i
        if ky != 'question_id'
          if @calc[ky] == nil
            @calc[ky] = []
          end
          @calc[ky][vl] = @calc[ky][vl] == nil ? 1 : @calc[ky][vl].to_i + 1
        end
      end
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionary_and_results
      @questionary = Questionary.find(params[:id])
      @questionary_results = QuestionaryResult.where('questionary_id = ?', params[:id])
    end
    
end
