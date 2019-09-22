
import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    
    func setupNavBar() {
        let prefixName = "PD."
        let navLabel = UILabel()
        let navTitle = NSMutableAttributedString(string: prefixName,
                                                 attributes:[
                                                    NSAttributedString.Key.foregroundColor: UIColor.black,
                                                    NSAttributedString.Key.font: UIFont.systemFont(
                                                        ofSize: FontSize.xl.rawValue,
                                                        weight: UIFont.Weight.light
                                                    )
        ])
        
        let photoViewerText = "PhotoViewer"
        navTitle.append(NSMutableAttributedString(string: photoViewerText, attributes:[
            NSAttributedString.Key.font: UIFont.systemFont(
                ofSize: FontSize.xl.rawValue,
                weight: UIFont.Weight.bold
            ),
            NSAttributedString.Key.foregroundColor: UIColor.black]))
        
        navLabel.attributedText = navTitle
        navigationItem.titleView = navLabel
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "",
                                                           style: .plain,
                                                           target: nil,
                                                           action: nil)
        navigationItem.backBarButtonItem?.tintColor = UIColor.black
    }
}
