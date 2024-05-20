import SwiftUI
//#-learning-code-snippet(conditionalCircle)

struct ConditionalCircle: View {
    @State var isOn = false
    
    var body: some View {
        VStack {
            /*#-code-walkthrough(conditionalCircle.circleView)*/
            Circle()
                .frame(maxHeight: 200)
                /*#-code-walkthrough(conditionalCircle.foregroundColor)*/
                .foregroundColor(/*#-code-walkthrough(conditionalCircle.ternary)*/ isOn ? .yellow : .black /*#-code-walkthrough(conditionalCircle.ternary)*/)
                .shadow(color: isOn ? .white : .indigo, radius: isOn ? 10 : 1)
                .scaleEffect(isOn ? 1 : 0.75)
                .animation(.spring, value: isOn)
                /*#-code-walkthrough(conditionalCircle.foregroundColor)*/
            /*#-code-walkthrough(conditionalCircle.circleView)*/
            //#-learning-code-snippet(addShadowModifier)
            //#-learning-code-snippet(addScaleModifier)
            //#-learning-code-snippet(addAnimationModifier)

            Button("Press Me") {
                isOn.toggle()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalCircle().assess()
    }
}
