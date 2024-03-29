require 'rubygems'

module Archive
  class Header < ::Taza::Page
    #Login Elements
    element(:sign_in_btn) {browser.div(:id,'login').a(:class, "small_login_open hidden")}
    element(:cancel_btn) {browser.div(:id, 'login').a(:class, "small_login_close hidden")}
    element(:user_name) {browser.text_field(:id, "user_session_login")}
    element(:user_password) {browser.text_field(:id, "user_session_password")}
    element(:user_remember) {browser.checkbox(:id, "user_session_remember_me")}
    element(:user_pwd_forgot) {browser.link(:href, /new/)}
    element(:login_btn) {browser.button(:id, "user_session_submit")}
    element(:log_out_btn) {browser.link(:href, "/logout")}
    #Sign In div
    element(:div_sign_in) {browser.div(:id, "signin")}
    
    #User Panel
    element(:greeting_panel) {browser.div(:id, "greeting")}
    element(:icon) {browser.image(:class, "icon")}
    element(:post_new_btn) {browser.link(:text, "post new")}

   #Navigation 
   element(:link) {browser.link(:text, $arg1)}
   #Home Page 
   element(:home_intro) {browser.div(:class, "intro module")}
   element(:first_work) {browser.li(:class, "work blurb group").link(:href, /works/)}
   element(:header) {browser.h2(:class, "heading")}
   element(:works_blurb) {browser.ul(:class, "work index group")}

   #Button 
   element(:button) {browser.button(:value, $arg1)}
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
   
   #JS Dialogs
   element(:ok) {browser.execute_script("window.confirm = function() {return true}")}
   element(:cancel) {browser.execute_script("window.prompt = function() {return null}")}
   
   
   
   #After Scenarios
   element(:quit) {browser.quit}
   element(:title) {browser.title}
   element(:url) {browser.url}
   #element(:save_screenshot) {browser.driver.save_screenshot}
   
  end
end
