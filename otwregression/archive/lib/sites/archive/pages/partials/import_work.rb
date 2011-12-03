require 'rubygems'

module Archive
  class ImportWork < ::Taza::Page
    element(:urls) {browser.text_field(:id, "urls")}
    element(:import_from_btn) {browser.link(:text, "Import From An Existing URL Instead?")}
    element(:import_btn) {browser.button(:value, "Import")}
  end
end
