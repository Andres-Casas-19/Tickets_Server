//
//  TicketModel.swift
//  TicketsServer
//
//  Created by Andrés Casas on 21/09/25.
//

import Foundation
import Fluent

final class TicketModel: Model, @unchecked Sendable {
    // MARK: - Table name
    static let schema = "tickets"

    // MARK: - Properties
    @ID(key: .id)
    var id: UUID?

    @Field(key: "title")
    var title: String

    @Field(key: "description")
    var description: String

    @Field(key: "date")
    var date: Date

    @OptionalField(key: "image_url")
    var imageURL: String?

    // MARK: - Initializers
    init() {}

    init(
        id: UUID? = nil,
        title: String,
        description: String,
        date: Date,
        imageURL: String? = nil
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.date = date
        self.imageURL = imageURL
    }
}
