#!/usr/bin/ruby

#А, а	A	 	К, к	K	 	Х, х	KH
#Б, б	B	 	Л, л	L	 	Ц, ц	TS
#В, в	V	 	М, м	M	 	Ч, ч	CH
#Г, г	G	 	Н, н	N	 	Ш, ш	SH
#Д, д	D	 	О, о	O	 	Щ, щ	SHCH
#Е, е	E, YE	 	П, п	P	 	ъ	 
#Ё, e	E, YE	 	Р, р	R	 	ы	Y
#Ж, ж	ZH	 	С, с	S	 	ь	 
#З, з	Z	 	Т, т	T	 	Э, э	E
#И, и	I	 	У, у	U	 	Ю, ю	YU
#Й, й	Y	 	Ф, ф	F	 	Я, я	YA


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
'Ы' => 'Y',
'Э' => 'E',
'Ю' => 'YU',
'Я' => 'YA',
}

#input = gets.strip.split(//u)
#p input

gets.strip.split(//u).each do |sym|
	STDERR.puts 'ERROR: symbol not found (' + sym + ')' if not tr[sym]

	print tr[sym]
end
puts

