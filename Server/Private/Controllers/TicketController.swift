//
//  TicketController.swift
//  TicketsServer
//
//  Created by Trabajo on 21/09/25.
//

import Vapor
import Fluent

struct TicketController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let tickets: RoutesBuilder = routes.grouped("tickets")
        tickets.get(use: list)
    }

    func list(_ request: Request) async throws -> [TicketListItemDTO] {
        let tickets: TicketModel = try await TicketModel.query(on: req.db)
            .sort(\.$date,
                   .descending)
            .all()
        return try tickets.map { try $0.convertModelToListItemDTO() }
    }
}
