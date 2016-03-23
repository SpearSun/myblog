module ApplicationHelper

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      language ||= :plaintext
      CodeRay.scan(code, language).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

    render_options = {
      filter_html: true, 
      hard_warp:   true,
      link_attributes: { rel: 'nofollow' }
    }
    render = Redcarpet::Render::HTML.new(render_options)

    extensions = {
      autolink: true,
      fenced_code_blocks: true, 
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(coderayified, extensions).render(text).html_safe
  end
  
end
