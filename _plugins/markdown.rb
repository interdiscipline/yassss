# encoding: utf-8
# Jekyll tag to include Markdown text from _content directory preprocessing with Liquid.
# Usage:
#   {% content <filename> %}
# Dependency:
#   - kramdown

module Jekyll
  class ContentTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end
    require "kramdown"
    def render(context)
      file = File.join Dir.pwd, "_content", @text
      markdown_content = File.read(file, encoding: 'utf-8')
      markdown_content = Liquid::Template.parse(markdown_content).render(context)
      html = Kramdown::Document.new(markdown_content).to_html
    end
  end
end
Liquid::Template.register_tag('content', Jekyll::ContentTag)
