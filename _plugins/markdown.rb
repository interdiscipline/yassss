# encoding: utf-8
# Jekyll tag to include Markdown text from _content directory preprocessing with Liquid.
# Usage:
#   {% content <filename> %}
# Dependency:
#   - kramdown

module Jekyll
  class MarkdownTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end
    require "kramdown"
    def render(context)
      file = File.join Dir.pwd, "_content", @text
      tmpl = File.read(file, encoding: 'utf-8')
      site = context.registers[:site]
      tmpl = (Liquid::Template.parse tmpl).render site.site_payload
      html = Kramdown::Document.new(tmpl).to_html
    end
  end
end
Liquid::Template.register_tag('content', Jekyll::MarkdownTag)
