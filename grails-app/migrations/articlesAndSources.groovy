databaseChangeLog = {

	changeSet(author: "jagenau (generated)", id: "1425673312590-1") {
		createTable(tableName: "articles") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "articlesPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "content", type: "varchar(255)")

			column(name: "is_published", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "published", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "strike_id", type: "integer")

			column(name: "title", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425673312590-2") {
		createTable(tableName: "registered_arms_sources") {
			column(name: "registered_arms_sources_id", type: "bigint")

			column(name: "sources_id", type: "bigint")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425673312590-3") {
		createTable(tableName: "sources") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "sourcesPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "url", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "articles_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425673312590-7") {
		createIndex(indexName: "FK_h4fnbxtgdabaquuyw7easiaem", tableName: "registered_arms_sources") {
			column(name: "registered_arms_sources_id")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425673312590-8") {
		createIndex(indexName: "FK_loay6806bulymow6pbgosqulu", tableName: "registered_arms_sources") {
			column(name: "sources_id")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425673312590-9") {
		createIndex(indexName: "FK_mw2mjde543uadti5j3fcxm6pi", tableName: "sources") {
			column(name: "articles_id")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425673312590-4") {
		addForeignKeyConstraint(baseColumnNames: "registered_arms_sources_id", baseTableName: "registered_arms_sources", constraintName: "FK_h4fnbxtgdabaquuyw7easiaem", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "registered_arms", referencesUniqueColumn: "false")
	}

	changeSet(author: "jagenau (generated)", id: "1425673312590-5") {
		addForeignKeyConstraint(baseColumnNames: "sources_id", baseTableName: "registered_arms_sources", constraintName: "FK_loay6806bulymow6pbgosqulu", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "sources", referencesUniqueColumn: "false")
	}

	changeSet(author: "jagenau (generated)", id: "1425673312590-6") {
		addForeignKeyConstraint(baseColumnNames: "articles_id", baseTableName: "sources", constraintName: "FK_mw2mjde543uadti5j3fcxm6pi", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "articles", referencesUniqueColumn: "false")
	}
}
