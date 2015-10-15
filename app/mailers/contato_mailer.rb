class ContatoMailer < ActionMailer::Base
  default to: 'marlonvpaula@gmail.com'

  def confirm_email(contato)

		#@confirmation_link = root_url
		@contact = contato
		mail ({
			from: @contact.email,
			bcc: ['contatos <marlonvpaula@gmail.com>'], 
			subject: 'Contato Alumaster'
			})
	end
end
