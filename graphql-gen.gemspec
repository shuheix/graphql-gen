# frozen_string_literal: true

require_relative "lib/graphql/gen/version"

Gem::Specification.new do |spec|
  spec.name = "graphql-gen"
  spec.version = Graphql::Gen::VERSION
  spec.authors = ["shuheix"]
  spec.email = ["ono.shuhei210@gmail.com"]

  spec.summary = "A tool for generating Ruby files from schema.graphql for use with graphql-ruby."
  spec.description = "graphql-gen is a gem that automates the process of generating Ruby files based on a schema.graphql file. It is specifically designed to work with the graphql-ruby gem, streamlining the development of GraphQL APIs in Ruby by generating the necessary boilerplate code for types, queries, mutations, and subscriptions defined within your GraphQL schema."
  spec.homepage = "https://github.com/shuheix/graphql-gen"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/yourusername/graphql-gen"
  spec.metadata["changelog_uri"] = "https://github.com/yourusername/graphql-gen/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
