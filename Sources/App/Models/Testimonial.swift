import FluentSQLite
import Vapor

/// A single entry of a Testimonial list.
struct Testimonial: SQLiteModel {
    /// The unique identifier for this `Testimonial`.
    var id: Int?

    /// The name of the of the testimonial's author
    var name: String
    
    /// The image of the of the testimonial's author
    var image: String

    /// The description of the of the testimonial's author
    var description: String
    
    /// The job of the testimonial's author
    var job: String
    
    /// The company of the testimonial's author
    var company: String
    
}

/// Allows `Testimonial` to be used as a dynamic migration.
extension Testimonial: Migration { }

/// Allows `Testimonial` to be encoded to and decoded from HTTP messages.
extension Testimonial: Content { }

/// Allows `Testimonial` to be used as a dynamic parameter in route definitions.
extension Testimonial: Parameter { }
