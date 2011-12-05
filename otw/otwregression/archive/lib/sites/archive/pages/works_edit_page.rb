require 'rubygems'
require 'taza/page'

module Archive
  class WorksEditPage < ::Taza::Page
    element(:delete_pairing) {browser.dd(:class, "relationship").span(:class, "delete")}
    element(:delete_character) {browser.dd(:class, "character").span(:class, "delete")}
    element(:delete_tags) {browser.dd(:class, "freeform").span(:class, "delete")}
    element(:delete_recpient) {browser.dd(:class, "recipient").span(:class, "delete")}
    element(:notes_field) {browser.text_field(:id, "work_notes")}
  end
end
