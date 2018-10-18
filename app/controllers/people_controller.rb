class PeopleController < ApplicationController

  def index
    @msg = 'Person data.'
    @data = Person.all
  end

  def show
    @msg = 'Indexed data.'
    @person = Person.find(params[:id])
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
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)
    redirect_to(people_path)
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to(people_path)
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

end
