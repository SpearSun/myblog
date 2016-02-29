module ApplicationHelper
  def sign_in
    links = {}
    unless session[:name]
      links['application.sign_in'] = "/sign_in"
      links['application.sign_up'] = "/users/new"
    else
      links["Logged in as " + session[:name]] = '/users/show'
    end
    links
  end

  def sign_out
    links = {}
    if session[:name]
      links['application.sign_out'] = "/sign_out"
    end
    links
  end

  def logged_in?
    session[:name].nil? ? false : true
  end

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
