# `YOUR_PROJECT_NAME_HERE`

This skeleton.rb repo exists to help bootstrap development effort on new
projects.

 * `./.autotest` contains a basic configuration to map lib files to their spec
   files and also runs rcov when suite goes green.
 * `./.gh-pages` this folder will contain the repository's `gh-pages` submodule.
 * `./.rspec` turns colors on and uses a good default formatter.
 * `./Rakefile` includes all `./lib/tasks/*.rake` files and sets up rake tasks from
   supporting gems like RSpec, RCov and Cucumber.
 * `./Gemfile` has a simple reference to `gemspec`
 * `./Guardfile` is set up to run rspec when `lib` and `spec` files change.
 * `./your_project_name_here.gemspec` is where dependencies are managed and
   allows you to package your project up as a rubygem.
 * `./docs`
 * `./lib/your_project_name_here.rb`
 * `./lib/tasks/docs.rake` tasks for generating documentation.
 * `./lib/tasks/github_pages.rake` tasks for setting up a submodule and pushing
   to the remote `gh-pages` branch of the repository.
 * `./spec/spec_helper.rb`
 * `./spec/your_project_name_here_spec.rb`

