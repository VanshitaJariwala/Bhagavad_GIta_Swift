//
//  ViewController.swift
//  Bhagavad Gita
//
//  Created by IMAC3 on 02/11/23.
//

import UIKit
import Alamofire

struct Status : Decodable
{
    var id: Int
    var name: String
    var slug: String
    var name_transliterated: String
    var name_translated: String
    var verses_count: Int
    var chapter_number: Int
    var name_meaning: String
    var chapter_summary: String
    var chapter_summary_hindi: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arr: [Status] = []
    var arr2 = ["a1","a2","a3","a4","a5","a6","a7","a8","a9","a10","a11","a12","a13","a14","a15","a16","a17","a18"]
    
    @IBOutlet weak var bhagavadGita: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
//    func getData(){
//        let link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/"
//        var url = URLRequest(url: URL(string: link)!)
//        url.httpMethod = "GET"
//        url.allHTTPHeaderFields = ["X-RapidAPI-Key":"8b9a8ef064msh933a37e8f6a5489p19a0e4jsn93632383cb17"]
//
//        URLSession.shared.dataTask(with: url) {[self] data, response, error in
//            do{
//                if error == nil{
//                    arr = try JSONDecoder().decode([Status].self, from: data!)
//                    print(arr)
//                    DispatchQueue.main.async {
//                        bhagavadGita.reloadData()
//                    }
//                }
//                else{
//                    print(error?.localizedDescription)
//                }
//            }
//            catch{
//                print(error.localizedDescription)
//            }
//        }.resume()
//    }
    
    func getData(){
        let link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/"
        AF.request(link, method: .get,headers: ["X-RapidAPI-Key":"8b9a8ef064msh933a37e8f6a5489p19a0e4jsn93632383cb17"]).responseData { [self] respo in
            switch respo.result {
                case.success(let data):
                    do {
                        if data == respo.data {
                            arr = try JSONDecoder().decode([Status].self, from: data)
                            print(arr)
                            bhagavadGita.reloadData()
                        }
                    }
                    catch {
                        print(error.localizedDescription)
                    }
                case.failure(let error):
                    print(error.errorDescription)
                default:
                    print("Fail")
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = bhagavadGita.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        cell.name.text = arr[indexPath.row].name
        cell.name2.text = arr[indexPath.row].name_translated
        cell.imageOutlet.image = UIImage(named: arr2[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 103
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController2")  as! ViewController2
        
        a.img = arr2[indexPath.row]
        a.name = arr[indexPath.row].name
        a.name2 = arr[indexPath.row].name_translated
        a.slug = arr[indexPath.row].slug
        a.count = arr[indexPath.row].verses_count
        a.chapternum = arr[indexPath.row].chapter_number
        a.mean = arr[indexPath.row].name_meaning
        a.summary = arr[indexPath.row].chapter_summary
        a.summary2 = arr[indexPath.row].chapter_summary_hindi
        
        
        
        navigationController?.pushViewController(a, animated: true)
    }
}


