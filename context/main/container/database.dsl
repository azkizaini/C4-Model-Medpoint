cDatabase = container "Database" {
    description "Stores all data for the application."
    tags "Database"
    technology "PostgreSQL"
/*
    comDatabase = component "database" {
        desctription "Handle database"
        ->ssExternalMessaging "Notification after a success auth"
    }
*/
    !include database
}
