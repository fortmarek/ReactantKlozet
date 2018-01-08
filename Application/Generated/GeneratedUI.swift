// Generated from /Users/marekfort/Development/reactant_learn/ReactantKlozet/Application/Source/Styles/General.styles.xml
import UIKit
import Reactant
import SnapKit
#if (arch(i386) || arch(x86_64)) && os(iOS)
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
#if (arch(i386) || arch(x86_64)) && os(iOS)
import ReactantLiveUI
#endif
import Reactant
import UIKit
// Generated from /Users/marekfort/Development/reactant_learn/ReactantKlozet/Application/Source/Component/Main/DetailRootView.ui.xml
extension DetailRootView: ReactantUI, RootView {
    var edgesForExtendedLayout: UIRectEdge {
        #if (arch(i386) || arch(x86_64)) && os(iOS)
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
            #if (arch(i386) || arch(x86_64)) && os(iOS)
            ReactantLiveUIManager.shared.register(target) {
                _, _ in
                return false
            }
            #else
            target.noView.backgroundColor = UIColor.gray
            target.addSubview(target.noView)
            
            target.photoImageView.image = UIImage(named: "NoCamera")
            target.noView.addSubview(target.photoImageView)
            
            target.openingTimesLabel.apply(style: GeneralStyles.defaultLabel)
            target.openingTimesLabel.font = UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightHeavy)
            target.openingTimesLabel.text = "Opening Times"
            target.addSubview(target.openingTimesLabel)
            
            target.openTimesLabel.textColor = UIColor.red
            target.openTimesLabel.text = "Mon-FFri: 11.0:0.0 -  23.0:30.0"
            target.openTimesLabel.font = UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightHeavy)
            target.addSubview(target.openTimesLabel)
            
            target.noView.snp.makeConstraints {
                make in
                make.height.equalTo(169.0)
                make.right.equalTo(target)
                make.top.equalTo(target)
                make.left.equalTo(target)
            }
            target.photoImageView.snp.makeConstraints {
                make in
                make.centerX.equalTo(target.noView)
                make.centerY.equalTo(target.noView)
            }
            target.openingTimesLabel.snp.makeConstraints {
                make in
                make.left.equalTo(target).offset(12.0)
                make.top.equalTo(target.noView.snp.bottom).offset(32.0)
            }
            target.openTimesLabel.snp.makeConstraints {
                make in
                make.centerY.equalTo(target.openingTimesLabel)
                make.right.equalTo(target).offset(-12.0)
            }
            #endif
        }
        
        static func destroyReactantUI(target: UIView) {
            #if (arch(i386) || arch(x86_64)) && os(iOS)
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
#if (arch(i386) || arch(x86_64)) && os(iOS)
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
#if (arch(i386) || arch(x86_64)) && os(iOS)
ReactantLiveUIManager.shared.activate(in: window, configuration: GeneratedReactantLiveUIConfiguration())
#endif
}
