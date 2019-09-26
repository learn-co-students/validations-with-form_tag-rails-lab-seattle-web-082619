class AuthorsController < ApplicationController

  def index
    @authors = Author.all 
  end 

  def show
    @author = author_id_params
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid? 
      @author.save(author_params)
      redirect_to author_path(@author)
    else 
      render :new
      #clutch, allows you to not lose the information, but returns to new so they can fix their mistake 
    end 
  end

  def update
    #find by id, if the author is valid and passes our validations then update with our strong params
    # else, return back to the edit page 
    @author = author_id_params
    if @author.valid?
      @author.update(author_params)
    else 
      render :edit
    end 
  end 

  def edit
    @author = author_id_params
  end 

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def author_id_params
    Author.find(params[:id])
  end 

end
