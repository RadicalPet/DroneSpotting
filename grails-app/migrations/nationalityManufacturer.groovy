databaseChangeLog = {

	changeSet(author: "jagenau (generated)", id: "1425577134669-1") {
		addColumn(tableName: "registered_drones") {
			column(name: "nationality_manufacturer", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}
}
