class PagesController < ApplicationController

  def index
    @pages = Page.all
    render :index
  end

  def show
    @page = Page.find(params[:id])
    @comments = @page.comments
  end

  def new
    render :show
  end

  def create
    new_page = Page.new(page_params)
      redirect_to :action => 'show' if new_page.save
  end

  private
  def page_params
    params.require(:page).permit(:body, :title)
  end
end
