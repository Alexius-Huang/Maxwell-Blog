module ApplicationHelper
	def markdown(text)
    options = {
      filter_html:         true,
      hard_wrap:       		 true, 
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      prettify:            true
    }

    extensions = {
      autolink:           true,
      superscript:        true,
      fenced_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end

  def time_ago(content)
  	time_ago_in_words(content.created_at)
  end
end
