# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bicho/version"

Gem::Specification.new do |s|
  s.name        = "bicho"
  s.version     = Bicho::VERSION
  s.authors     = ["Duncan Mac-Vicar P."]
  s.email       = ["dmacvicar@suse.de"]
  s.homepage    = ""
  s.summary     = %q{Library to access bugzilla}
  s.description = %q{Library to access bugzilla}

  s.add_dependency("inifile", ["~> 0.4.1"])
  s.add_dependency("trollop", [">= 1.16"])
  s.add_dependency("highline", ["~> 1.6.2"])


  s.rubyforge_project = "bicho"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
