//
//  Register1.swift
//  MenuTest2
//
//  Created by Peem on 14/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import Foundation

protocol RegisterAPIManager {
    func register(optionalName: String?,
                  optionalEmail: String?,
                  optionalConfirmEmail: String?,
                  optionalPassword: String?,
                  optionalConfirmPassword: String?)
    func setDelegate(_ delegate: RegisterAPIManagerDelegate?)
}

protocol RegisterAPIManagerDelegate {
    func didRegisterCompletion()
    func didRegisterFailure(error: Error)
}

final class RegisterAPIManagerImplementation: RegisterAPIManager {
    
    var delegate: RegisterAPIManagerDelegate?
    
    let apiClient: RegisterAPIClient
    
    init(apiClient: RegisterAPIClient = RegisterAPIClientImplementation()) {
        self.apiClient = apiClient
    }
    
    func setDelegate(_ delegate: RegisterAPIManagerDelegate?) {
        self.delegate = delegate
    }
    
    func register(optionalName: String?,
                  optionalEmail: String?,
                  optionalConfirmEmail: String?,
                  optionalPassword: String?,
                  optionalConfirmPassword: String?) {
        apiClient.register(optionalName: optionalName,
                           optionalEmail: optionalEmail,
                           optionalConfirmEmail: optionalConfirmEmail,
                           optionalPassword: optionalPassword,
                           optionalConfirmPassword: optionalConfirmPassword)
        { (status, optionalError) in
            if let error = optionalError {
                self.delegate?.didRegisterFailure(error: error)
                return
            }
            
            if status {
                self.delegate?.didRegisterCompletion()
            }
        }
    }
    
}
