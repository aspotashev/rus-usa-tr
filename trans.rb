#!/usr/bin/ruby

# http://russian.moscow.usembassy.gov/transliteration.html

tr = {
' ' => ' ',
'А' => 'A',
'Б' => 'B',
'В' => 'V',
'Г' => 'G',
'Д' => 'D',
'Ж' => 'ZH',
'З' => 'Z',
'И' => 'I',
'Й' => 'Y',
'К' => 'K',
'Л' => 'L',
'М' => 'M',
'Н' => 'N',
'О' => 'O',
'П' => 'P',
'Р' => 'R',
'С' => 'S',
'Т' => 'T',
'У' => 'U',
'Ф' => 'F',
'Х' => 'KH',
'Ц' => 'TS',
'Ч' => 'CH',
'Ш' => 'SH',
'Щ' => 'SHCH',
'Ъ' => '',
'Ы' => 'Y',
'Ь' => '',
'Э' => 'E',
'Ю' => 'YU',
'Я' => 'YA',
}

input = gets.strip.split(//u)

input.each_index do |index|
	sym = input[index]

	if 'ЕЁ'.split(//u).include?(sym)
		prev = input[index - 1]
		if not prev or 'АЕЁИОУЪЫЬЭЮЯ'.split(//u).include?(prev)
			res = 'YE'
		else
			res = 'E'
		end
	else
		STDERR.puts 'ERROR: symbol not found (' + sym + ')' if not tr[sym]
		res = tr[sym]
	end

	print res
end
puts

