class FormPagesController < ApplicationController
  before_action :set_form_page, only: [:show, :edit, :update, :destroy]

  def index
    @form_pages = FormPage.all
  end

  def show
    @form_page = FormPage.find(params[:id])
  end

  def new
    @form_page = FormPage.new
  end

  def edit
    @form_page = FormPage.find(params[:id])
  end

def create
  @form_page = FormPage.new(form_page_params)

  if @form_page.save
    flash[:success] = 'Form page was successfully created.'
    redirect_to @form_page
  else
    flash.now[:error] = 'Failed to create form page.'
    render :new
  end
end

def update
  @form_page = FormPage.find(params[:id])

  if @form_page.update(form_page_params)
    flash[:success] = 'Form page was successfully updated.'
    redirect_to @form_page
  else
    flash.now[:error] = 'Failed to update form page.'
    render :edit
  end
end


  def destroy
    @form_page.destroy
    redirect_to form_pages_url, notice: 'Form page was successfully destroyed.'
  end

  private
    def set_form_page
      @form_page = FormPage.find(params[:id])
    end

    def form_page_params
      params.require(:form_page).permit(:username, :email, :age)
    end
end
