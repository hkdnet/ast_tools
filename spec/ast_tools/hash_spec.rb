RSpec.describe AstTools::Hash do
  let(:node) { RubyVM::AST.parse('1 + 2') }
  context 'w/o refinements' do
    it do
      expect(node.children).to be_a Array
    end
  end

  context 'w/o refinements' do
    using AstTools::Hash
    it do
      expect(node.children).to be_a Hash
    end
  end
end
