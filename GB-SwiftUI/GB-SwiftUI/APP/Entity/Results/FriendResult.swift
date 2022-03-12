//
//  FriendResult.swift
//  GB-SwiftUI
//
//  Created by Igor on 12.03.2022.
//

import Foundation

// MARK: - Welcome
struct FriendResult: Codable {
    let response: FriendResponse
}

// MARK: - Response
struct FriendResponse: Codable {
    let count: Int
    let items: [Friend]
}

// MARK: - Friend
struct Friend: Identifiable, Codable {
    let id: Int
    let firstName, lastName: String
    let canAccessClosed, isClosed: Bool?
    let sex: Int
    let photo50, photo100: String
    let online: Int
    let nickname: String?
    let domain: String
    let city: City?
    let photo200_Orig: String
    let status: String?
    let lastSeen: LastSeen?
    let university: Int?
    let universityName: String?
    let faculty: Int?
    let facultyName: String?
    let graduation: Int?
    let educationForm: String?
    let relation: Int?
    let lists: [Int]?
    let trackCode: String
    let educationStatus: String?
    let relationPartner: RelationPartner?
    let deactivated: String?

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case canAccessClosed = "can_access_closed"
        case isClosed = "is_closed"
        case sex
        case photo50 = "photo_50"
        case photo100 = "photo_100"
        case online, nickname, domain, city
        case photo200_Orig = "photo_200_orig"
        case status
        case lastSeen = "last_seen"
        case university
        case universityName = "university_name"
        case faculty
        case facultyName = "faculty_name"
        case graduation
        case educationForm = "education_form"
        case relation, lists
        case trackCode = "track_code"
        case educationStatus = "education_status"
        case relationPartner = "relation_partner"
        case deactivated
    }
}

// MARK: - City
struct City: Codable {
    let id: Int
    let title: String
}

// MARK: - LastSeen
struct LastSeen: Codable {
    let platform, time: Int
}

// MARK: - RelationPartner
struct RelationPartner: Codable {
    let id: Int
    let firstName, lastName: String

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
    }
}
