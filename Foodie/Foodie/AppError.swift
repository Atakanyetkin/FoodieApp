//
//  AppError.swift
//  Foodie
//
//  Created by atakan yetkin on 5.07.2024.
//

import Foundation

enum AppError: LocalizedError {

    case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
            case .errorDecoding:
                return "Response could not be decoded"
            case .unknownError:
                return "Bruhhh!!! ı have no idea what go on"
            case .invalidUrl:
                return "HEYYYYY!! give me a valid Url"
            case .serverError(let error):
                return error
  
        }
        
  
    }
 
}
