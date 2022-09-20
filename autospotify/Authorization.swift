//
//  Authorization.swift
//  autospotify
//
//  Created by Ji Hun Wang on 2022/09/19.
//  Per documentation on Spotify Developers API and jrasmusson's GitHub code
//

import Foundation

/* Basic authorization information */

let accessTokenKey = "access-token-key"
let redirectUri = URL(string:"autospotify://")!
let spotifyClientId = "spotify-client-id"
let spotifyClientSecretKey = "secret-client-secret-key"


/* Permissions that are only applicable to this app's functionality
 * `https://developer.spotify.com/documentation/general/guides/authorization/scopes/`
 */

let scopes: SPTScope = [.ugcImageUpload, .playlistReadCollaborative, .appRemoteControl, .userReadEmail, .playlistModifyPublic, .userLibraryModify, .userFollowRead, .playlistReadPrivate, .userReadPrivate, .playlistModifyPrivate]
let scopesString = ["ugc-image-upload", "playlist-read-collaborative", "app-remote-control", "user-read-email", "playlist-modify-public", "user-library-modify", "user-follow-read", "playlist-read-private", "user-read-private", "playlist-modify-private"]
