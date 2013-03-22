# A sample Guardfile
# More info at https://github.com/guard/guard#readme
#
ignore %r{^ignored/path/}, /public/
filter /\.txt$/, /.*\.zip/

group :backend do
  guard :rspec, :cli => '--color --format doc' do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^spec/models/.+\.rb$}) { ["spec/models", "spec/acceptance"] }
    watch(%r{^spec/.+\.rb$}) { 'say hello' }
  end
end

group :frontend do
  guard :coffeescript, :output => 'public/javascripts/compiled' do
    watch(%r{^app/coffeescripts/.+\.coffee$})
  end

  guard :livereload do
    watch(%r{^app/.+\.(erb|haml)$})
  end
end
