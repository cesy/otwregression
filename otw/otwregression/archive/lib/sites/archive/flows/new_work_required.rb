require 'rubygems'

module Archive
  class Archive < ::Taza::Site
    def new_work_required_flow(params={})
      header.post_new_btn.click
      #Validates for Basic Tags
      works_new_page.warning_choose.set? == true
      works_new_page.warning_choose.visible? == true
      works_new_page.warning_violence.visible? == true
      works_new_page.warning_death.visible? == true
      works_new_page.warning_none.visible? == true
      works_new_page.warning_noncon.visible? == true
      works_new_page.warning_underage.visible? == true
      works_new_page.cat_ff.visible? == true
      works_new_page.cat_mm.visible? == true
      works_new_page.cat_gen.visible? == true
      works_new_page.cat_multi.visible? == true
      works_new_page.cat_other.visible? == true 
      #Set Fields 
      works_new_page.select_rating.select_value params[:rating]
      works_new_page.warning_none.set
      works_new_page.fandom_field.set params[:fandom]
      works_new_page.title.set params[:title]
      works_new_page.content.set params[:content]      
    end
  end
end
