text = '郵便番号123-4567'
puts text[/\d{3}-\d{4}/]

text = '誕生日は1997年3月21日'
puts text[/(?<year>\d+)年(?<mounth>\d+)月(?<day>\d+)日/, :day]

puts %r{https://example\.com}
