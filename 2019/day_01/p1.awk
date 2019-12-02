BEGIN {
	SUM = 0
}
{
	mass = int($1/3) - 2
	SUM += mass
}
END {
	print SUM
}
