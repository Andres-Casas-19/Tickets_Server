//
//  TicketMigration.swift
//  TicketsServer
//
//  Created by Andrés Casas on 21/09/25.
//

import Fluent

struct TicketMigration: AsyncMigration {
    func prepareDatabase(on database: any Database) async throws {
        try await database.schema("tickets")
            .id()
            .field("title", .string, .required)
            .field("description", .string, .required)
            .field("date", .datetime, .required)
            .field("image_url", .string)
            .create()
    }

    func revertDatabase(on database: any Database) async throws {
        try await database.schema("tickets").delete()
    }
}
