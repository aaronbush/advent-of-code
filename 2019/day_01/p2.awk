BEGIN {
	SUM = 0
}
{
	mass = $1
	while (mass > 0) {
		mass = int(mass/3) - 2
		if (mass > 0) SUM += mass
	}
}
END {
	print SUM
}
