// Generated from /Users/marekfort/Development/reactant_learn/ReactantKlozet/Application/Source/Styles/General.styles.xml
import UIKit
import Reactant
import SnapKit
#if (arch(i386) || arch(x86_64)) && (os(iOS) || os(tvOS))
import ReactantLiveUI
#endif

struct GeneralStyles {
    static func defaultLabel(_ view: UILabel) {
        view.textColor = UIColor(red: 0.247058823529412, green: 0.247058823529412, blue: 0.247058823529412, alpha: 1.0)
    }
}
import UIKit
import Reactant
import SnapKit
#if (arch(i386) || arch(x86_64)) && (os(iOS) || os(tvOS))
import ReactantLiveUI
#endif
import Reactant
import UIKit
// Generated from /Users/marekfort/Development/reactant_learn/ReactantKlozet/Application/Source/Component/Main/DetailRootView.ui.xml
extension DetailRootView: ReactantUI, RootView {
    var edgesForExtendedLayout: UIRectEdge {
        #if (arch(i386) || arch(x86_64)) && (os(iOS) || os(tvOS))
        return ReactantLiveUIManager.shared.extendedEdges(of: self)
        #else
        return []
        #endif
    }
    
    var rui: DetailRootView.RUIContainer {
        return Reactant.associatedObject(self, key: &DetailRootView.RUIContainer.associatedObjectKey) {
            return DetailRootView.RUIContainer(target: self)
        }
    }
    
    var __rui: Reactant.ReactantUIContainer {
        return rui
    }
    
    final class RUIContainer: Reactant.ReactantUIContainer {
        fileprivate static var associatedObjectKey = 0 as UInt8
        
        var xmlPath: String {
            return "/Users/marekfort/Development/reactant_learn/ReactantKlozet/Application/Source/Component/Main/DetailRootView.ui.xml"
        }
        
        var typeName: String {
            return "DetailRootView"
        }
        
        let constraints = DetailRootView.LayoutContainer()
        
        private weak var target: DetailRootView?
        
        fileprivate init(target: DetailRootView) {
            self.target = target
        }
        
        func setupReactantUI() {
            guard let target = self.target else { /* FIXME Should we fatalError here? */ return }
            #if (arch(i386) || arch(x86_64)) && (os(iOS) || os(tvOS))
            ReactantLiveUIManager.shared.register(target) {
                _, _ in
                return false
            }
            #else
            target.addSubview(target.toiletImageView)
            
            target.photoImageView.image = UIImage(named: "NoCamera")
            target.addSubview(target.photoImageView)
            
            target.addSubview(target.imageToiletButton)
            
            let temp_Label_1 = UILabel()
            temp_Label_1.apply(style: GeneralStyles.defaultLabel)
            temp_Label_1.text = "Price"
            temp_Label_1.font = UIFont.systemFont(ofSize: 17.0, weight: UIFont.Weight.heavy)
            target.addSubview(temp_Label_1)
            
            target.priceLabel.textColor = UIColor.red
            target.priceLabel.font = UIFont.systemFont(ofSize: 17.0, weight: UIFont.Weight.heavy)
            target.addSubview(target.priceLabel)
            
            let temp_Container_2 = ContainerView()
            temp_Container_2.backgroundColor = UIColor.black
            target.addSubview(temp_Container_2)
            
            target.addressLabel.apply(style: GeneralStyles.defaultLabel)
            target.addressLabel.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.bold)
            target.addSubview(target.addressLabel)
            
            target.subaddressLabel.apply(style: GeneralStyles.defaultLabel)
            target.subaddressLabel.font = UIFont.systemFont(ofSize: 14.0, weight: UIFont.Weight.medium)
            target.addSubview(target.subaddressLabel)
            
            target.nextToiletButton.setTitleColor(UIColor.red, for: [])
            target.nextToiletButton.setTitle("Next Toilet!", for: [])
            target.addSubview(target.nextToiletButton)
            
            target.toiletImageView.snp.makeConstraints {
                make in
                make.height.equalTo(169.0)
                make.top.equalTo(target)
                make.right.equalTo(target)
                make.left.equalTo(target)
            }
            target.photoImageView.snp.makeConstraints {
                make in
                make.centerX.equalTo(target.toiletImageView)
                make.centerY.equalTo(target.toiletImageView)
            }
            target.imageToiletButton.snp.makeConstraints {
                make in
                make.left.equalTo(target.toiletImageView)
                make.right.equalTo(target.toiletImageView)
                make.top.equalTo(target.toiletImageView)
                make.bottom.equalTo(target.toiletImageView)
            }
            temp_Label_1.snp.makeConstraints {
                make in
                make.left.equalTo(target).offset(12.0)
                make.centerY.equalTo(target.priceLabel)
            }
            target.priceLabel.snp.makeConstraints {
                make in
                make.right.equalTo(target).offset(-12.0)
                make.top.equalTo(target.toiletImageView.snp.bottom).offset(32.0)
            }
            temp_Container_2.snp.makeConstraints {
                make in
                make.width.equalTo(target)
                make.height.equalTo(2.0)
                make.top.equalTo(target.priceLabel.snp.bottom).offset(24.0)
            }
            target.addressLabel.snp.makeConstraints {
                make in
                make.centerX.equalTo(target)
                make.top.equalTo(target.priceLabel.snp.bottom).offset(50.0)
            }
            target.subaddressLabel.snp.makeConstraints {
                make in
                make.centerX.equalTo(target)
                make.top.equalTo(target.addressLabel.snp.bottom).offset(2.0)
            }
            target.nextToiletButton.snp.makeConstraints {
                make in
                make.centerX.equalTo(target)
                make.top.equalTo(target.addressLabel.snp.bottom).offset(30.0)
            }
            #endif
        }
        
        static func destroyReactantUI(target: UIView) {
            #if (arch(i386) || arch(x86_64)) && (os(iOS) || os(tvOS))
            guard let knownTarget = target as? DetailRootView else { /* FIXME Should we fatalError here? */ return }
            ReactantLiveUIManager.shared.unregister(knownTarget)
            #endif
        }
    }
    
    final class LayoutContainer {
    }
    struct Styles {
    }
}
#if (arch(i386) || arch(x86_64)) && (os(iOS) || os(tvOS))
struct GeneratedReactantLiveUIConfiguration: ReactantLiveUIConfiguration {
    let rootDir = "/Users/marekfort/Development/reactant_learn/ReactantKlozet/Application/Source"
    let commonStylePaths: [String] = [
        "/Users/marekfort/Development/reactant_learn/ReactantKlozet/Application/Source/Styles/General.styles.xml",
    ]
    let componentTypes: [String: UIView.Type] = [
        "DetailRootView": DetailRootView.self,
    ]
}
#endif
func activateLiveReload(in window: UIWindow) {
#if (arch(i386) || arch(x86_64)) && (os(iOS) || os(tvOS))
ReactantLiveUIManager.shared.activate(in: window, configuration: GeneratedReactantLiveUIConfiguration())
#endif
}
