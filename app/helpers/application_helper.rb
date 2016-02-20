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

  def back_button
  	html_icon("chevron-left") + "Back"
  end

  def new_button(content)
  	html_icon("plus") + "New " + content
  end

  def edit_button(content)
  	html_icon("text-background") + "Edit " + content
  end 

  private

  def html_icon(icon_type)
  	"<i class='glyphicon glyphicon-#{icon_type}'></i> ".html_safe
  end

end



