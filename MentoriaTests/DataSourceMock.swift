//
//  DataSourceMock.swift
//  MentoriaTests
//
//  Created by Lucas Inocencio on 28/10/20.
//

import Foundation

@testable import Mentoria

class DataSourceMock: DataSource {
    var isLoad: Bool = false
    var isSave: Bool = false
    
    
    func save() {
        isSave = true
    }
    
    func load() {
        isLoad = true
    }
    
}
