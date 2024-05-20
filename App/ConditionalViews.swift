import SwiftUI
//#-learning-code-snippet(conditionalViews)

struct ConditionalViews: View {
    /*#-code-walkthrough(conditionalView.stateVar)*/
    /*#-code-walkthrough(conditionalView.statePropertyWrapper)*/@State /*#-code-walkthrough(conditionalView.statePropertyWrapper)*/var isOn = false
    @State var isOn2 = false
    
    var SecondView: some View{
        VStack{
            if isOn2{
                Text("😃")
                    .font(.largeTitle)
            }else{
                Text("😪")
                    .font(.largeTitle)
            }
            Button(action:{isOn2.toggle()}){
                Text("🙆‍♂️")
            }
            
        }
    }
    /*#-code-walkthrough(conditionalView.stateVar)*/

    var body: some View {
        VStack {
            /*#-code-walkthrough(conditionalView.ifStatement)*/
            if isOn {
                /*#-code-walkthrough(conditionalView.circleView)*/
                Circle()
                    .frame(maxHeight: 200)
                    .foregroundColor(.blue)
                Text("On")
                /*#-code-walkthrough(conditionalView.circleView)*/
            } else{
                Capsule()
                    .frame(maxWidth: 200, maxHeight: 100)
                    .foregroundColor(.red)
                Text("Off")
            }
            /*#-code-walkthrough(conditionalView.ifStatement)*/

            /*#-code-walkthrough(conditionalView.button)*/
            Button(action:{isOn.toggle()}) {
                /*#-code-walkthrough(conditionalView.buttonAction)*/
                Circle()
                    .frame(maxHeight: 20)
                    .foregroundColor(.red)
                /*#-code-walkthrough(conditionalView.buttonAction)*/
            }
            /*#-code-walkthrough(conditionalView.button)*/
        }
        
        SecondView
    }
}

struct ConditionalViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ConditionalViews().assess()
        }
    }
}


