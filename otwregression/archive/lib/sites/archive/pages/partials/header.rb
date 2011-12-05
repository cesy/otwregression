require 'rubygems'

module Archive
  class Header < ::Taza::Page
    element(:sign_in_btn) {browser.div(:id,'login').a(:class, "small_login_open hidden")}
    element(:cancel_btn) {browser.div(:id, 'login').a(:class, "small_login_close hidden")}
    element(:user_name) {browser.text_field(:id, "user_session_login")}
    element(:user_password) {browser.text_field(:id, "user_session_password")}
    element(:user_remember) {browser.checkbox(:id, "user_session_remember_me")}
    element(:user_pwd_forgot) {browser.link(:href, /new/)}
    element(:login_btn) {browser.button(:id, "user_session_submit")}

    element(:greeting_panel) {browser.div(:id, "greeting")}
    element(:icon) {browser.image(:class, "icon")}
    #element(:post_new_btn) {browser.link(:text, "post new")}
    element(:log_out_btn) {browser.link(:href, "/logout")}

  #Navigation 
   element(:link) {browser.link(:text, $arg1)}
   element(:button) {browser.button(:value, $arg1)}
   
   element(:fandoms_link) {browser.link(:text, "fandoms")}
   element(:works_link) {browser.link(:text, "works")}
   element(:people_link) {browser.link(:text, "people")}
   element(:bookmarks_link) {browser.link(:text, "bookmarks")}
   element(:tags_link) {browser.link(:text, "tags")}
   element(:collections_link) {browser.link(:text, "collections")}
   element(:search_text_field) {browser.text_field(:id, "site_search")}
   element(:search_btn) {browser.button(:value, "Search")}
   element(:people_search_link) {browser.link(:text, "People Search (Alpha)")}
   
   #Home Page 
   element(:home_intro) {browser.div(:class, "intro module")}
   
   #Button 
   #element(:button) {browser.button(:value, $button)}
   element(:user) {browser.link(:href, "/users/" + $user + "/pseuds/" + $user)}
   element(:text) {browser.text}
   element(:goto) {browser.goto $url}
   #Works Buttons
   #element(:comments) {browser.link(:text, "Comments")}
   #element(:share) {browser.link(:text, "Share")}
   #element(:download) {browser.link(:text, "Dowload")}
   #element(:bookmarks) {browser.link(:text, "Bookmark")}
   
   #Send Keys
   element(:enter) {browser.send_keys :enter}
   element(:tab) {browser.send_keys :tab}
   
   #Notices
   element(:flash_notice) {browser.div(:class, "flash notice")}
   element(:notice) {browser.p(:class, "notice")}
   element(:error) {browser.div(:id, "error")}
   
   
   #After Scenarios
   element(:quit) {browser.quit}
   element(:title) {browser.title}
   #element(:save_screenshot) {browser.driver.save_screenshot}
   
  end
end
