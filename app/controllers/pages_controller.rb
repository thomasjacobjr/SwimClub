class PagesController < ApplicationController

  def index
    @pages = Page.all
  end

  def show
    @page = Page.friendly.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new
    @page.title = params[:page][:title]
    @page.body = params[:page][:body]

    if @page.save
      flash[:notice] = "Page saved."
      redirect_to @page
    else
      flash.now[:alert] = "There was an error saving the page. Please try again later."
      render :new
    end
  end

  def edit
    @page = Page.friendly.find(params[:id])
  end

  def update
    @page = Page.friendly.find(params[:id])

    @page.title = params[:page][:title]
    @page.body = params[:page][:body]

    if @page.save
      flash[:notice] = "Page was updated."
      redirect_to @page
    else
      flash.now[:alert] = "There was an error saving the page. Please try again."
      render :edit
    end
  end

  def destroy
    @page = Page.friendly.find(params[:id])

    if @page.destroy
      flash[:notice] = "\"#{@page.title}\" was deleted successfully."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error deleting the page."
      render :show
    end
  end

end
