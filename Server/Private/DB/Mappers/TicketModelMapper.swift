//
//  TicketModelMapper.swift
//  TicketsServer
//
//  Created by Andrés Casas on 21/09/25.
//
import Foundation

extension TicketModel {
    func convertModelToListItemDTO() throws -> TicketListItemDTO {
        TicketListItemDTO(
            id: try requireID(),
            title: Self.title,
            description: Self.description,
            date: Self.date,
            imageURL: Self.imageURL
        )
    }
}
