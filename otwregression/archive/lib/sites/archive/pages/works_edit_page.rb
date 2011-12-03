require 'rubygems'
require 'taza/page'

module Archive
  class WorksEditPage < ::Taza::Page
    #element(:edit_add_chapter) {browser.link(:text, "Add Chapter")}
    #element(:edit_work) {browser.link(:text, "Edit")}
    #element(:edit_tags) {browser.link(:text, "Edit Tags")}
    element(:delete_pairing) {browser.dd(:class, "relationship").span(:class, "delete")}
    element(:delete_character) {browser.dd(:class, "character").span(:class, "delete")}
    element(:delete_tags) {browser.dd(:class, "freeform").span(:class, "delete")}
    element(:delete_recpient) {browser.dd(:class, "recipient").span(:class, "delete")}
  end
end
