require 'rubygems'
require 'taza/page'

module Archive
  class WorksNewPage < ::Taza::Page
    
    element(:new_form) {browser.form(:id, "new_work")}
    
    #Rating
    element(:select_rating) {browser.select_list(:id, "work_rating_string")}
    #Values: "Not Rated", "General Audiences", "Teen and Up Audiences", "Mature", "Explicit"
    
    #Warnings
    element(:warning_choose) {browser.checkbox(:value, "Choose Not To Use Archive Warnings")}
    element(:warning_violence) {browser.checkbox(:value, "Graphic Depictions Of Violence")}
    element(:warning_death) {browser.checkbox(:value, "Major Character Death")}
    element(:warning_none) {browser.checkbox(:value, "No Archive Warnings Apply")}
    element(:warning_noncon) {browser.checkbox(:value, "Rape/Non-Con")}
    element(:warning_underage) {browser.checkbox(:value, "Underage")}
    
    #Category 
    element(:category_box) {browser.checkbox(:value, $arg1)}
    element(:cat_fm) {browser.checkbox(:value, "F/M")}
    element(:cat_ff) {browser.checkbox(:value, "F/F")}
    element(:cat_gen) {browser.checkbox(:value, "Gen")}
    element(:cat_mm) {browser.checkbox(:value, "M/M")}
    element(:cat_multi) {browser.checkbox(:value, "Multi")}
    element(:cat_other) {browser.checkbox(:value, "Other")}
    
    #Tags
    element(:fandom_field) {browser.dd(:class, "fandom required").ul(:class, "autocomplete").text_field(:index, 0)}
    element(:pairing_field) {browser.dd(:class, "relationship").ul(:class, "autocomplete").text_field(:index, 0)}
    element(:char_field) {browser.dd(:class, "character").ul(:class, "autocomplete").text_field(:index, 0)}
    element(:add_tag_field) {browser.dd(:class, "freeform").ul(:class, "autocomplete").text_field(:index, 0)}
    #Preface
    element(:title) {browser.text_field(:id, "work_title")} 
    element(:byline) {browser.dd(:class, "byline").select_list(:id, "work_author_attributes_ids_")}
    element(:content) {browser.text_field(:id, "content")}
    element(:coauthor) {browser.checkbox(:id, "co-authors-options-show")}
    element(:coauthor_field) {browser.dd(:class, "byline coauthors").ul(:class, "autocomplete").text_field(:index, 0)}
    element(:notes_show) {browser.checkbox(:id, "front-notes-options-show")}
    element(:notes_beg_field) {browser.text_field(:id, "work_notes")}
    element(:endnotes_show) {browser.checkbox(:id, "end-notes-options-show")}
    element(:endotes_field) {browser.text_field(:id, "work_endnotes")}
    element(:summary) {browser.text_field(:id, "work_summary")}
    element(:work_restricted) {browser.checkbox(:id, "work_restricted")}
    element(:work_chapter) {browser.checkbox(:id, "chapters-options-show")}
    element(:work_chapter_title) {browser.text_field(:id, "work_chapter_attributes_title")}
    #Associations
    element(:collections_field) {browser.dd(:class, "collection").ul(:class, "autocomplete").text_field(:index, 0)}
    element(:gift_field) {browser.dd(:class, "recipient").ul(:class, "autocomplete").text_field(:index, 0)}
    #Text 
    element(:content_field) {browser.text_field(:id, "content")}
    
    #Post
    #element(:preview_btn) {browser.button(:value, "Preview")}
    #element(:post_btn) {browser.button(:value, /Post/)}
    #element(:cancel_btn) {browser.button(:value, "Cancel")}
    
    #Validation 
    element(:meta_title)  {browser.div(:id, "workskin").h2(:class, /title/).text}
    element(:meta_rating) {browser.dl(:class, "work meta group").dd(:class, "rating tags").text}
    element(:meta_category) {browser.dl(:class, "work meta group").dd(:class, "category tags").text}       
    element(:meta_warning) {browser.dl(:class, "work meta group").dd(:class, "warning tags").text}
    element(:meta_fandom) {browser.dl(:class, "work meta group").dd(:class, "fandom tags").text}
    element(:meta_pairing) {browser.dl(:class, "work meta group").dd(:class, "relationship tags").text}
    element(:meta_char) {browser.dl(:class, "work meta group").dd(:class, "character tags").text}
    element(:meta_freeform) {browser.dl(:class, "work meta group").dd(:class, "freeform tags").text}
    element(:meta_stats) {browser.dl(:class, "work meta group").dd(:class, "stats").text}
    element(:meta_coauthor) {browser.link(:href, "/users/" + $coauthor + "/pseuds/" + $coauthor)}
    element(:post_content) {browser.div(:id, "chapters").text}
    element(:post_notes) {browser.div(:class, "notes module")}
    element(:post_endnotes) {browser.div(:class, "end notes module")}
    element(:post_inspauthor) {browser.h4(:class, "heading").link(:href, "/users/astolat/pseuds/astolat")}
    element(:post_inswork) {browser.h4(:class, "heading").link(:text, "Aerial")}
    element(:post_summary) {browser.div(:class, "summary module")}
    
    #Remix
    element(:remix_show) {browser.checkbox(:id, "parent-options-show")}
    element(:remix_panel) {browser.fieldset(:id, "parent-options")}
    element(:remix_url_field) {browser.text_field(:id, "work_parent_attributes_url")}
    element(:remix_title_field) {browser.text_field(:id, "work_parent_attributes_title")}
    element(:remix_author_field) {browser.text_field(:id, "work_parent_attributes_author")}
    element(:remix_translation) {browser.text_field(:id, "work_parent_attributes_translation")}
    element(:remix_lang_list) {browser.select_list(:id, "work_parent_attributes_language_id")}
    #Remix External
    element(:remix_ext_url) {browser.link(:href, /external_works/)}
    element(:remix_ext_link) {browser.link(:href, "http://weimar27.livejournal.com/44831.html")}
  end
end
