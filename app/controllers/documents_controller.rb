class DocumentsController < ApplicationController
  load_and_authorize_resource

  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
    @document_url_path = @document.url.to_s
  end

  def new
    @document = Document.new
  end

  def edit
    @document = Document.find(params[:id])
  end


  def create
    @document = Document.new(params[:document])

    if @document.save
      flash[:notice] = "#{@document.name} has been created."
      redirect_to @document
    else
      render :action => 'new'
    end
  end

  def update
    @document = Document.find(params[:id])

    if @document.update_attributes(params[:document])
      flash[:notice] = "#{@document.name} was updated."
      redirect_to @document
    else
      render :action => 'edit'
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    flash[:notice] = "Successfully removed #{@document.name} from BOA."
    redirect_to documents_url
  end
end