import SwiftUI
//#-learning-code-snippet(toggleExperiment)


struct Bindings: View {
    /*#-code-walkthrough(toggle.stateVar)*/
    @State var isOn = false
    @State var color = Color.primary
    /*#-code-walkthrough(toggle.stateVar)*/
    //#-learning-code-snippet(addAStateVar)
    
    var body: some View {
        VStack {
            /*#-code-walkthrough(toggle.viewDef)*/
            Toggle("Press Me", isOn: /*#-code-walkthrough(toggle.binding)*/ $isOn /*#-code-walkthrough(toggle.binding)*/)
            /*#-code-walkthrough(toggle.viewDef)*/
            
            ColorPicker("select color", selection: $color)
            
            
            Image(systemName: isOn ? "battery.100" : "battery.25")
                .font(.system(size: 150))
                .foregroundColor(color)
            //#-learning-code-snippet(addAColorModifier)
            
            Text("Color Tester")
                .font(.largeTitle)
                .foregroundColor(color)
                .padding()
            //#-learning-code-snippet(addATextView)
            
        }
        .padding()
    }
}

struct Bindings_Previews: PreviewProvider {
    static var previews: some View {
        Bindings().assess()
    }
}
