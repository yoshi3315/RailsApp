class PeopleController < ApplicationController
  layout 'people'
  before_action :set_person, only: [ :show, :edit, :update, :destroy ]

  def index
    @msg = 'Person data.'
    @data = Person.all
  end

  def show
    @msg = 'Indexed data.'
  end

  def new
    @msg = 'add new data.'
    @person = Person.new
  end
  
  def create
    Person.create(person_params)
    redirect_to(people_path)
  end

  def edit
    @msg = 'edit data.[id = ' + params[:id] + ']'
  end

  def update
    @person.update(person_params)
    redirect_to(people_path)
  end

  def destroy
    @person.destroy
    redirect_to(people_path)
  end

  def find
    @msg = 'please type search word...'
    @people = Array.new
    if request.post?
      @person = Person.find(params[:search])
      @people.push(@person)
    end
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

  def set_person
    @person = Person.find(params[:id])
  end

end
