import SwiftUI
import AVFoundation




struct ContentView: View {
    private var backgroundSound : BackgroundSoundPlayer = BackgroundSoundPlayer()
    @ObservedObject var jyanken : Jyanken = Jyanken()
//    @State private var backgroundPlayer: AVAudioPlayer?
    
    
//    @State var playerLife: Int = 3
//    @State var pcLife: Int = 3
//    @State var pcChoice: String = ""
//    @State var playerChoice: String = ""
//    @State var choices: [String] = ["👊", "✌️", "✋"]
    
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    
    var body: some View {
        VStack {
            Text("❤️: \(jyanken.pcLife) ")
                .font(.system(size: 30))
            
            Text("相手")
                .font(.largeTitle)
                .frame(width: 350)
                .background(Color.red)
                .cornerRadius(10.0)
                .foregroundColor(.white)
            Text("\(jyanken.pcChoice)")
                .font(.system(size: 100))
            
            Spacer()
            
            Text("\(jyanken.playerChoice)")
                .font(.system(size: 100))
            Text("プレーヤ")
                .font(.largeTitle)
                .frame(width: 350)
                .background(Color.blue)
                .cornerRadius(10.0)
                .foregroundColor(.white)
            
            Text("❤️: \(jyanken.playerLife) ")
                .font(.system(size: 30))
            
            Spacer()
            
            ButtonView
        }.padding(10)
        .onAppear {
            backgroundSound.playSound(FileName: "backgroundSound", FileType: "mp3",loop: true,volume: 0.3)
        }
        .alert(isPresented: $jyanken.showAlert) {
            Alert(
                title: Text(jyanken.alertTitle),
                message: Text(jyanken.alertMessage),
                dismissButton: .default(Text("リセット"), action: jyanken.resetGame)
            )
        }
        .padding(70)
    }
    
        
        
    
//    func playBackgroundSound(FileName: String, FileType: String) {
//        guard let url = Bundle.main.url(forResource: FileName, withExtension: FileType) else {
//            print("Sound file not found")
//            return
//        }
//        
//        do {
//            backgroundPlayer = try AVAudioPlayer(contentsOf: url)
//            backgroundPlayer?.numberOfLoops = -1
//            backgroundPlayer?.volume = 0.2
//            backgroundPlayer?.play()
//        } catch let error {
//            print("Error playing background sound: \(error.localizedDescription)")
//        }
//    }
    
//    func playSoundEffect(FileName: String, FileType: String) {
//        guard let url = Bundle.main.url(forResource: FileName, withExtension: FileType) else {
//            print("Sound file not found")
//            return
//        }
//        
//        do {
//            soundEffectPlayer = try AVAudioPlayer(contentsOf: url)
//            soundEffectPlayer?.play()
//        } catch let error {
//            print("Error playing sound effect: \(error.localizedDescription)")
//        }
//    }
    
    
    var ButtonView: some View {
        HStack {
            ForEach(0..<3) { index in
                Button(action: {
                    jyanken.PcMakeChoice()
                    jyanken.PlayerMakeChoice(i: index + 1)
                    jyanken.checkWinOrLose(n: jyanken.playerChoice, m: jyanken.pcChoice)
                }, label: {
                    Text(jyanken.choices[index])
                        .font(.system(size: 50))
                        .frame(width: 100)
                        .background(Color.black)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
