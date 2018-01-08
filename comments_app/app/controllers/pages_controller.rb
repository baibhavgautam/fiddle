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
    render :new
  end

  def create
    new_page = Page.new(page_params)
      redirect_to pages_url if new_page.save

    # respond_to do |format|
    #   msg = { :message => comment.save ? "Success" : "Fail" }
    #   format.json  { render :json => msg }
    # end
  end

  private
  def page_params
    params.require(:page).permit(:body, :title)
  end
end
