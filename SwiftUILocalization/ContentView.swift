import SwiftUI

struct ContentView: View {
  @State var name = ""
  @State var age = ""
  
  var body: some View {
    NavigationView {
      VStack(spacing: 20) {
        Text("Hello, \(name)!")
          .font(.largeTitle)
        
        TextField(LocalizedStringKey("Your name"), text: $name)
          .multilineTextAlignment(.center)
          .font(.title)
        
        Spacer()
      }
    }
    .navigationTitle("Greeting")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
    }
  }
}
