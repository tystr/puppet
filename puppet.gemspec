# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "puppet"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Puppet Labs"]
  s.date = "2012-08-17"
  s.description = "Puppet, an automated configuration management tool"
  s.email = "puppet@puppetlabs.com"
  s.executables = ["puppet"]
  s.files = ["bin/puppet"]
  s.homepage = "http://puppetlabs.com"
  s.rdoc_options = ["--title", "Puppet - Configuration Management", "--main", "README", "--line-numbers"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "puppet"
  s.rubygems_version = "1.8.24"
  s.summary = "Puppet, an automated configuration management tool"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<facter>, ["~> 1.6"])
    else
      s.add_dependency(%q<facter>, ["~> 1.6"])
    end
  else
    s.add_dependency(%q<facter>, ["~> 1.6"])
  end
end
