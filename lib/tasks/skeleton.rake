namespace :skeleton do
  desc "replace all references to 'your project name here' with an actual project name"
  task :rename, :name do |t, args|
    require 'fileutils'

    project_name_human = args[:name]

    unless project_name_human
      puts 'name argument not provided.  `rake skeleton:rename["The Name Goes Here"]`'
      exit 1
    end

    project_name_underscore = project_name_human.gsub(/([a-z0-9])([A-Z])|[^A-Za-z0-9]+/,'\1_\2').downcase
    project_name_module = project_name_human.gsub(/[^A-Za-z0-9]+/,'')

    regexp = /YOUR_PROJECT_NAME_HERE|your_project_name_here|YourProjectNameHere/
    substitutions = lambda do |match|
      case match.to_s
      when 'YOUR_PROJECT_NAME_HERE' then project_name_human
      when 'your_project_name_here' then project_name_underscore
      when 'YourProjectNameHere'    then project_name_module
      end
    end

    Dir['**/*'].sort.reverse.each do |path|
      if File.file?(path)
        text = File.read(path)
        next unless text.gsub!(regexp, &substitutions)

        # Update text in the file if its different
        File.open(path,'w') do |file|
          puts "updating text in #{path}"
          file.write(text)
        end

        # If the path contains any of the 'your project name here' forms
        if path =~ regexp
          new_path = path.gsub(regexp, &substitutions)
          puts "new_path: #{new_path}"
          if File.file?(path)
            unless File.directory?(File.dirname(new_path))
              puts "creating #{File.dirname(new_path)}"
              FileUtils.mkdir_p(File.dirname(new_path))
            end

            puts "moving #{path} -> #{new_path}"
            FileUtils.mv(path, new_path)

          elsif File.directory?(path) and path !~ /(^|\/)\.+$/

            if File.directory?(new_path)
              puts "removing #{path}"
              FileUtils.rmdir(path)

            else
              puts "moving #{path} -> #{new_path}"
              FileUtils.mv(path, new_path)
            end
          end
        end
      end
    end
  end
end
