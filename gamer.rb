Shoes.app width: 400, height: 32 do
  Dir["games/*.rb"].each do |sample|
    name = File.basename(sample).capitalize.gsub('_',' ').gsub('.rb', '')
    button(name){ load sample }
  end
end
