require "./lib/wikipedia.rb"

class CallWikiApi

  wiki = Wikipedia.new()
  wiki.get(ARGV[0])

end