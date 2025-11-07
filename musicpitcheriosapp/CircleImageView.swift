import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("ico").resizable().frame(width: 120, height: 120).clipShape(RoundedRectangle(cornerRadius: 30))
    }
}
