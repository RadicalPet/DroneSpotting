databaseChangeLog = {

	changeSet(author: "jagenau (generated)", id: "1425864817286-1") {
		createTable(tableName: "chatter") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "chatterPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "chat_id", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(64)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425864817286-2") {
		createIndex(indexName: "chat_id_uniq_1425864817183", tableName: "chatter", unique: "true") {
			column(name: "chat_id")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425864817286-3") {
		createIndex(indexName: "name_uniq_1425864817185", tableName: "chatter", unique: "true") {
			column(name: "name")
		}
	}
}
