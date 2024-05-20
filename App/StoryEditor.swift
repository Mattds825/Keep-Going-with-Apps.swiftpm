import SwiftUI

struct StoryEditor: View {
    @State var name = ""
    @State var hobby = ""
    @State var showStory = false
    
    var body: some View {
        VStack {
            TextField("type your name", text: $name)
                .padding()
            
            TextField("type your hobby", text: $hobby)
                .padding()
            
            if showStory{
                Text("Hi there my name is \(name), I love \(hobby). Nice to meet you!")    
            }
            
            Button("Show Story"){
                showStory.toggle()
            }
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .clipShape(Capsule())
            
        }
        .padding()
    }
}

struct StoryEditor_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditor()
    }
}
