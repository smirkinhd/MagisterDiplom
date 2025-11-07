import SwiftUI

struct MainMenu: View {
    @State private var selectedTab: Tab = .home

    enum Tab {
        case home, search, favorites, settings
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView {
                VStack {
                    Text("Главная")
                        .font(.largeTitle)
                        .padding()
                        
                    Text("Содержимое первой вкладки")
                }
                .navigationTitle("Главная")
                .navigationBarBackButtonHidden(true)
            }
            .tabItem {
                Image(systemName: "house")
                Text("Главная")
            }
            .tag(Tab.home)

            NavigationView {
                VStack {
                    Text("Поиск")
                        .font(.largeTitle)
                        .padding()
                    Text("Содержимое второй вкладки")
                }
                .navigationTitle("Поиск")
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Поиск")
            }
            .tag(Tab.search)

            NavigationView {
                VStack {
                    Text("Избранное")
                        .font(.largeTitle)
                        .padding()
                    Text("Содержимое третьей вкладки")
                }
                .navigationTitle("Избранное")
            }
            .tabItem {
                Image(systemName: "star")
                Text("Избранное")
            }
            .tag(Tab.favorites)

            NavigationView {
                VStack {
                    Text("Настройки")
                        .font(.largeTitle)
                        .padding()
                    Text("Содержимое четвёртой вкладки")
                }
                .navigationTitle("Настройки")
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Настройки")
            }
            .tag(Tab.settings)
        }
    }
}

