$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = "audite-lib"
  s.version       = "0.4.5"
  s.author        = "Matthias Georgi"
  s.email         = "matti.georgi@gmail.com"
  s.homepage      = "http://georgi.github.com/audite"
  s.summary       = "Portable mp3 player"
  s.description   = "Portable mp3 player built on mpg123 and portaudio"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"

  s.extra_rdoc_files = ["README.md"]

  s.extensions << 'ext/mpg123/extconf.rb'
  s.extensions << 'ext/portaudio/extconf.rb'
end
