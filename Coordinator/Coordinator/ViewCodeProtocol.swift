//
//  ViewCodeProtocol.swift
//  Coordinator
//
//  Created by Eliane Regina Nicácio Mendes on 25/10/22.
//

import Foundation

protocol ViewCodeProtocol: AnyObject {
    func addSubviews()
    func addConstraints()
    func setupViews()
    func callMethodsInCorrectSequence()
}

extension ViewCodeProtocol {
    func callMethodsInCorrectSequence() {
        addSubviews()
        addConstraints()
        setupViews()
    }
}
