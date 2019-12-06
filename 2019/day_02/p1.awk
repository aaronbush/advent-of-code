BEGIN {
	numItems = 0
}
{
	numItems = split($0, ints, ",")
}
END { 
	pos = 1
	while (pos < numItems) {
		opcode = ints[pos]
		p1 = ints[pos + 1] + 1
		p2 = ints[pos + 2] + 1
		r1 = ints[pos + 3] + 1
		if (opcode ~ "1") {
			#print "add " ints[p1] " + " ints[p2] " store at " r1
			ints[r1] = ints[p1] + ints[p2]
		} else if (opcode ~ "2") {
			#print "multiply " ints[p1] " * " ints[p2] " store at " r1
			ints[r1] = ints[p1] * ints[p2]
		} else if (opcode ~ "99") {
			#print "terminate"
			break
		}
		pos += 4
	}
	numItems = length(ints)
	for (i = 1; i <= numItems; i++) {
		printf("%s,", ints[i])
	}
}
