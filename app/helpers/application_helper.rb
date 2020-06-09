module ApplicationHelper
    def markdown(content)
        renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
        options = {
            hard_wrap: true, 
            autolink: true, 
            no_intra_emphasis: true, 
            fenced_code_blocks: true, 
            disable_indented_code_blocks: true,
            lax_html_blocks: true,
            quote: true, 
            underline: true, 
            italic: true, 
            superscript: true
        }
        Redcarpet::Markdown.new(renderer, options).render(content).html_safe
    end
end
