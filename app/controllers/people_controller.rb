class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @people = Person.find(params[:id])
  end

  def new
     @people = Person.new
  end

  def edit
    @people = Person.find(params[:id])
  end

  def create
    people = Person.create(people_params)
    if people.save
      redirect_to people_path(people)
    else
      render :new
    end
  end

  def update
    @people = Person.find(params[:id])
    if @people.update(people_params)
      redirect_to people_path(@people)
    else
      render :edit
    end
  end

  def destroy
    people = Person.find(params[:id])
    people.destroy
    redirect_to people_path
  end
  private
  #Strong params
    def people_params
      params.require(:person).permit(:name, :age, :hair, :eyes, :gender, :alive)
    end
end
