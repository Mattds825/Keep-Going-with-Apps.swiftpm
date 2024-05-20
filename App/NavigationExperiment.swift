import SwiftUI

struct NavigationExperiment: View {
    var body: some View {
        VStack {
            NavigationStack { 
                List { 
                    Text("NavigationStack Content")
                    
                    NavigationLink("Push Me!") { 
                        Text("I'm the destination View")
                            .navigationTitle("Destination")
                    }
                    NavigationLink("Push me"){
                        Text("second navigation page")
                            .navigationTitle("Destination")
                    }
                    //#-learning-code-snippet(addSecondNavLink)
                    
                }
            }
            
        }
    }
}

struct NavigationExperiment_Previews: PreviewProvider {
    static var previews: some View {
        NavigationExperiment().assess()
    }
}
