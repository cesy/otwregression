require 'spec/spec_helper'
require 'archive'

describe "WorksNewPage" do
  
  before do 
    @fandom = "Supernatural"
    @rating = "Not Rated"
    @content = "Bad things happen, etc."
    @character = "Dean Winchester"
    @pairing = "Dean Winchester/Sam Winchester"
    @title1 = "Wendigo"
    @title2 = "Bad Day At Black Rock"
    @title3 = "Lazarus Rising"
    @add_tag = "Testing, Regression"
    @summary = "Regression"
    $coauthor = "astolat"
  end
  

   it "should preview and post a minimally valid new work" do
     Archive.new do |a|
       a.login_flow
       #Addes a new work
       a.new_work_required_flow(:rating => @rating,:fandom => @fandom,:title => @title1,:content => @content)
       #Preview New Work
       a.works_new_page.preview_btn.click
       a.header.flash_notice == ("Draft Successfully Created")
       a.works_new_page.meta_title == @title1
       a.works_new_page.meta_author == $user
       a.works_new_page.meta_rating == @rating
       a.works_new_page.meta_warning == "No Archive Warnings Apply"
       a.works_new_page.meta_stats.empty? == true
       a.works_new_page.post_content == @content
       #Post New Work
       a.works_new_page.post_btn.click
       a.header.flash_notice == ("Work was successfully posted.")
       a.works_new_page.meta_title == @title1
      a.works_new_page.meta_author == $user
       a.works_new_page.meta_rating == @rating
       a.works_new_page.meta_warning == "No Archive Warnings Apply"
       a.works_new_page.meta_stats.empty? == true
       a.works_new_page.post_content == @content
       a.works_new_page.meta_fandom == @fandom
       # #Assert it's been added to the Works List
       a.header.works_link.click
       a.works_index_page.work_blurb_title.text.include?(@title1)
       a.works_index_page.work_blurb_author.text.include?($user)
    end
  end
  
  # it "should post a work that is not a gift, remix, and without a coauthor" do 
    # Archive.new do |a|
      # a.login_flow
      # #Add a new work
      # a.new_work_required_flow(:rating => @rating,:fandom => @fandom,:title => @title2,:content => @content)
      # a.works_new_page.cat_mm.set
      # a.works_new_page.pairing_field.set(@pairing)
      # a.works_new_page.char_field.set(@character)
      # a.works_new_page.add_tag_field.set(@add_tag)
      # a.works_new_page.summary.set(@summary)
      # #Post New Work
      # a.works_new_page.post_btn.click
      # a.header.flash_notice == ("Draft Successfully Created")
      # a.works_new_page.meta_title == @title2
      # a.works_new_page.meta_author == $user
      # a.works_new_page.meta_rating == @rating
      # a.header.meta_warning == "No Archive Warnings Apply"
      # a.works_new_page.meta_stats.empty? == true
      # a.works_new_page.post_content == @content
      # a.works_new_page.meta_category == "M/M"
      # a.works_new_page.meta_fandom == @fandom
      # a.works_new_page.meta_char == @character
      # a.works_new_page.meta_freeform == @add_tag
      # #Assert it's been added to the Works List
      # a.header.works_link.click
      # a.works_index_page.work_blurb_title.text.include?(@title2)
      # a.works_index_page.work_blurb_author.text.include?($user)
    # end
  # end 
  
  # it "should Create a new work with a coauthor" do 
    # Archive.new do |a|
      # a.login_flow 
      # #Add a new work 
      # a.new_work_required_flow(:rating => @rating,:fandom => @fandom,:title => @title3,:content => @content)
      # a.works_new_page.coauthor.set
      # a.works_new_page.coauthor_field.set($coauthor) 
      # a.header.enter
      # #Post new Work
      # a.works_new_page.post_btn.click
      # a.header.flash_notice == ("Work was successfully posted.")
      # a.works_new_page.meta_title == @title3
      # a.header.user == $user
      # a.works_new_page.meta_rating == @rating
      # a.header.meta_warning == "No Archive Warnings Apply"
      # a.works_new_page.meta_stats.empty? == true
      # a.works_new_page.post_content == @content
      # a.works_new_page.meta_fandom == @fandom
      # a.works_new_page.meta_coauthor.text.include?($user)
      # #Assert it's been added to the Works List
      # a.header.works_link.click
      # a.header.user.text.include?(@title3)
      # a.works_new_page.meta_coauthor.text.include?($user)
    # end
  # end
  
  # it "should Create a new work that is a remix of an archive work" do 
    # Archive.new do |a|
      # a.login_flow
      # #Add a Remix
      # a.get_url_flow
      # a.new_work_required_flow(:rating => @rating,:fandom => @fandom,:title => "Remix",:content => @content)
      # a.works_new_page.remix_show.set
      # a.works_new_page.remix_panel.visible? == true
      # a.works_new_page.remix_url_field.set($url)
      # #Post Work
      # a.works_new_page.post_btn.click
      # a.header.flash_notice == ("Work was successfully posted.")
      # a.works_new_page.meta_title == "Remix"
      # a.header.user == $user
      # a.works_new_page.meta_rating == @rating
      # a.works_new_page.meta_warning == "No Archive Warnings Apply"
      # a.works_new_page.meta_stats.empty? == true
      # a.works_new_page.post_content == @content
      # a.works_new_page.meta_fandom == @fandom
      # a.works_new_page.post_notes.text.include?("Inspired by " + $title + " by testy.")
      # a.works_new_page.post_inspauthor.exists? == true
      # puts a.works_new_page.post_inspauthor.text
      # a.works_new_page.post_inswork.exists? == true 
    # end
  # end
  
  # it "should Create a new work that is a remix of an external work" do 
    # Archive.new do |a|
      # a.login_flow
      # #Add a Remix 
      # a.new_work_required_flow(:rating => @rating,:fandom => @fandom,:title => "External",:content => @content)
      # a.works_new_page.remix_show.set
      # a.works_new_page.remix_panel.visible? == true
      # a.works_new_page.remix_url_field.set("http://weimar27.livejournal.com/44831.html")
      # a.works_new_page.remix_author_field.set("weimar27")    
      # a.works_new_page.remix_title_field.set("A Fic") 
      # sleep 10 
      # #Post Work
      # a.works_new_page.post_btn.click
      # a.works_new_page.meta_title == "External"
      # a.header.user == $user
      # a.works_new_page.meta_rating == @rating
      # a.works_new_page.meta_warning == "No Archive Warnings Apply"
      # a.works_new_page.meta_stats.empty? == true
      # a.works_new_page.post_content == @content
      # a.works_new_page.meta_fandom == @fandom
      # a.works_new_page.post_notes.text.include?("Inspired by A Fic by testy.")
      # #Go to External Work 
      # a.works_new_page.remix_ext_url.exists? 
      # a.works_new_page.remix_ext_url.text == "A Fic"
      # a.works_new_page.remix_ext_url.click
      # a.header.notice == ("This work isn't hosted on the Archive so this blurb might not be complete or accurate.")
      # a.works_new_page.remix_ext_link.click
      # #TODO: Validate that I've gone to the External Work
    # end
  # end
 
 # it "should"
  
end
