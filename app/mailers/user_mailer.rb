class UserMailer < ApplicationMailer
    default from: "Kpez16@gmail.com"
    
    def contact_form(email, name, message)
        @message = message
        mail(:from => email,
            :to => 'Kpez16@gmail.com',
            :subject => "A new contact form message from #{name}")
    end
    
    def welcome(user)
        @appname = "Bikes-N-Stuff"
        mail( :to => user.email,
            :subject => "Welcome to #{@appname}!")
    end
    
    def thank_you
        @name = params[:name]
        @email = params[:email]
        @message = params[:message]
        UserMailer.contact_form(@email, @name, @message).deliver_now
    end
    
    def purchased(user)
        @user = user
        mail(to: @user.email, subject: 'Thank you for your purchase!')
    end
end
