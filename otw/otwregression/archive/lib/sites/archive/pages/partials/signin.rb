require 'rubygems'

module Archive
  class Signin < ::Taza::Page
    #Restricted User Sign In 
    element(:restricted_user_warning) {browser.div(:id, "signin")}
    element(:restricted_user_name) {browser.text_field(:id, "user_session_login")}
    element(:restricted_user_password) {browser.text_field(:id, "user_session_password")}
    element(:restricted_signin) {browser.button(:id, "user_session_submit")}
  end
end
