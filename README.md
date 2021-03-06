# AstTools

Tools for RubyVM::AST, available after ruby 2.6.0-preview2(exerimental).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ast_tools'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ast_tools

## Usage

```
RubyVM::AST.parse("1 + 2").children
# => [nil, #<RubyVM::AST::Node(NODE_OPCALL(36) 1:0, 1:5): >]

AstTools::Hash.convert(RubyVM::AST.parse("1 + 2").children)
# => {"node_opcall"=>#<RubyVM::AST::Node(NODE_OPCALL(36) 1:0, 1:5): >}

# or refinement

module Foo
  using AstTools::Hash
  def self.foo
    RubyVM::AST.parse("1 + 2").children
    # => {"node_opcall"=>#<RubyVM::AST::Node(NODE_OPCALL(36) 1:0, 1:5): >}
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hkdnet/ast_tools.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
