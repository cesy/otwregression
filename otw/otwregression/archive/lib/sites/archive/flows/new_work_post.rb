require 'rubygems'

module Archive
  class Archive < ::Taza::Site
    def new_work_post_flow(params={})
      works_new_page.flash_notice.text.include?("Work was successfully posted.")
      works_new_page.meta_title.include? params[:title]
      works_new_page.meta_author.include? params[:author]
      works_new_page.meta_rating.include? params[:rating]
      works_new_page.meta_warning.include? params[:warning]
      works_new_page.meta_category.include? params[:category]
      works_new_page.meta_fandom.include? params[:fandom]
      works_new_page.meta_pairing.include? params[:pairing]
      works_new_page.meta_char.include? params[:characters]
      works_new_page.meta_freeform.include? params[:add_tags]
      works_new_page.post_content.include? params[:content]      
    end
  end
end
