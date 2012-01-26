Gem::Specification.new do |s|
  s.name          = 'your_project_name_here'
  s.version       = '0.0.1'
  s.authors       = ['YOUR_NAME_HERE']
  s.email         = ['YOUR_EMAIL_HERE']
  s.homepage      = 'YOUR_PROJECT_URL_HERE'
  s.summary       = %q{TODO: YOUR_GEM_SUMMARY_HERE}
  s.description   = %q{TODO: YOUR_GEM_DESCRIPTION_HERE}
  s.files         = `git ls-files`.split("\n")
  s.executables   = s.files.grep(/^bin\//).map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'redcarpet' # for YARD markdown
  s.add_development_dependency 'rcov'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'yard'
end
