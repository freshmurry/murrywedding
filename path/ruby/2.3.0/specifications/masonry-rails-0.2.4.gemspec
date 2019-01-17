# -*- encoding: utf-8 -*-
# stub: masonry-rails 0.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "masonry-rails"
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kristian Mandrup"]
  s.date = "2014-11-20"
  s.description = "Masonry will rock your world!"
  s.email = "kmandrup@gmail.com"
  s.extra_rdoc_files = ["LICENSE.txt", "README.md"]
  s.files = ["LICENSE.txt", "README.md"]
  s.homepage = "http://github.com/kristianmandrup/masonry-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Use JQuery Masonry with Rails asset pipeline"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["> 2.10.0", "~> 2.10"])
      s.add_development_dependency(%q<rdoc>, ["> 4.0.0", "~> 4.0"])
      s.add_development_dependency(%q<bundler>, ["> 1.2.0", "~> 1.2"])
      s.add_development_dependency(%q<jeweler>, ["> 1.8.4", "~> 1.8"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.5"])
    else
      s.add_dependency(%q<railties>, [">= 0"])
      s.add_dependency(%q<rspec>, ["> 2.10.0", "~> 2.10"])
      s.add_dependency(%q<rdoc>, ["> 4.0.0", "~> 4.0"])
      s.add_dependency(%q<bundler>, ["> 1.2.0", "~> 1.2"])
      s.add_dependency(%q<jeweler>, ["> 1.8.4", "~> 1.8"])
      s.add_dependency(%q<simplecov>, ["~> 0.5"])
    end
  else
    s.add_dependency(%q<railties>, [">= 0"])
    s.add_dependency(%q<rspec>, ["> 2.10.0", "~> 2.10"])
    s.add_dependency(%q<rdoc>, ["> 4.0.0", "~> 4.0"])
    s.add_dependency(%q<bundler>, ["> 1.2.0", "~> 1.2"])
    s.add_dependency(%q<jeweler>, ["> 1.8.4", "~> 1.8"])
    s.add_dependency(%q<simplecov>, ["~> 0.5"])
  end
end
