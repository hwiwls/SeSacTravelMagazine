//
//  TravelTableViewController.swift
//  SeSacTravelMagazine
//
//  Created by hwijinjeong on 1/8/24.
//

import UIKit
import Kingfisher

struct Magazine {
    var title: String
    var subtitle: String
    var photo_image: String
    var date: String
    var link: String
}

class TravelTableViewController: UITableViewController {
    
    let magazine: [Magazine] = [
        Magazine(title: "유럽 여행 쇼핑 성지, OOO은 꼭 가세요!", subtitle: "유럽의 인기 쇼핑 명소 총정리", photo_image: "https://i.namu.wiki/i/1E2wCXUwFym-bYSTtV98bCnbQwdfmQVonirXbFOT_93AAbEOxuBKK44nhvh7RQEdcrPkmOO8L6bmO3K4-NDmnlJT5Y7-tG8VRN-KW9W821rHR2-D7TxbkBm_u-RCHCJEDSaCKjeIFnhXjyRgrJA51A.webp", date: "231118", link: "https://triple.guide/articles/265bd919-3f75-4adc-8d5d-c5cf60201bfe"),
        Magazine(title: "현지 MZ가 알려주는 오사카 MZ 인기 스팟", subtitle: "2024 오사카 여행엔 여기!", photo_image: "https://i.namu.wiki/i/DjuRgA9wKbXDPwybuUxoyBkCNFYWcY_BbWiuzCbpokF14YwttEFrZcgc4JHz4Hlrw-QRseFvFoqgNhkK2mcIvA7-jJ-Ly4QNUur_zYbTb-wjhGCaDS4S6wjxR5lJcINn7FV1AAdwJKW6kEiGEpMXKg.webp", date: "240103", link: "https://triple.guide/articles/d6c5257f-4d52-4a0a-aed2-6773961ee7be"),
        Magazine(title: "2024 NEWS 해외여행, 이렇게 달라졌다!", subtitle: "알고 준비하는 2024 새 여행", photo_image: "https://i.namu.wiki/i/9ArKhreiDY-BeVMauJxRVoJ7Tadm8eqIjWVxQideS6sTfbA7nn0QN7cskTq03PEs6-rx02B7Q-76ldhwI_QPORR139FDAwrISCsWyd1cLK5Ua62N0jdsFiGvNHplEZYv4rTaPAuF0fFJIUaccrf2EQ.webp", date: "240108", link: "https://triple.guide/articles/997d84b1-25b3-4494-a400-457d1205264a"),
        Magazine(title: "소중한 연차, 이때 쓰세요! 2024 황금연휴 캘린더", subtitle: "미리 세우는 2024년 여행 계획", photo_image: "https://i.namu.wiki/i/0-p9lG0rvKOHJ6XWb5FzpeeWagcfl5w-c_kxVHKTUnHRGYNYgZf7aDeBQvQfadKY_MkIQIz_x8DlEJ3W4VXHgGHv1B7oCW8mbMWQgwY5IoRl6Xk9BaEJLmFCawGC5OC2Ibea8ngmk2x_UAXqc9st7g.webp", date: "231225", link: "https://triple.guide/articles/b373b73a-f7e1-4202-932b-0d8cb188042a"),
        Magazine(title: "팜유 PICK 대만 여행지 '타이중'의 맛과 멋", subtitle: "타이중 매력 스팟은 여기!", photo_image: "https://i.namu.wiki/i/wnEveyaG7rYzF3zrc_CliS6J87iUGm2_p9fZSx1YOzOlAtflduSwwmEPDTiGqfdW7zI5nviJfR9sTNF--67YI6E9K4jfaWUz8_X202jN33yGvNVRpeIU1ppP7c1_-VrIkz0HfUi2e8PIk0Ih0XrQ4Q.webp", date: "231222", link: "https://triple.guide/articles/6654b9fc-2235-481a-bdc2-6d4f1bc14237"),
        Magazine(title: "떠나요, 둘이서 낭만이 있는 하와이로", subtitle: "새해 첫 여행, 따듯한 하와이로!", photo_image: "https://i.namu.wiki/i/n7Kj6D6BXGoYr4z7SzJ0RqRyENggrmU-1zMCZcNRJD6ctTp1mw4U6fvnjxkQxJiUu5eMGzxWq4C1BPS1z9YCg7xICNs511ogSJON5UHfxRsVFov4Ao-e-grXaUCxYtYReLtYRQpPpwY8W-RaQ246XQ.webp", date: "231221", link: "https://triple.guide/articles/866cb9d0-22a6-4622-94b2-7bec5f65a87e"),
        Magazine(title: "한 달 살기의 성지, 치앙마이의 재발견", subtitle: "현지인이 말하는 치앙마이의 매력", photo_image: "https://i.namu.wiki/i/r-sn2IGv3eG9Lhu1dCiLs6D8Q6hkOv3gydbKI4dfsk44e9lg3X6QFhsZ5Vq-qiS3ij57RqhOxY91n-0ZBsc5AvX-jTCEttOahqdFpM0-8AWyK3HuTfFsNUtidMYHRdvhIRRJNYS3lw51Dh45jEJkSQ.webp", date: "231218", link: "https://triple.guide/articles/1283adcc-b9da-4e5f-ab1a-15eaa02162d8"),
        Magazine(title: "태국 여행 전 필수! 대표 음식부터 주문 꿀팁까지", subtitle: "팟타이를 더 맛있게 주문하는 방법?", photo_image: "https://i.namu.wiki/i/DJ6PB636pLFPuItJWssrgA6i_RMjk8YINYdkH2ylorLQlTRN7-E9gyuOGb2ZAFb6ttG0qCkFjrj0ULWMSraFUSXPWa-ZHGMM7mJWkR2xHc4f12APgzhI6z2pzggxFq988AFo5fkigLzuyQMQrW_e_w.webp", date: "231215", link: "https://triple.guide/articles/0ac41b9d-7552-4cd0-b3c4-c1297c163ce5"),
        Magazine(title: "트리플 유저 PICK 2023 인기 장소 TOP 10", subtitle: "새롭게 등록된 BEST 스팟까지!", photo_image: "https://i.namu.wiki/i/p9-Z3M6-nG_JER7rPL0kDZY7dQSDQq9PpYN2NBQk6AsgWvFnAvM5jyg07lGOiFm9rLUKvAP92t8yqIhTK5o5Pr3tXvSO0Tc-rP_EK0W6ew5Ray5NkX8VSRCz0FGvJ_Bx9V1bunC3kAne87SaPmI8Rw.webp", date: "231231", link: "https://triple.guide/articles/db2e37da-3a27-4969-875b-b2c443fb41a7"),
        Magazine(title: "도심에서 만나는 온천 대욕장이 있는 일본 호텔", subtitle: "가까이서 즐기는 확실한 힐링", photo_image: "https://i.namu.wiki/i/-2sPgFjxBIdyxRsAHLBXgEMhelitvSKQcltxVbVql4Sdq9ewNG3ewdnokijLjy2aYcBu-UJVTb6M4M_FWNRYigoGDfvWSro60eiNLB8QXHiqZp9_dPRc7PliCBOhSboKTBgucAZvSryx1ye4Egykaw.webp", date: "231229", link: "https://triple.guide/content/articles/c683ff41-82fc-4e18-98c7-c9176b3667e3"),
        Magazine(title: "소원을 빌어요 🙏 새해맞이 해돋이 명소 7", subtitle: "배낭톡 in 새해 해돋이", photo_image: "https://i.namu.wiki/i/n7_hiXKPhTTC2ny-4iMU98G-hwfI8ixv9ISNK5W05Uht4c-q-dXd20FrItMMD3iKul0xljId1Ok_dB1zwro0xvMFswQCXezslP7xWL-RcWtx4hfbqFv4PHjoLMPPKm30E0YFth4gOkNhZOwYeYC-jg.webp", date: "240101", link: "https://triple.guide/content/articles/b040047b-3186-4865-b9d5-07aef77db357"),
        Magazine(title: "크리스마스 분위기 가득! 국내 일루미네이션 명소 ✨", subtitle: "요즘 SNS에서 핫한 장소 총정리", photo_image: "https://i.namu.wiki/i/8ooThI7ojMfdXlKX3k3k5Rj5rNIa_Lt_ySt5_CTO5mebyn3Y5Fbpm-UQcNVlAB7CWmmKWowesgZ-h5tXL77N2jQrwXvTWEPGTzCr7Xa3j1GBhZ4ClyvMhDi23DzWNXtb00J9clrlP3KkuNIym7L3xg.webp", date: "240101", link: "https://triple.guide/content/articles/ca81200f-e367-4fe8-988f-2fa8d0b5c421"),
        Magazine(title: "야시장 천국 '대만 여행' 먹킷리스트", subtitle: "요즘 가장 인기 있는 메뉴는 OO", photo_image: "https://i.namu.wiki/i/QhFAtIGWU_z76GaEa4Sl1zCW0XD31ofP1ny_jhVsGOuCuO7Ki4rga9lHcpUEFx1n8UXTTsOWZkAcz3P5bHAUSrzkwrDKCOMZEJ_KzCxhyBh1V0XQSkvYYjQy1pZh_0FOigpHnG1zHL7XfRV8KFUx-A.webp", date: "240103", link: "https://triple.guide/content/articles/69f887b0-4b87-451f-8859-82c7461858b9"),
        Magazine(title: "핑크빛 바다가 펼쳐지는 환상의 섬, 롬복", subtitle: "잊히지 않는 TV속 그곳!", photo_image: "https://i.namu.wiki/i/yV8yX6YIVmEKCx807NJG_hxrLyTMlJ-MShs1z1fd0PIB6IN4r94FRgH3a8xvhnvdxL15A3ELFq83n6y-4k51x5mboiHvZnbr1BPcAniZ6ErqJNbMnsFT_tLjimMJWHahYuW823ZO_hN5v-ca_Us90Q.webp", date: "240101", link: "https://triple.guide/content/articles/8c4cded5-ff1e-4898-b884-c7b9f84fd5d8"),
        Magazine(title: "여행 고수가 알려주는 새벽 비행기 이용 꿀팁", subtitle: "이제 공항에서 시간 때울 걱정 끝!", photo_image: "https://i.namu.wiki/i/6hscyOX5gNdRdcN5IdtHA7VkQHdFnvszFrGY0MrVv6Iljb2sRTKxne86s9h01lMGgIC10wOqlDHmDX09mL615-xJV0tOhNV9V_SdVVXaY47CM9aaqwS63NiUwnDSFX_DZPmeWCCHoxucWPbAPZnaSA.webp", date: "240105", link: "https://triple.guide/content/articles/791578f3-95d7-4300-a51f-6dff48db5d55"),

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return magazine.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "travelCell", for: indexPath) as! TravelTableViewCell
        
        cell.titleLabel.text = magazine[indexPath.row].title
        cell.titleLabel.font = .boldSystemFont(ofSize: 22)
        cell.titleLabel.textColor = .black
        cell.titleLabel.numberOfLines = 2
        
        cell.subtitleLabel.text = magazine[indexPath.row].subtitle
        cell.subtitleLabel.font = .boldSystemFont(ofSize: 16)
        cell.subtitleLabel.textColor = .gray
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyMMdd" // 입력되는 날짜 문자열의 형식
        /*
         날짜 문자열을 Date 타입으로 변환. date(from:) 메소드는 문자열을 Date 객체로 변환하는 메소드. 만약 변환에 실패하면 nil을 반환하므로, 이를 옵셔널 바인딩 구문인 if let을 사용하여 처리
         */
        if let date = dateFormatter.date(from: magazine[indexPath.row].date) { // String을 Date로 변환 성공했을 때
            dateFormatter.dateFormat = "yy년 M월 d일"
            // Date 객체를 문자열로 다시 변환
            let formattedDate = dateFormatter.string(from: date)
            cell.dateLabel.text = formattedDate
        }
        cell.dateLabel.font = .systemFont(ofSize: 14)
        cell.dateLabel.textColor = .gray
        
        let url = URL(string: magazine[indexPath.row].photo_image)
        cell.travelImageView.kf.setImage(with: url)
        cell.travelImageView.contentMode = .scaleAspectFill
        cell.travelImageView.layer.cornerRadius = 20
        
        return cell
    }
    
    func formatDate(from originalString: String) -> String {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyMMdd"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "yy년 MM월 dd일"
        
        if let originalDate = dateFormatterGet.date(from: originalString) {
            return dateFormatterPrint.string(from: originalDate)
        } else {
            return "error"
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 510
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 스토리보드 이름을 인식하지 못해서 에러가 납니다ㅠㅠ 이유를 모르겠네요..
        let sb = UIStoryboard(name: "WebLinkViewController", bundle: nil)
        
        let vc = sb.instantiateViewController(withIdentifier: "WebLinkViewController") as! WebLinkViewController
        
        vc.webUrl = magazine[indexPath.row].link
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
