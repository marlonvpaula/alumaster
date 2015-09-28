class Contato < MailForm::Base
  attribute :name,      :validate => true, :message => "Por favor digite seu nome."
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :telefone,  :validate => true
  #attribute :file,      :attachment => true
  attribute :message

  #attribute :nickname,  :captcha  => true
  

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form Telefone:<#{telefone}>",
      :to => "marlonvpaula@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
