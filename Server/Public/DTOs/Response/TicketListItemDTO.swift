//
//  TicketListItemDTO.swift
//  TicketsServer
//
//  Created by Trabajo on 21/09/25.
//

import Foundation
import Vapor

struct TicketListItemDTO: Content {
    let id: UUID
    let title: String
    let description: String
    let date: Date
    let imageURL: String?
}
