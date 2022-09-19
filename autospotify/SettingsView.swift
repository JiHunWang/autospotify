//
//  SettingsView.swift
//  autospotify
//
//  Created by Ji Hun Wang on 2022/09/18.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {

        List {
            Section(header: Text("Setting")) {
                NavigationLink("Account", destination: AccountView())
                NavigationLink("Language setting", destination: LanguageSettingView())
            }
            
            Section(header: Text("Application")) {
                NavigationLink("About Autospotify app", destination: AboutView())
            }
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
