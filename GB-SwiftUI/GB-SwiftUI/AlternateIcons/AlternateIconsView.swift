//
//  AlternateIconsView.swift
//  GB-SwiftUI
//
//  Created by Igor on 20.07.2022.
//

import SwiftUI

fileprivate enum KCAppIcon: String, CaseIterable {
    case universal = ""
    case kcTest = "5b6e9529-e1f4-4360-b13a-c8803822ccdb"
    case riyadBank = "1fff1ed5-5441-4a5b-ab40-d5e520d7cc10"
    case alRajhiBank = "7cc53e29-eccb-4aad-9298-65b779f35c7d"
    case channelsSTC = "17a7e073-b6e3-35ba-521b-6ffd5a5e4df0"
    case afaaqi = "272d3c55-cd0f-4b73-a5da-28edaa1f8971"
    case Abudawood = "74ba15d9-d1bb-4213-a314-75357d298b50"
    case najm = "810f0f3c-7e3c-44e7-b381-1d81a0ee209e"
    case bankAlbilad = "f044e2d8-e550-4a01-b092-d05644800b8a"
    
    var name: String? {
        switch self {
        case .universal:
            return nil
        default:
            return rawValue
        }
    }
    
    var preview: UIImage {
        //return #imageLiteral(resourceName: "cake@2x.png")
        switch self {
        case .universal:
            //(resourceName: "Icon-App-60x60@2x.png")
            return UIImage(named: "Icon-App-60x60") ?? #imageLiteral(resourceName: "KC-Logo")
        default:
            return #imageLiteral(resourceName: "\(rawValue).png")
        }
    }
    
    
    var current: KCAppIcon {
        KCAppIcon.allCases.first(where: {
            $0.name == UIApplication.shared.alternateIconName
        }) ?? .universal
    }
    
    func setIcon(_ appIcon: KCAppIcon, completion: ((Error?) -> Void)? = nil) {
        guard current != appIcon,
              UIApplication.shared.supportsAlternateIcons else { return }
        
        UIApplication.shared.setAlternateIconName(appIcon.name) { error in
            completion?(error)
        }
    }
    
}

fileprivate struct IconSet: Identifiable {
    let id = UUID()
    let icon: KCAppIcon
}

struct AlternateIconsView: View {
        
    var body: some View {
        let icons = getIcons()
        List(icons) { icon in
            Button {
                setIcon(icon.icon.rawValue)
            } label: {
                if let imageIcon = UIImage(named: icon.icon.rawValue) {
                    Image(uiImage: imageIcon)
                } else {
                    Image(systemName: "photo.circle")
                }
            }.padding(.vertical, 8)
        }.frame(maxWidth: .infinity)
    }
    
    private func setIcon(_ portalID: String) {
        let current: KCAppIcon = {
            KCAppIcon.allCases.first(where: {
                $0.name == UIApplication.shared.alternateIconName
            }) ?? .universal
        }()
        
        guard UIApplication.shared.supportsAlternateIcons,
              let portalIcon = KCAppIcon.allCases.first(where: { $0.name == portalID }),
              current != portalIcon, let name = portalIcon.name else { return }
        
        UIApplication.shared.setAlternateIconName(name) { error in
            if let error = error {
                print("App icon failed to due to \(error.localizedDescription)")
            } else {
                print("App icon changed successfully.")
            }
        }
    }
    
    private func getIcons() -> [IconSet] {
        var set: [IconSet] = []
        KCAppIcon.allCases.forEach {
            set.append(IconSet(icon: $0))
        }
        return set
    }
}

struct AlternateIconsView_Previews: PreviewProvider {
    static var previews: some View {
        AlternateIconsView()
    }
}
