//
//  ContentView.swift
//  csxl-spotify
//
//  Created by Samuel Shi on 9/30/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let verticalSpacing: CGFloat = 20
        let horizontalPadding: CGFloat = 24
        let verticalPadding: CGFloat = 20
        
        VStack(spacing: verticalSpacing) {
            topBar
            Spacer()
            albumArt
            Spacer()
            trackInfo
            timeControls
            playbackControls
            Spacer()
            bottomBar
        }
        // padding
        // background
        .preferredColorScheme(.dark)
    }
    
    @ViewBuilder private var topBar: some View {
        let topBarButtonWidth: CGFloat = 20
        
        Text("Top Bar with Icons")
    }
    
    @ViewBuilder private var albumArt: some View {
        Text("Album Art")
    }
    
    @ViewBuilder private var trackInfo: some View {
        let heartButtonWidth: CGFloat = 24
        
        Text("Track button information")
    }
    
    @ViewBuilder private var timeControls: some View {
        let verticalSpacing: CGFloat = 2
        
        VStack(spacing: verticalSpacing) {
            SpotifySlider(value: .constant(11), maxValue: 260)
            
            Text("Song time information")
        }
    }
    
    @ViewBuilder private var playbackControls: some View {
        let smallPlaybackButtonWidth: CGFloat = 24
        let mediumPlaybackButtonWidth: CGFloat = 32
        let largePlaybackButtonWidth: CGFloat = 64
        
        Text("Playback Controls")
    }
    
    @ViewBuilder private var bottomBar: some View {
        let verticalSpacing: CGFloat = 40
        let bottomBarButtonWidth: CGFloat = 16
        
        Text("Bottom Bar Button")
    }
    
    private var backgroundGradient: LinearGradient {
        let first = Color.comeTogetherLightBlue
        let second = Color.comeTogetherDarkBlue
                
        return LinearGradient(colors: [first, second], startPoint: .top, endPoint: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
