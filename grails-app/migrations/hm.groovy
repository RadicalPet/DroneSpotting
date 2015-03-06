databaseChangeLog = {

	changeSet(author: "jagenau (generated)", id: "1425671190847-1") {
		addColumn(tableName: "registered_drones") {
			column(name: "nationality_manufacturer", type: "varchar(255)")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425671190847-2") {
		addNotNullConstraint(columnDataType: "varchar(255)", columnName: "email", tableName: "user")
	}

	changeSet(author: "jagenau (generated)", id: "1425671190847-3") {
		createIndex(indexName: "email_uniq_1425671190743", tableName: "user", unique: "true") {
			column(name: "email")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425671190847-4") {
		dropTable(tableName: "member")
	}
}
