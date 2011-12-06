require 'rubygems'

module Archive
  class Archive < ::Taza::Site
    def create_draft_flow(params={})
      header.post_new_btn.click
      works_new_page.select_rating.select_value params[:rating]
      works_new_page.warning_none.set
      works_new_page.fandom_field.set params[:fandom]
      header.enter
      works_new_page.title.set params[:title]
      works_new_page.content.set params[:content]  
      $arg1 = "Preview" 
      header.button.click    
    end
  end
end
