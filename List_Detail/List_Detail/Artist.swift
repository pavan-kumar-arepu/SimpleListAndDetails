//
//  Artist.swift
//  List_Detail
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import Foundation

struct Artist: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let age: Int
    let awards: [String]
    let shortDesc: String
    let description: String
    let images: [String]
}
