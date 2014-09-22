class ContactsController < ApplicationController
  
  def new
  	@contact=Contact.new
  	#puts "=======================#{params[:contact_type]}"
  	@contact_type=params[:contact_type]
  end

  def create
  	@contact = Contact.new(contact_params)
  	@contact.contacttype=params[:contact_type]
  	#puts "=======================#{params[:contact_type]}",@contact.contacttype
    respond_to do |format|
      if @contact.save
        format.html { redirect_to new_contact_path(contact_type: @contact.contacttype), notice: 'contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
  def contact_params
      params.require(:contact).permit(:name, :email, :message, :contacttype)
    end
end
