
get '/' do
  @files = Dir.entries("workshops")
  @files.each do |file|
    "<a>#{file}</a>"
  end
end