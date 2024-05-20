import SwiftUI

struct NavigationSplitViewExperiment: View {
    var body: some View {
        VStack {            
            NavigationSplitView{
                Text("Select a link")
               List {
                   NavigationLink("first link"){
                       Text("😃")
                   }
                   NavigationLink{
                       Text("🫨")
                   } label: {
                       Text("second link")
                   }
                   NavigationLink{
                       SlidingRectangle()
                           .navigationTitle("Sliding rectangle")
                   } label: {
                       HStack{
                           Text("Tap to Navigate")
                           Spacer()
                           Image(systemName: "arrow.forward.circle")
                               .font(.largeTitle)
                       }
                   }
                   NavigationLink{
                       ConditionalCircle()
                           .navigationTitle("Conditional Circle")
                   } label: {
                       Text("conditional circle")
                   }
               } 
            } detail: {
                
            }
        }
    }
}

struct NavigationSplitViewExperiment_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewExperiment().assess()
    }
}
