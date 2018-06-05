module AstTools
  module Hash
    refine RubyVM::AST::Node do
      def children
        super.each_with_object({}) do |e, h|
          h[e.type.downcase] = e if e
        end
      end
    end
  end
end
