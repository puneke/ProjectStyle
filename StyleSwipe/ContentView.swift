//
//  ContentView.swift
//  StyleSwipe
//
//  Created by Aaron Ho on 17/01/24.
//

import SwiftUI
import CoreData
import UIKit

struct ContentView: View {
    @State private var isShowingImagePicker = false
    @State private var image: Image?

    var body: some View {
        VStack {
            Text("Style Swipe")
                .font(Font.custom("Futura", size:35))
                .padding()

            if let image = image {
                image
                    .resizable()
                    .scaledToFit()
            }


            Button("Upload Photo") {
                isShowingImagePicker = true
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
        }
        .sheet(isPresented: $isShowingImagePicker) {
            ImagePicker(image: $image)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
