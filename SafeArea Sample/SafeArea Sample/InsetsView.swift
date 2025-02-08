//
// Created for SafeArea Sample
// by  Stewart Lynch on 2023-05-24
// Using Swift 5.0
// Running on macOS 13.3
//
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct InsetsView: View {
  @State private var todos: [String] = Array(repeating: "Todo", count: 50).enumerated().map {"\($1) \($0)"}
  @State private var newTodo: String = ""
  
  var body: some View {
    NavigationStack {
      ScrollViewReader { proxy in
        List(todos.indices, id: \.self) { index in
          Text(todos[index]).id(index) // id or tag
            .listRowBackground(Color.red.opacity(0.4))
        }
        // .ignoresSafeArea(edges: .bottom)
        .listStyle(.plain)
        .navigationTitle("Insets")
        // .safeAreaInset(edge: .top, alignment: .trailing, spacing: 40) {
        .safeAreaInset(edge: .bottom) {
          HStack {
            TextField("New ToDo", text: $newTodo).textFieldStyle(.roundedBorder)
            Button("Ok") {
              todos.insert(newTodo, at: 0)
              newTodo = ""
              withAnimation {
                proxy.scrollTo(0)
              }
            }
            .disabled(newTodo.isEmpty)
            .buttonStyle(.borderedProminent)
          }
          .padding().frame(maxWidth: .infinity).background()
        }
      }
    }
  }
}

struct InsetsView_Previews: PreviewProvider {
  static var previews: some View {
    InsetsView()
  }
}
