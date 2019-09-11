//
//  Project.swift
//  App
//
//  Created by Mohamed Ali on 02/11/2018.
//

import Vapor
import FluentSQLite

enum ProjectType: Int, Codable {
    case iOS
    case web
    case android
    case iOSAndAndroid
}

struct Project: SQLiteModel {
    var id: Int?
    
    /// The title of the project
    var title: String
    
    /// The description of the project
    var description: String
    
    /// The app icon of the project
    var appIcon: String
    
    /// description's role of the user in the project
    var role: String
    
    /// The app link
    var appLink: String

    /// technologie used in the project
    var technologie: String
    
    /// The image of the project
    var image: String
    
    /// The link of the project
    var link: String

    /// The project type
    var type: ProjectType
    
    let isIos: Bool = true
}

/// Allows `Project` to be used as a dynamic migration.
extension Project: Migration { }

/// Allows `Project` to be encoded to and decoded from HTTP messages.
extension Project: Content { }

/// Allows `Project` to be used as a dynamic parameter in route definitions.
extension Project: Parameter { }

