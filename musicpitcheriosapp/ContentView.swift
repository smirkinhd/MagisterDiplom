import SwiftUI

struct StartPage: View {
    @State private var goNext = false

    var body: some View {
        NavigationStack {
            VStack {
                CircleImageView()
                    .offset(y: 10)

                VStack(alignment: .center) {
                    Text("Добро пожаловать")
                        .font(.largeTitle)
                        .foregroundColor(.black)

                    Text("Music Pitcher - твой универсальный помощник по конвертации мелодии в нотную грамоту")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .padding(.top, 1)
                        .padding(.horizontal, 30)
                        .multilineTextAlignment(.center)
                }
                .offset(y: 10)

                Spacer()

                Button(action: {
                    goNext = true
                }) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .frame(height: 60)
                        .overlay {
                            Text("Далее")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 40)
                }
                .offset(y: -20)

            }
            .navigationDestination(isPresented: $goNext) {
                MainMenu()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
            }
        }
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
