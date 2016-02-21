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

    if text == nil
    	text = ""
    end
    
    markdown.render(text).html_safe
  end

  def time_ago(content)
  	time_ago_in_words(content.created_at)
  end

  [
  	["back", 		"chevron-left",			"Back"			],
  	["new",			"plus",							"New "			],
  	["edit",		"text-background",	"Edit "			],
  	["destroy", "remove-sign", 			"Delete "		],
  	["view", 		"eye-open", 				"View all "	]
  ].each do |method_title, icon_type, insert_string|
  	define_method("#{method_title}_button") do |content|
  		html_icon(icon_type) + insert_string + content
  	end
  end

  def html_icon(icon_type)
  	"<i class='glyphicon glyphicon-#{icon_type}'></i> ".html_safe
  end

end



