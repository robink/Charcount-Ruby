def CharcountInit(x)
	x = x.split("").sort
	a = Charcountrec(x)
	a.each{|i| puts "Le carcatere #{i[0]} est present #{i[1]} fois"}
end
def Charcountrec(x)
	if x == []
		[]
	else
		char = x[0]
		compteur = 0
		while x[compteur] == char
			compteur += 1
		end
		[[char, compteur]] + Charcountrec(x[compteur..-1])
	end
end
