require 'rubygems'

module Archive
  class Archive < ::Taza::Site
    def get_url_flow(params={})
        header.works_link.click
        works_index_page.work_link.click
        
        $url = browser.url
        puts $url
        
        $title  = browser.div(:id, "workskin").h2(:class, /title/).text
        puts $title
#         
        $author = browser.div(:id, "workskin").h3(:class, /byline/).link(:href, /users/).text
        puts $author
    end
  end
end
