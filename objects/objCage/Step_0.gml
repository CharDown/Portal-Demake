if (setSensor) {
	fixture = physics_fixture_create()
	physics_fixture_set_sensor(fixture,true)
	physics_fixture_delete(fixture)
} else if (!setsensor) {
	fixture = physics_fixture_create()
	physics_fixture_set_sensor(fixture,true)
	physics_fixture_delete(fixture)	
}