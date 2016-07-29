guard 'rspec', cmd: "bundle exec rspec", :all_after_pass => false do
  # watch /lib/ files
  watch(%r{^lib/coolboy/.+\.rb})

# watch /spec/ files
  watch(%r{^spec/(.+).rb$}) do |m|
    "spec/#{m[1]}.rb"
  end
  watch('lib/coolboy/')
  watch('lib/coolboy/hello.rb')
end

