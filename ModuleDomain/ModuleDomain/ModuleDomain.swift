//
//  ModuleDomain.swift
//  ModuleDomain
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 18/01/24.
//

import SwiftDate

public class ModuleDomain {
    
    public init(){}
    
    public func tryModuleDomain() {
        let ROOT_DATE = "2010-05-20 15:30:00".toDate()
        print(ROOT_DATE ?? "NODATE")
    }
}
