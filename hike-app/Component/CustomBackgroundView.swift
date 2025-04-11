import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
      ZStack {
        
        Color.colorGreenDark
          .cornerRadius(40)
          .offset(y: 12)
        
        Color.colorGreenLight
          .cornerRadius(40)
          .offset(y: 3)
          .opacity(0.85)
        
        LinearGradient(colors: [Color.colorGreenLight,
                                Color.colorGreenMedium],
                       startPoint: .top, endPoint: .bottom)
          .cornerRadius(40)
      }
    }
}

#Preview {
    CustomBackgroundView()
    .padding()
}
