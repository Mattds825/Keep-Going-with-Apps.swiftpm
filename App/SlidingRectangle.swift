import SwiftUI

struct SlidingRectangle: View {
    @State var width: Double = 0
    //#-learning-code-snippet(width)

    var body: some View {
        VStack {
            Slider(value:$width)
                .padding()
            
            Rectangle()
                .frame(width: width * 300)

            //#-learning-code-snippet(rectangle)
        }
        .padding()
    }
}

struct SlidingRectangle_Previews: PreviewProvider {
    static var previews: some View {
        SlidingRectangle().assess()
    }
}
