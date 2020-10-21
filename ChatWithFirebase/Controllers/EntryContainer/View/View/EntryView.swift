//
//  EntryView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 20.10.2020.
//

import UIKit

class EntryView: UIView {
	
	var changeOperationButton: UIButton = UIButton()

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.decorate(with: GradientViewDecorator(colors: [#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor, #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).cgColor], startPoint: CGPoint(x: 0, y: 0), stopPoint: CGPoint(x: 1, y: 1), frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)))
		setupChangeOperationButton()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupChangeOperationButton() {
		addSubview(changeOperationButton)

		changeOperationButton.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([changeOperationButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
									 changeOperationButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30)])
		changeOperationButton.setTitle(Labels.createAcc, for: .normal)
		changeOperationButton.setTitleColor(.white, for: .normal)
		changeOperationButton.setTitleColor(UIColor.white.withAlphaComponent(0.4) , for: .highlighted)
		changeOperationButton.backgroundColor = .clear
	}
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
