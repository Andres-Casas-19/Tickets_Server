import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get("hello") { req async -> String in
        "Hello, world!"
    }

    // MARK: - Endpoints
    try app.register(collection: TicketController())
}
