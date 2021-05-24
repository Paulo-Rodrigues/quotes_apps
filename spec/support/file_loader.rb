directories = %w(support domain lib)

directories.each do |directory|
  Dir.glob("./#{directory}/**/*.rb").each { |f| require f }
end
