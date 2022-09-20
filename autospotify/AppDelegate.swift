//
//  AppDelegate.swift
//  autospotify
//
//  Created by Ji Hun Wang on 2022/09/19.
//

import Foundation
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate, SPTAppRemoteDelegate, SPTAppRemotePlayerStateDelegate {
    
    lazy var configuration = SPTConfiguration(
        clientID: spotifyClientId,
        redirectURL: redirectUri
    )
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        let parameters = appRemote.authorizationParameters(from: url)
        
        if let access_token = parameters? [SPTAppRemoteAccessTokenKey] {
            appRemote.connectionParameters.accessToken = access_token
        } else if let error_description = parameters? [SPTAppRemoteErrorDescriptionKey] {
            print(error_description)
        }
        return true
    }
    
    func appRemoteDidEstablishConnection(_ appRemote: SPTAppRemote) {
        print("connected")
    }
    
    func appRemote(_ appRemote: SPTAppRemote, didDisconnectWithError error: Error?) {
        print("disconnected")
    }
    
    func appRemote(_ appRemote: SPTAppRemote, didFailConnectionAttemptWithError error: Error?) {
        print("failed, crashing")
    }
    
    func playerStateDidChange(_ playerState: SPTAppRemotePlayerState) {
        print("player state changed")
    }
    
    lazy var appRemote: SPTAppRemote = {
        let appRemote = SPTAppRemote(configuration: self.configuration, logLevel: .debug)
        appRemote.connectionParameters.accessToken = accessTokenKey
        appRemote.delegate = self
        return appRemote
    }()
}
