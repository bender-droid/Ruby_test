
require 'rexml/document'
require 'date'


# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [$stdin, $stdout].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

now_date = Date.today.to_s

path = File.dirname(__FILE__)
puts path
file_name = "#{path}/files/sample.xml"
puts file_name

file = File.new(file_name, 'r:UTF-8')
doc = REXML::Document.new(file)
file.close

tag = REXML::XPath.first(doc, '//СвСчФакт/')

file_date = tag.attribute('ДатаСчФ').value

puts file_date

tag.attributes['ДатаСчФ'] = now_date
file_date = tag.attribute('ДатаСчФ').value

puts file_date

# new_file = File.new('files/new_sample.xml', 'w:UTF-8')
# doc.write(new_file, 2)
# new_file.close


