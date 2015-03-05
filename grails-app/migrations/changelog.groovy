databaseChangeLog = {

	changeSet(author: "jagenau (generated)", id: "1425437396043-1") {
		createTable(tableName: "drone_armament") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "drone_armamenPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "registered_arms_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "registered_drones_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425437396043-2") {
		createTable(tableName: "registered_arms") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "registered_arPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "category", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "diameter", type: "double precision") {
				constraints(nullable: "false")
			}

			column(name: "guidance", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "length", type: "double precision") {
				constraints(nullable: "false")
			}

			column(name: "model", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "range", type: "double precision") {
				constraints(nullable: "false")
			}

			column(name: "warhead", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "weight", type: "double precision") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425437396043-3") {
		createTable(tableName: "registered_drones") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "registered_drPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "capacity", type: "decimal(19,2)") {
				constraints(nullable: "false")
			}

			column(name: "combat_radius", type: "decimal(19,2)") {
				constraints(nullable: "false")
			}

			column(name: "country", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "manufacturer", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "max_speed", type: "decimal(19,2)") {
				constraints(nullable: "false")
			}

			column(name: "max_weight", type: "decimal(19,2)") {
				constraints(nullable: "false")
			}

			column(name: "model", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "powerplant", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "release_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425437396043-6") {
		createIndex(indexName: "FK_gdvf8veahx3sgew4h6vimmcqt", tableName: "drone_armament") {
			column(name: "registered_drones_id")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425437396043-7") {
		createIndex(indexName: "FK_go5qm1rh8wvrg5b55t7diqct8", tableName: "drone_armament") {
			column(name: "registered_arms_id")
		}
	}

	changeSet(author: "jagenau (generated)", id: "1425437396043-4") {
		addForeignKeyConstraint(baseColumnNames: "registered_arms_id", baseTableName: "drone_armament", constraintName: "FK_go5qm1rh8wvrg5b55t7diqct8", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "registered_arms", referencesUniqueColumn: "false")
	}

	changeSet(author: "jagenau (generated)", id: "1425437396043-5") {
		addForeignKeyConstraint(baseColumnNames: "registered_drones_id", baseTableName: "drone_armament", constraintName: "FK_gdvf8veahx3sgew4h6vimmcqt", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "registered_drones", referencesUniqueColumn: "false")
	}

	include file: 'extremeMigration.groovy'

	include file: 'springSecurityMigration.groovy'

	include file: 'springSecurityMigration2.groovy'
}
