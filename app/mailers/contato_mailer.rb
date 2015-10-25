class ContatoMailer < ActionMailer::Base

  def confirm_email(contato)

		#@confirmation_link = root_url
		@contact = contato
		mail ({
			to: 'alumaster.toledo@gmail.com',
			from: @contact.email,
			bcc: ['contatos <marlonvpaula@gmail.com>'], 
			subject: 'Contato Alumaster'
			})
	end
end
