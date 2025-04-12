import SwiftUI

struct CardView: View {
  
  @State private var imageNumber: Int = 1
  @State private var randomNumber: Int = 1
  
  func randomImage() {
    repeat {
      randomNumber = Int.random(in: 1...5)
    } while randomNumber == imageNumber
    imageNumber = randomNumber
  }
  
    var body: some View {
      ZStack {
        CustomBackgroundView()
        VStack {
          HStack {
            Text("Hiking")
              .fontWeight(.black)
              .font(.system(size: 52))
              .foregroundStyle(LinearGradient(colors: [.colorGrayLight,
                                                       .colorGrayMedium],
                                              startPoint: .top, endPoint: .bottom))
            
            Spacer()
            
            Button {
              //action
            } label: {
              CustomButtonView()
            }
          }
          
          Text("Fun and enjoyable outdoor activity for friends and families.")
            .multilineTextAlignment(.leading)
            .italic()
            .foregroundColor(.customGrayMedium)
          
          ZStack {
            CustomCircleView()
            
            Image("image-\(imageNumber)")
              .resizable()
              .scaledToFit()
              .animation(.easeOut(duration: 1), value: imageNumber)
          }
          
          Button {
            randomImage()
          } label: {
            Text("Explore more")
              .font(.title2)
              .fontWeight(.heavy)
              .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium],
                                              startPoint: .top,
                                              endPoint: .bottom))
    
              .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
          }
          .buttonStyle(GradientButton())
        }
        .padding(20)
      }
      .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
