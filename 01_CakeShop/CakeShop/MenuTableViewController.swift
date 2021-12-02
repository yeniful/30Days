//
//  MenuTableViewController.swift
//  CakeShop
//
//  Created by Yeni Hwang on 2021/12/02.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    @IBOutlet weak var menuTableView: UITableView!
    
    private var data: [Menu]?
    private let identifier = "menuCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad")
        
        data = [
            Menu(menuImage: UIImage(named: "image1.png"), menuName: "Strawberry Cake"),
            Menu(menuImage: UIImage(named: "image2.png"), menuName: "Raspberry Cake"),
            Menu(menuImage: UIImage(named: "image3.png"), menuName: "Chocolate Cake"),
            Menu(menuImage: UIImage(named: "image4.png"), menuName: "Dark Chocolate Cake")
        ]
        print(data as Any)
        print("Menu Instance 생성")
        
        self.tableView.dataSource = self
        self.tableView.delegate = self

    }

    


    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



// MARK: - Table view data source
extension MenuTableViewController {
    
    // section 수
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    // cell의 수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return data?.count ?? 0
        
    }
    
    // cell 채워넣기
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 재사용 셀 만들어주기
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        // data(Menu Object들로 이루어진 배열) 할당
        guard let data = data else { return cell }
        // 셀마다 textLabel의 text를 Object의 menuName으로 채워주기
        cell.textLabel?.text = data[indexPath.row].menuName
        // 셀마다 이미지 채우기
        
        guard let image = data[indexPath.row].menuImage else { return cell }
        cell.imageView?.image = image
        
        return cell
    }
    
}

// MARK: - Table view delegate
extension MenuTableViewController {
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */
    
}
