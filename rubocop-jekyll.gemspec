# frozen_string_literal: true

require_relative "lib/rubocop-jekyll/version"

Gem::Specification.new do |s|
  s.name        = "rubocop-jekyll"
  s.version     = RuboCop::Jekyll::VERSION
  s.authors     = ["Ashwin Maroli"]
  s.email       = ["ashmaroli@gmail.com"]
  s.homepage    = "https://github.com/jekyll/rubocop-jekyll"
  s.license     = "MIT"
  s.summary     = "Code style check for Jekyll and Jekyll plugins"
  s.description = "A RuboCop extension to enforce common code style in Jekyll and Jekyll plugins"

  s.files       = `git ls-files -z`.split("\x0").select do |file|
    file.match(%r!(^lib/)|LICENSE|README.md|.rubocop.yml!)
  end

  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 2.7.0"

  s.add_runtime_dependency "rubocop", "~> 1.57.0"
  s.add_runtime_dependency "rubocop-performance", "~> 1.2"
end
