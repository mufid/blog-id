module Jekyll
  class CodeBlockLegacy < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text}"
    end
  end
end

module Jekyll
  class CodeBlockLegacyEndOfTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      ""
    end
  end
end

module Jekyll
  class RenderNullLegacy < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      ""
    end
  end
end

Liquid::Template.register_tag('codeblock', Jekyll::CodeBlockLegacy)
Liquid::Template.register_tag('endcodeblock', Jekyll::CodeBlockLegacyEndOfTag)
Liquid::Template.register_tag('youtube', Jekyll::RenderNullLegacy)

