//
//  CustomView.swift
//  Coordinator
//
//  Created by Eliane Regina Nicácio Mendes on 25/10/22.
//

import UIKit

protocol CustomViewDelegate: AnyObject {
    func buttonDidTouched (sender: UIButton)
}

class CustomView: UIView {
    // MARK: - Properties
    weak var delegate: CustomViewDelegate?
    
    // MARK: - Properties
    private (set) lazy var button: UIButton = {
        let button = UIButton (frame: .zero)
        button.setTitle("TAP ME", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget (self, action: #selector(buttonDidTouched(sender:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints=false
        return button
    } ()
                           
    // MARK: - Initializers
    init (delegate: CustomViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        callMethodsInCorrectSequence()
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
}

//MARK: - ViewCodeProtocol
extension CustomView: ViewCodeProtocol {
    func addConstraints() {
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 44),
            button.widthAnchor.constraint(equalToConstant: 88),
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    
    func setupViews() {
        self.backgroundColor = .white
        button.layer.cornerRadius = 8
    }
    
    func addSubviews() {
        self.addSubview(button)
    }
}

//MARK: - Actions
extension CustomView {
    
    @objc
    func buttonDidTouched(sender: UIButton) {
        delegate?.buttonDidTouched(sender: sender)
    }
}
