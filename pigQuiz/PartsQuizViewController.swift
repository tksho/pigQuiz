//
//  PartsQuizViewController.swift
//  pigQuiz
//
//  Created by nttr on 2017/07/25.
//  Copyright © 2017年 net.tksho. All rights reserved.
//

import UIKit

class PartsQuizViewController: UIViewController {

    var timer: Timer!
    var numOfAnswer: Int = 0 // 正解数
    var indexOfQuiz: Int = 0 // 現在何問目か
    var quizArray: [PartsQuiz] = []
    
    @IBOutlet var indexLabel: UILabel!
    @IBOutlet var descTextView: UITextView!
    
    @IBOutlet var kataRoseBtn: UIButton!
    @IBOutlet var roseBtn: UIButton!
    @IBOutlet var baraBtn: UIButton!
    @IBOutlet var momoBtn: UIButton!
    @IBOutlet var firreBtn: UIButton!
    @IBOutlet var mimiBtn: UIButton!
    @IBOutlet var tontoroBtn: UIButton!
    @IBOutlet var tanBtn: UIButton!
    @IBOutlet var kashiraBtn: UIButton!
    @IBOutlet var nankotsuBtn: UIButton!
    @IBOutlet var hatsuBtn: UIButton!
    @IBOutlet var katasuperibuBtn: UIButton!
    @IBOutlet var gatsuBtn: UIButton!
    @IBOutlet var rebaaBtn: UIButton!
    @IBOutlet var mameBtn: UIButton!
    @IBOutlet var himoBtn: UIButton!
    @IBOutlet var tonsokuBtn: UIButton!
    @IBOutlet var daityoBtn: UIButton!

    @IBOutlet var maru_kataRoseBtn: UIImageView!
    @IBOutlet var maru_roseBtn: UIImageView!
    @IBOutlet var maru_baraBtn: UIImageView!
    @IBOutlet var maru_momoBtn: UIImageView!
    @IBOutlet var maru_firreBtn: UIImageView!
    @IBOutlet var maru_mimiBtn: UIImageView!
    @IBOutlet var maru_tontoroBtn: UIImageView!
    @IBOutlet var maru_tanBtn: UIImageView!
    @IBOutlet var maru_kashiraBtn: UIImageView!
    @IBOutlet var maru_nankotsuBtn: UIImageView!
    @IBOutlet var maru_hatsuBtn: UIImageView!
    @IBOutlet var maru_katasuperibuBtn: UIImageView!
    @IBOutlet var maru_gatsuBtn: UIImageView!
    @IBOutlet var maru_rebaaBtn: UIImageView!
    @IBOutlet var maru_mameBtn: UIImageView!
    @IBOutlet var maru_himoBtn: UIImageView!
    @IBOutlet var maru_tonsokuBtn: UIImageView!
    @IBOutlet var maru_daityoBtn: UIImageView!

    @IBAction func tapMimi() {
        print("ミミ")
        self.checkAnswer(partsName: "ミミ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    @IBAction func tapTontoro() {
        print("トントロ")
        self.checkAnswer(partsName: "トントロ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }
    
    @IBAction func tapTan() {
        print("タン")
        self.checkAnswer(partsName: "タン")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    @IBAction func tapKashira() {
        print("カシラ")
        self.checkAnswer(partsName: "カシラ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    @IBAction func tapNankotsu() {
        print("なんこつ")
        self.checkAnswer(partsName: "なんこつ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }
    
    @IBAction func tapHatsu() {
        print("ハツ")
        self.checkAnswer(partsName: "ハツ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    @IBAction func tapKatasuperibu() {
        print("肩スペリぶ")
        self.checkAnswer(partsName: "肩スペリブ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }
    
    @IBAction func tapGatsu() {
        print("ガツ")
        self.checkAnswer(partsName: "ガツ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    @IBAction func tapRebaa() {
        print("レバー")
        self.checkAnswer(partsName: "レバー")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    @IBAction func tapMame() {
        print("マメ")
        self.checkAnswer(partsName: "マメ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    @IBAction func tapHimo() {
        print("ヒモ")
        self.checkAnswer(partsName: "ヒモ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)

    }

    @IBAction func tapTonsoku() {
        print("豚足")
        self.checkAnswer(partsName: "豚足")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    @IBAction func tapDaityo() {
        print("ダイチョウ")
        self.checkAnswer(partsName: "ダイチョウ")
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // クイズ初期化
        setUpQuiz()
        
        // 1問目を表示
        showQuiz()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 肩ロースが押された
    @IBAction func tapKataRose() {
        print("肩ロース")
        self.checkAnswer(partsName: "肩ロース")
        
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    // ロースが押された
    @IBAction func tapRose() {
        print("ロース")
        self.checkAnswer(partsName: "ロース")
        
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    // ヒレが押された
    @IBAction func tapFirre() {
        print("ヒレ")
        self.checkAnswer(partsName: "ヒレ")
        
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    // ももが押された
    @IBAction func tapMomo() {
        print("もも")
        self.checkAnswer(partsName: "もも")
        
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }

    // ばらが押された
    @IBAction func tapBara() {
        print("ばら")
        self.checkAnswer(partsName: "ばら")
        
        indexOfQuiz += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PartsQuizViewController.showQuiz), userInfo: nil, repeats: false)
    }
    
    
    // クイズ初期化
    func setUpQuiz(){
        let quiz01 = PartsQuiz(text:"赤身の中に脂が粗い網状に入っています。コクがあり、濃厚な味で様々な豚肉料理に幅広く使われる部位です。", answer:"肩ロース")
        let quiz02 = PartsQuiz(text:"キメ細で、肉質も柔らかく一番美味しい部位。ふちの脂身部分にも旨みがあります。豚カツや、ロースハムなどが代表的な料理。", answer:"ロース")
        let quiz03 = PartsQuiz(text:"ロースと並び豚肉の中で一番良質の部位。ビタミンB1が最も多く含まれてまた、脂分が少ないのに柔らかいのも特徴的。", answer:"ヒレ")
        let quiz04 = PartsQuiz(text:"濃厚な脂身が特徴の部位。別名を三枚肉。ベーコン・お好み焼き・角煮などが代表的料理。骨付きは、スペアリブと呼ばれます。", answer:"ばら")
        let quiz05 = PartsQuiz(text:"脂肪分が少く、さっぱりと食べられる部位。キメ細で、ヒレに次いでビタミンB1が豊富。プロシュートなどの生ハムに使われます。", answer:"もも")
        
        self.quizArray.append(quiz01)
        self.quizArray.append(quiz02)
        self.quizArray.append(quiz03)
        self.quizArray.append(quiz04)
        self.quizArray.append(quiz05)
    }
    
    func showQuiz() {
        // 全問解き終わったらクイズ終了
        if indexOfQuiz >= quizArray.count {
            
            // ランクを算出
            var rank: String!
            if numOfAnswer < 2 {
                rank = "無知"
            }
            else if numOfAnswer < 4 {
                rank = "あと少しでマスター"
            }
            else {
                rank = "マスター"
            }
            
            // ハイスコアを超えたら保存
            var highScore: Int = 0
            var highScoreRank: String!
            let ud = UserDefaults.standard
            highScoreRank = ud.string(forKey: "highScoreRank_parts")
            highScore = ud.integer(forKey: "highScore_parts")
            if numOfAnswer > highScore {
                ud.set(numOfAnswer, forKey: "highScore_parts")
                ud.set(rank, forKey: "highScoreRank_parts")
            }
            ud.synchronize()
            
            // 正解数をアラートで表示
            let message = "結果は" + String(quizArray.count) + "問中" + String(numOfAnswer) + "問正解でした。あなたは「" + String(rank) + "」クラスです！"
            let alert = UIAlertController(title: "全問終了！", message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { (okAction) in
                // OKボタン押したときのアクション
                alert.dismiss(animated: true, completion: nil)
                self.dismiss(animated: true, completion: nil)
            })
            alert.addAction(okAction) // OKボタン設置
            self.present(alert, animated: true, completion: nil) // アラート表示
        }
        else {
            // 次の問題を表示
            indexLabel.text = String(indexOfQuiz+1) + "/" + String(quizArray.count) + "問目"
            descTextView.text = quizArray[indexOfQuiz].text
            
            maru_kataRoseBtn.image = UIImage(named: "")
            maru_roseBtn.image = UIImage(named: "")
            maru_firreBtn.image = UIImage(named: "")
            maru_baraBtn.image = UIImage(named: "")
            maru_momoBtn.image = UIImage(named: "")
            maru_katasuperibuBtn.image = UIImage(named: "")
            maru_tanBtn.image = UIImage(named: "")
            maru_tontoroBtn.image = UIImage(named: "")
            maru_mimiBtn.image = UIImage(named: "")
            maru_kashiraBtn.image = UIImage(named: "")
            maru_nankotsuBtn.image = UIImage(named: "")
            maru_hatsuBtn.image = UIImage(named: "")
            maru_gatsuBtn.image = UIImage(named: "")
            maru_rebaaBtn.image = UIImage(named: "")
            maru_mameBtn.image = UIImage(named: "")
            maru_himoBtn.image = UIImage(named: "")
            maru_daityoBtn.image = UIImage(named: "")
            maru_tonsokuBtn.image = UIImage(named: "")
        }
    }
    
    // 正解判定
    func checkAnswer(partsName: String){
        if partsName ==  quizArray[indexOfQuiz].answer {
                numOfAnswer += 1
        }
        else {
            print("まちがいです")
        }
        
        // 回答が間違ってたら×をつける
        if partsName !=  quizArray[indexOfQuiz].answer {
            if partsName == "肩ロース" {
                maru_kataRoseBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "ロース" {
                maru_roseBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "ヒレ" {
                maru_firreBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "ばら" {
                maru_baraBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "もも" {
                maru_momoBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "肩スペアリブ" {
                maru_katasuperibuBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "タン" {
                maru_tanBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "トントロ" {
                maru_tontoroBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "ミミ" {
                maru_mimiBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "カシラニク" {
                maru_kashiraBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "なんこつ" {
                maru_nankotsuBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "ハツ" {
                maru_hatsuBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "ガツ" {
                maru_gatsuBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "レバー" {
                maru_rebaaBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "マメ" {
                maru_mameBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "ヒモ" {
                maru_himoBtn.image = UIImage(named: "incorrect.png")
            }
            else if partsName == "ダイチョウ" {
                maru_daityoBtn.image = UIImage(named: "incorrect.png")
            }
            else {
                maru_tonsokuBtn.image = UIImage(named: "incorrect.png")
            }

        }
        
        
        // 正解に○をつける
        if quizArray[indexOfQuiz].answer == "肩ロース" {
            maru_kataRoseBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "ロース" {
            maru_roseBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "ヒレ" {
            maru_firreBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "ばら" {
            maru_baraBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "もも" {
            maru_momoBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "肩スペアリブ" {
            maru_katasuperibuBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "タン" {
            maru_tanBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "トントロ" {
            maru_tontoroBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "ミミ" {
            maru_mimiBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "カシラニク" {
            maru_kashiraBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "なんこつ" {
            maru_nankotsuBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "ハツ" {
            maru_hatsuBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "ガツ" {
            maru_gatsuBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "レバー" {
            maru_rebaaBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "マメ" {
            maru_mameBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "ヒモ" {
            maru_himoBtn.image = UIImage(named: "correct.png")
        }
        else if quizArray[indexOfQuiz].answer == "ダイチョウ" {
            maru_daityoBtn.image = UIImage(named: "correct.png")
        }
        else {
            maru_tonsokuBtn.image = UIImage(named: "correct.png")
        }
    
    }

}
