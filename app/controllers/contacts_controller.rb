class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "Nous vous remercions pour votre message ! Nous reviendrons vers vous sous 10 jours !"
      redirect_to root_path
    else
      flash.now[:error] = "Erreur d'envoi."
      render :new
    end
  end 
end

private 

def contact_params
  params.require(:contact).permit(:email, :message)
end
