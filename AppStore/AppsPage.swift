//
//  AppsPage.swift
//  AppStore
//
//  Created by Zeeshan A Zakaria on 2021-01-24.
//

import Foundation
import SwiftUI

struct AppsView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = .clear
//        appearance.backgroundColor = .white
        appearance.backgroundEffect = .init(style: .light)
        UINavigationBar.appearance().standardAppearance = appearance
    }
    
    @Environment(\.openURL) var openURL
    @State private var midY: CGFloat = 0.0
    @State private var headerText = "Apps1"
    var iPhoneStarterKit = AppsStarterKit()
    var topFreeApps = TopFreeApps()
    var numOfRow = 3
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                HStack {
                    HeaderView(headerText: self.headerText, midY: $midY)
                        .frame(height: 40, alignment: .leading)
                        .padding(.top, 15)
                    
                    HStack {
                        Button(action: {
                            print("Profile button pressed")
                        }) {
                            Image(systemName: "person.crop.circle").resizable()
                                .frame(width: 40, height: 40, alignment: .trailing)
                                .padding(.top, 15)
                        }
                    }
                }.padding([.leading, .trailing])
                
                Divider()
                
                
                    HStack(spacing: 12) {
//                        FeaturedPostView(captionText: "GET STARTED", titleText: "The Sims Freeplay", subTitleText: "Bonjour From Paris", image: "sample-app-1")
//                        FeaturedPostView(captionText: "FEATURED", titleText: "Daily Food Tracker", subTitleText: "Eat Healthy", image: "sample-app-2")
//                        FeaturedPostView(captionText: "STAT UP-TO-DATE", titleText: "COVID Alert", subTitleText: "COVID-19 Updates", image: "sample-app-3")
//                        FeaturedPostView(captionText: "NEW FEATURES", titleText: "Sportsnet", subTitleText: "All the sports all the time", image: "sample-app-4")
//                        FeaturedPostView(captionText: "GREAT ON APPLE WATCH", titleText: "HockeyTracker", subTitleText: "Performance stats at a glance", image: "sample-app-5")
                        ZStack { }.frame(width: 300, height: 230).background(Color.green)
                        ZStack { }.frame(width: 300, height: 230).background(Color.yellow)
                        ZStack { }.frame(width: 300, height: 230).background(Color.blue)
                        ZStack { }.frame(width: 300, height: 230).background(Color.green)
                        ZStack { }.frame(width: 300, height: 230).background(Color.yellow)
                    }.frame(width: 350)
//                    .background(Color.purple).frame(width: 300, height: 230)
                    .modifier(ScrollingHStackModifier(items: 5, itemWidth: 300, itemSpacing: 12))
                
                
                Divider()
                Group {
                    VStack(alignment: .leading) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("iPhone Starter Kit").font(.title2).bold()
                            }
                            Spacer()
                            Button(action: self.loadProfile, label: {
                                Text("See All")
                            })
                        }
                    }.padding([.leading, .trailing, .top])
                    HorizontalScrollView(items: self.iPhoneStarterKit.listOfApps)
                    Divider()
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Top Free Apps").font(.title2).bold()
                        }
                        Spacer()
                        Button(action: self.loadProfile, label: {
                            Text("See All")
                        })
                    }
                }.padding([.leading, .trailing, .top])
                
                HorizontalScrollView(items: self.topFreeApps.listOfApps)
                Group {
                    Divider()
                    QuickLinksView()
                    BottomButtonsView()
                    Divider()
                    Button(action: {
                        openURL(URL(string: "https://www.apple.com")!)
                    }) {
                        HStack(spacing: 5) {
                            Text("Terms & Conditions")
                            Image(systemName: "chevron.right").font(.caption)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.gray)
                        .cornerRadius(10)
                    }.padding()
                }
                
            }
            .navigationBarTitle(self.midY < 70 ? Text(self.headerText) : Text(""), displayMode: .inline)
        }
    }
    
    func loadProfile() {
        
    }
}

struct AppsStarterKit {
    var listOfApps = [
        AppData(id: UUID(), title: "PicsArt Photo & Video Editor", subTitle: "Sample App 1", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Splice Video Editor", subTitle: "Sample App 2", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SnapChat", subTitle: "Sample App 3", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Magisto Video Editor", subTitle: "Sample App 4", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SWEAT: Fitness App for Women", subTitle: "Sample App 5", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Calm: Sleep, Meditate, Relax", subTitle: "Sample App 6", image: "sample-logo-1"),
        AppData(id: UUID(), title: "PicsArt Photo & Video Editor", subTitle: "Sample App 7", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Splice Video Editor", subTitle: "Sample App 8", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SnapChat", subTitle: "Sample App 3", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Magisto Video Editor", subTitle: "Sample App 9", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SWEAT: Fitness App for Women", subTitle: "Sample App 10", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Calm: Sleep, Meditate, Relax", subTitle: "Sample App 11", image: "sample-logo-1"),
        AppData(id: UUID(), title: "PicsArt Photo & Video Editor", subTitle: "Sample App 12", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Splice Video Editor", subTitle: "Sample App 13", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SnapChat", subTitle: "Sample App 14", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Magisto Video Editor", subTitle: "Sample App 15", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SWEAT: Fitness App for Women", subTitle: "Sample App 16", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Calm: Sleep, Meditate, Relax", subTitle: "Sample App 17", image: "sample-logo-1"),
        AppData(id: UUID(), title: "PicsArt Photo & Video Editor", subTitle: "Sample App 18", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Splice Video Editor", subTitle: "Sample App 19", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SnapChat", subTitle: "Sample App 20", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Magisto Video Editor", subTitle: "Sample App 21", image: "sample-logo-1"),
        AppData(id: UUID(), title: "SWEAT: Fitness App for Women", subTitle: "Sample App 22", image: "sample-logo-1"),
        AppData(id: UUID(), title: "Calm: Sleep, Meditate, Relax", subTitle: "Sample App 23", image: "sample-logo-1")
    ]
}

struct TopFreeApps {
    var listOfApps = [
        AppData(id: UUID(), title: "Procreate Pocket", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "TouchRetouch", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iMotoneige", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Da Vinci Eye", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iQuad", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Forest Stay Focused", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Procreate Pocket", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "TouchRetouch", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iMotoneige", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Da Vinci Eye", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iQuad", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Forest Stay Focused", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Procreate Pocket", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "TouchRetouch", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iMotoneige", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Da Vinci Eye", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "iQuad", subTitle: "Sample App 2", image: "sample-logo-2"),
        AppData(id: UUID(), title: "Forest Stay Focused", subTitle: "Sample App 2", image: "sample-logo-2")
    ]
}

struct AppData: Identifiable {
    var id = UUID()
    var title = String()
    var subTitle = String()
    var image = String()
}

struct AppsView_Previews: PreviewProvider {
    static var previews: some View {
        AppsView()
    }
}
