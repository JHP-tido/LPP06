task :default => :spec

desc "Run ./bin/rat.rb "
task :ejecutar do
  sh "ruby -Ilib bin/matriz.rb"
end

desc "Run ./test/tc_rat.rb "
task :test do
  sh "ruby -Ilib test/tc_matriz.rb"

end

desc "Run a specific test, provide a test name or a /regexp/"
task :t, :test_name do |t,args|
 test_name = args[:test_name] || 'test_play'
sh "ruby -w -Ilib test/tc_matriz.rb --name #{test_name}"
end

desc "Run Rspec"
task :spec do
sh "rspec -Ilib spec/matriz_spec.rb --format documentation"
end

