databaseChangeLog = {

	changeSet(author: "jagenau (generated)", id: "1425578062677-1") {
		dropNotNullConstraint(columnDataType: "varchar(255)", columnName: "nationality_manufacturer", tableName: "registered_drones")
	}
}
