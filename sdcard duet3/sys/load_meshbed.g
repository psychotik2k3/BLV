G32
if heat.heaters[0].current>95
	M118 S"loading heightmap_abs" 
	G29 S1 P"heightmap_abs.csv"
elif heat.heaters[0].current>75
	M118 S"loading heightmap_PETG"
	G29 S1 P"heightmap_petg.csv"
elif heat.heaters[0].current>55
	M118 S"loading heightmap_pla"
	G29 S1 P"heightmap_pla.csv"
else
	M118 S"loading heightmap_cold"
	G29 S1 P"heightmap_cold.csv"