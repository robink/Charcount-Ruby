def charCountInit(x)
	x = x.chars.sort
	a = charCountRec(x)
	a.each{|i| puts "Le carcatere #{i[0]} est present #{i[1]} fois"}
end
def charCountRec(x)
	if x == []
		[]
	else
		char = x[0]
		compteur = 0
		while x[compteur] == char
			compteur += 1
		end
		[[char, compteur]] + charCountRec(x[compteur..-1])
	end
end
