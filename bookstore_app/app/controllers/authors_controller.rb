class AuthorsController < ApplicationController
    def new
    end
    def index
        @authors=Author.all
    end
    def show
        @authors=Author.find(params[:id])
    end
    def create
        @author = Author.new(author_params)
        if @author.save
        redirect_to authors_path
        else
        render 'new'
        end
    def update
    end
    def edit
    end
    def destroy
    end
    private
def author_params
params.require(:author).permit(:fname, :lname, :bio)
end    
end

