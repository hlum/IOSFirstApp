//
//  JyankenClass.swift
//  JyankenAPP
//
//  Created by Hlwan Aung Phyo on 2024/06/03.
//

import Foundation
import AVFoundation


class Jyanken : ObservableObject{
    private var soundPlayer = SoundPlayer()
    @Published private var soundEffectPlayer: AVAudioPlayer?
    @Published var choices : [String] = ["👊", "✌️", "✋"]
    
    @Published var playerLife: Int = 3
    @Published var pcLife: Int = 3
    
    @Published var pcChoice: String = ""
    @Published var playerChoice: String = ""
    
    @Published var showAlert: Bool = false
    @Published var alertTitle: String = ""
    @Published var alertMessage: String = ""
    func resetGame() {
        playerLife = 3
        pcLife = 3
        pcChoice = ""
        playerChoice = ""
    }
    
    func PcMakeChoice() {
        pcChoice = choices.randomElement()!
    }
    
    func PlayerMakeChoice(i: Int) {
        switch i {
        case 1:
            playerChoice = "👊"
        case 2:
            playerChoice = "✌️"
        case 3:
            playerChoice = "✋"
        default:
            playerChoice = ""
        }
    }
    
    func checkWinOrLose(n: String, m: String) {
        if (n == "👊" && m == "✌️") || (n == "✌️" && m == "✋") || (n == "✋" && m == "👊") {
            pcLife -= 1
//            playSoundEffect(FileName: "lose", FileType: "mp3")過去のコード
            soundPlayer.playSound(FileName: "lose", FileType: "mp3")
        }else if(n == m){
            soundPlayer.playSound(FileName: "ha", FileType: "mp3")
        } else {
            playerLife -= 1
//            playSoundEffect(FileName: "orenokachi", FileType: "mp3")
            soundPlayer.playSound(FileName: "orenokachi", FileType: "mp3")
        }
        
        if playerLife < 1 {
            alertTitle = "お前は死んだわ"
            alertMessage = "ゲームをリセットしますか？"
//            playSoundEffect(FileName: "sonoteido", FileType: "mp3")過去のコード

            soundPlayer.playSound(FileName: "sonoteido", FileType: "mp3")
            showAlert = true
        } else if pcLife < 1 {
            alertTitle = "次回は勝ってみせる"
            alertMessage = "ゲームをリセットしますか？"
            showAlert = true
//            playSoundEffect(FileName: "tsuyoina", FileType: "mp3")過去のコード

            soundPlayer.playSound(FileName: "tsuyoina", FileType: "mp3")
        }
    }





}
