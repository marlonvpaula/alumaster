class Contato < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, on: :create }
  validates :phone, presence: true
  #attribute :file,      :attachment => true
  validates :message, presence: true

  #attribute :nickname,  :captcha  => true
  

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  #def headers
  #  {
  #    :subject => "My Contact Form Telefone:<#{telefone}>",
  #    :to => "marlonvpaula@gmail.com",
  #    :from => %("#{name}" <#{email}>)
  #  }
  #end
end
