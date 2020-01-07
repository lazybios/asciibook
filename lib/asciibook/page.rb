module Asciibook
  class Page
    attr_accessor :node, :prev_page, :next_page

    def initialize(node)
      @node = node
    end

    def path
      "#{node.id}.html"
    end

    def title
      node.title
    end

    def content
      node.convert
    end

    def to_hash
      {
        'path' => path,
        'title' => title,
        'content' => content,
        'prev_page' => prev_page && { 'path' => prev_page.path, 'title' => prev_page.title },
        'next_page' => next_page && { 'path' => next_page.path, 'title' => next_page.title }
      }
    end
  end
end
