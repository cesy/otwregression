require 'rubygems'

module Archive
  class Archive < ::Taza::Site
    def login_flow(params={})

$user = "testy"
$password = "t3st1ng"


      if header.sign_in_btn.visible? == true
        puts "logged out"
        header.sign_in_btn.click 
        header.user_name.set("testy")
        header.user_password.set("t3st1ng")
        header.login_btn.click
        header.greeting_panel.visible? == true
      elsif header.greeting_panel.visible? == true
        puts "already logged in"
      end
    end
  end
end
