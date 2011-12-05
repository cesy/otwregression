require 'rubygems'
require 'taza/page'

module Archive
  class WorksIndexPage < ::Taza::Page
   element(:work_blurb) {browser.li(:class, "work blurb").div(:class, "header module")}
   element(:work_blurb_title) {browser.div(:class, "header module").link(:href, /works/)}
   element(:work_link) {browser.div(:class, "header module").link(:index, 0)}
   element(:work_restricted) {browser.div(:class, "header module").link(:text,"Restricted")}
   element(:work_blurb_author) {browser.div(:class, "header module").link(:href, /pseuds/)}
  end
end
