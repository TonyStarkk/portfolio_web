//
//  User.swift
//  App
//
//  Created by Mohamed Ali on 02/11/2018.
//

import Vapor
import FluentSQLite

struct User: SQLiteModel {
    var id: Int?
    
    /// The name of the user
    var name: String
    
    /// The array containing all the project of the user
    var projects: [Project]
    
    /// The array containing all the testimonials of the user
    var testimonials: [Testimonial]

}

/// Allows `User` to be used as a dynamic migration.
extension User: Migration { }

/// Allows `User` to be encoded to and decoded from HTTP messages.
extension User: Content { }

/// Allows `User` to be used as a dynamic parameter in route definitions.
extension User: Parameter { }

