module AstTools
  module Hash
    def self.convert(nodes)
      nodes.each_with_object({}) do |e, h|
        h[e.type.downcase] = e if e
      end
    end

    refine RubyVM::AST::Node do
      def children
        ::AstTools::Hash.convert(super)
      end
    end
  end
end
