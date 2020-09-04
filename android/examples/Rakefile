require 'rake'
require 'parallel'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:first) do |task|
  ENV['CONFIG_NAME'] ||= "first"
  task.cucumber_opts = ['--format=pretty', '--require run-first-test/', 'run-first-test/']
end

task :default => :first

Cucumber::Rake::Task.new(:local) do |task|
  task.cucumber_opts = ['--format=pretty', '--require run-local-test/', 'run-local-test/', 'CONFIG_NAME=local']
end

Cucumber::Rake::Task.new(:distinct) do |task|
  ENV['CONFIG_NAME'] ||= 'parallel'
  task.cucumber_opts = ['--format=pretty', '--require run-parallel-tests/', 'run-parallel-tests/']
end

task :parallel do |t, args|
  @num_parallel = 2

  Parallel.map([*1..@num_parallel], :in_processes => @num_parallel) do |task_id|
    ENV["TASK_ID"] = (task_id - 1).to_s
    ENV['name'] = "parallel_test"
    ENV['CONFIG_NAME'] = "parallel"

    Rake::Task["distinct"].invoke
    Rake::Task["distinct"].reenable
  end
end


task :test do |t, args|
  Rake::Task["first"].invoke
  Rake::Task["local"].invoke
  Rake::Task["parallel"].invoke
end
