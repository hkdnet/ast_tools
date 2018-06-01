module AstTools
  module Hash
    def children
      super.each_with_object({}) do |e, h|
        h[e.type.downcase] = e if e
      end
    end
  end
end

RubyVM::AST::Node.prepend ::AstTools::Hash
