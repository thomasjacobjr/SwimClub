class PagesController < ApplicationController

  def index
    @pages = Page.all 
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new
    @page.title = params[:page][:title]
    @page.body = params[:page][:body]
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    @page.title = params[:page][:title]
    @page.body = params[:page][:body]
  end

  def destroy
    @page = Page.find(params[:id])

    if @page.destroy
      flash[:notice] = "\"#{@page.title}\" was deleted successfully."
      redirect_to pages_path
    else
      flash.now[:alert] = "There was an error deleting the page."
      render :show
    end
  end

end
