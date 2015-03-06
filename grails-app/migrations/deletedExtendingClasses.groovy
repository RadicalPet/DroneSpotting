databaseChangeLog = {

	changeSet(author: "jagenau (generated)", id: "1425659576441-1") {
		createIndex(indexName: "email_uniq_1425659576143", tableName: "user", unique: "true") {
			column(name: "email")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425659576441-2") {
		dropColumn(columnName: "class", tableName: "user")
	}
}
