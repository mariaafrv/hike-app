import SwiftUI

struct CardView: View {
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
            Circle()
              .fill(
                LinearGradient(colors: [Color("ColorIndigoMedium"),
                                        Color("ColorSalmonLight")],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing))
              .frame(width: 256, height: 256)
            
            Image("image-1")
              .resizable()
              .scaledToFit()
          }
          
          Button {
            //code
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
