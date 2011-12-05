require 'rubygems'

module Archive
  class Archive < ::Taza::Site
    def create_work_flow(params={})
        
        $url = "http://testarchive.transformativeworks.org/users/weimar27/works"
        header.goto 
        
        if  header.link.exists? == true
          puts "story exists"
        else
         puts "creating work"
         works_new_page.select_rating.select_value params[:rating]
         works_new_page.warning_none.set
         works_new_page.fandom_field.set params[:fandom]
         header.enter
         works_new_page.pairing_field.set params[:pairing]
         header.enter
         works_new_page.char_field.set params[:characters]
         header.enter
         works_new_page.add_tag_field.set params[:add_tags]
         header.enter
         works_new_page.title.set params[:title]
         works_new_page.content.set params[:content]
       end
    end
  end
end
