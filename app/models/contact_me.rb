class ContactMe < ApplicationRecord

  def create
    @contact = ContactMe.new contact_me_params

    if @contact.save
      redirect_to contact_mes_path, notice: 'Your message was sent!'

    else
      redirect_to contact_mes_path, notice: 'Unable to send message'
    end

  end

  def contact_me_params
    params.require(:contact_me).permit(:name, :email, :description, :phone)
  end
end
