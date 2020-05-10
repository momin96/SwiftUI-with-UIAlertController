//
//  ContentView.swift
//  SwiftUI with UIAlertController
//
//  Created by Nasir Ahmed Momin on 03/05/20.
//  Copyright © 2020 Nasir Ahmed Momin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert: Bool = false
    @State var textSting: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    Text(self.textSting)
                }
                
                if self.showAlert {
                    
                    AlertControlView(textString: $textSting,
                                     showAlert: $showAlert,
                                     title: "Title goes here",
                                     message: "Message goes here")
                }
            }
                
            .navigationBarTitle("UIAlertController ", displayMode: .inline)
            .navigationBarItems(
                trailing:
                VStack {
                    Button(action: {
                        self.textSting = ""
                        self.showAlert = true
                    })
                    {
                        Text("Show")
                    }
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
