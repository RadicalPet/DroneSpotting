databaseChangeLog = {

	changeSet(author: "jagenau (generated)", id: "1425601469354-1") {
		addColumn(tableName: "registered_drones") {
			column(name: "image_path", type: "varchar(255)")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-2") {
		modifyDataType(columnName: "capacity", newDataType: "decimal(19,2)", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-3") {
		dropNotNullConstraint(columnDataType: "decimal(19,2)", columnName: "capacity", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-4") {
		modifyDataType(columnName: "combat_radius", newDataType: "decimal(19,2)", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-5") {
		dropNotNullConstraint(columnDataType: "decimal(19,2)", columnName: "combat_radius", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-6") {
		dropNotNullConstraint(columnDataType: "varchar(255)", columnName: "manufacturer", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-7") {
		modifyDataType(columnName: "max_speed", newDataType: "decimal(19,2)", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-8") {
		dropNotNullConstraint(columnDataType: "decimal(19,2)", columnName: "max_speed", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-9") {
		modifyDataType(columnName: "max_weight", newDataType: "decimal(19,2)", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-10") {
		dropNotNullConstraint(columnDataType: "decimal(19,2)", columnName: "max_weight", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-11") {
		dropNotNullConstraint(columnDataType: "varchar(255)", columnName: "powerplant", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-12") {
		modifyDataType(columnName: "release_date", newDataType: "datetime", tableName: "registered_drones")
	}

	changeSet(author: "jagenau (generated)", id: "1425601469354-13") {
		dropNotNullConstraint(columnDataType: "datetime", columnName: "release_date", tableName: "registered_drones")
	}
}
