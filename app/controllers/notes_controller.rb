class NotesController < ApplicationController
  def index
    # def new 와 동일
    @token = form_authenticity_token
  end

  def create
    note = Note.new
    note.title = params[:title]
    note.content = params[:content]
    note.save
    
    redirect_to '/'
  end

  def all
    @notes = Note.all
  end

  def one
    @note = Note.find params[:id]
  end
  
  def destroy
    note = Note.destroy params[:id]
    note.destroy
    
    redirect_to '/notes/all'
  end
  
  def edit
    @note = Note.find params[:id]
    @tokee = form_authenticity_token
  end
  
  def update
    note = Note.find params[:id]
    note.title = params[:edit_title]
    note.content = params[:edit_content]
    note.save
    
    redirect_to "/notes/one/#{note.id}"
  end
  
  
end
