//
//  ViewController.swift
//  Stopwatch
//
//  Created by Yeni Hwang on 2021/12/03.
//

import UIKit

class ViewController: UIViewController {

// MARK: - Variables
    fileprivate let mainStopwatch: Stopwatch = Stopwatch()
    fileprivate let lapStopwatch: Stopwatch = Stopwatch()
    fileprivate let isPlay: Bool = false    // false로 초기화
    fileprivate let laps: [String] = []     // cell에 넣을 lap 기록들
    
    
// MARK: - IBOutlets
    // MARK: - Time
    @IBOutlet weak var mainTimeLabel: UILabel!
    @IBOutlet weak var lapTimeLabel: UILabel!
    
    // MARK: - Buttons
    @IBOutlet weak var startAndPauseButton: UIButton!
    @IBOutlet weak var resetAndLabButton: UIButton!
    
    // MARK: - TableView
    @IBOutlet weak var labsTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // nib
        let nibName = UINib(nibName: "LabTableViewCell", bundle: nil)
        labsTableView.register(nibName, forCellReuseIdentifier: "labCell")
        
        
        // init (Button 세팅)
        
        /*
        let initCircleButton: (UIButton) -> Void = { button in
            button.layer.cornerRadius = 0.5 * button.bounds.size.width
            button.backgroundColor = UIColor.white
        }
        
        initCircleButton(startAndPauseButton)
        initCircleButton(resetAndLabButton)
        */
        
        // resetAndLabButton.isEnabled = false
        
        labsTableView.delegate = self
        labsTableView.dataSource = self

    }
    
    // MARK:

    override var shouldAutorotate: Bool { return false }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    
    // MARK: - IBActions
    @IBAction func playAndPause(_ sender: UIButton) {
        sender.titleLabel
    }
    @IBAction func resetAndLab(_ sender: UIButton) {
    }
    
    
    // MARK: - Private Helpers
    // 버튼 바꾸는 함수
    fileprivate func changeButton(_ button: UIButton, title: String, titleColor: UIColor ){
        button.setTitle(title, for: UIControl.State())
    }
    
    // 메인 타이머 리셋하는 함수
    fileprivate func resetTimer(_ stopwatch:Stopwatch, label: UILabel){
        // 유효하지 않게? 타이머가 작동 안하게? 아니면 랩 기록 못하게?
        stopwatch.timer.invalidate()
        // 타이머 시간 리셋
        stopwatch.counter = 0.0
        // 타이머 시간 라벨도 릴셋
        label.text = "00:00:00"
    }
    
    fileprivate func resetLabTimer() {
        resetTimer(<#T##stopwatch: Stopwatch##Stopwatch#>, label: <#T##UILabel#>)
    }
    fileprivate func resetLapTimer()  {
        
    }
    


}

// MARK: - Data Source
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return laps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier: String = "labCell"
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        if let labelNum = cell.viewWith
        
        return cell
    }
    
}

// MARK: - Delegate
extension ViewController: UITableViewDelegate {
    
}

