namespace :skeleton do
  desc "replace all references to 'your project name here' with an actual project name"
  task :rename do
    Dir['**/*', 'a'].each do |path|
      puts path
    end
  end
end
