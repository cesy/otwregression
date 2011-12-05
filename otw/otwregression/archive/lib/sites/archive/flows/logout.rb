require 'rubygems'

module Archive
  class Archive < ::Taza::Site
    def logout_flow(params={})
      if header.greeting_panel.exists? == false
        puts "already logged out"
      elsif
      header.log_out_btn.click  
      end
    end
  end
end
