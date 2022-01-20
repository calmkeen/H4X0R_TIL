//
//  ContentView.swift
//  H4X0R
//
//  Created by calmkeen on 2022/01/18.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var networkManger = networkManager()
    
    var body: some View {
        NavigationView {
            List(networkManger.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url)){
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManger.fetchManager()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//let posts = [
//    Post(id: "1", title: "hello"),
//    Post(id: "2", title: "hi"),
//    Post(id: "3", title: "bye")
//]
