BEGIN {
	SUM = 0
}
{
	mass = int($1/3) - 2
	SUM += mass
}
END {
	printf SUM
}
