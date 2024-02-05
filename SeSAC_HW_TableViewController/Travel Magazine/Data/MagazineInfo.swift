//
//  MagazineInfo.swift 
//
//  Created by Den on 2024/01/08.
//

import Foundation

struct Magazine {
    let title: String
    let subtitle: String
    let photo_image: String
    let date: String
    let link: String
}

struct MagazineInfo {
    static let magazine: [Magazine] = [
        Magazine(title: "유럽 여행 쇼핑 성지, OOO은 꼭 가세요!", subtitle: "유럽의 인기 쇼핑 명소 총정리", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/f5cd3b56-141b-4344-bec7-8accc7db1b82.jpeg", date: "231118", link: "https://triple.guide/articles/265bd919-3f75-4adc-8d5d-c5cf60201bfe"),
        Magazine(title: "현지 MZ가 알려주는 오사카 MZ 인기 스팟", subtitle: "2024 오사카 여행엔 여기!", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/f22023b5-8d26-40ea-becd-ca0a42cb7c74.jpeg", date: "240103", link: "https://triple.guide/articles/d6c5257f-4d52-4a0a-aed2-6773961ee7be"),
        Magazine(title: "2024 NEWS 해외여행, 이렇게 달라졌다!", subtitle: "알고 준비하는 2024 새 여행", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/ad04564b-d7d1-4be7-a2fd-8b6e323e6b81.jpeg", date: "240108", link: "https://triple.guide/articles/997d84b1-25b3-4494-a400-457d1205264a"),
        Magazine(title: "소중한 연차, 이때 쓰세요! 2024 황금연휴 캘린더", subtitle: "미리 세우는 2024년 여행 계획", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/0250eaf1-79b5-4d8a-b8be-02462e1dbb6b.jpeg", date: "231225", link: "https://triple.guide/articles/b373b73a-f7e1-4202-932b-0d8cb188042a"),
        Magazine(title: "팜유 PICK 대만 여행지 '타이중'의 맛과 멋", subtitle: "타이중 매력 스팟은 여기!", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/1f223e9e-e3c1-4e06-9208-697ad7ed2c95.jpeg", date: "231222", link: "https://triple.guide/articles/6654b9fc-2235-481a-bdc2-6d4f1bc14237"),
        Magazine(title: "떠나요, 둘이서 낭만이 있는 하와이로", subtitle: "새해 첫 여행, 따듯한 하와이로!", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/953fa83b-a27b-4c05-9838-ce83b45bd658.jpeg", date: "231221", link: "https://triple.guide/articles/866cb9d0-22a6-4622-94b2-7bec5f65a87e"),
        Magazine(title: "한 달 살기의 성지, 치앙마이의 재발견", subtitle: "현지인이 말하는 치앙마이의 매력", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/cb92c9a8-433a-4ecd-b9e3-8d2afc30e878.jpeg", date: "231218", link: "https://triple.guide/articles/1283adcc-b9da-4e5f-ab1a-15eaa02162d8"),
        Magazine(title: "태국 여행 전 필수! 대표 음식부터 주문 꿀팁까지", subtitle: "팟타이를 더 맛있게 주문하는 방법?", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/9f7721a6-695f-4609-9eb0-65b4a036de00.jpeg", date: "231215", link: "https://triple.guide/articles/0ac41b9d-7552-4cd0-b3c4-c1297c163ce5"),
        Magazine(title: "트리플 유저 PICK 2023 인기 장소 TOP 10", subtitle: "새롭게 등록된 BEST 스팟까지!", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/7d9a92a4-7d68-4091-b939-81bcfa7823ee.jpeg", date: "231231", link: "https://triple.guide/articles/db2e37da-3a27-4969-875b-b2c443fb41a7"),
        Magazine(title: "도심에서 만나는 온천 대욕장이 있는 일본 호텔", subtitle: "가까이서 즐기는 확실한 힐링", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/da1d19a6-a6ec-4bf9-bed3-dedafa9c0928.jpeg", date: "231229", link: "https://triple.guide/content/articles/c683ff41-82fc-4e18-98c7-c9176b3667e3"),
        Magazine(title: "소원을 빌어요 🙏 새해맞이 해돋이 명소 7", subtitle: "배낭톡 in 새해 해돋이", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/03ea8aa4-ce87-4fca-835c-956667e32268.jpeg", date: "240101", link: "https://triple.guide/content/articles/b040047b-3186-4865-b9d5-07aef77db357"),
        Magazine(title: "크리스마스 분위기 가득! 국내 일루미네이션 명소 ✨", subtitle: "요즘 SNS에서 핫한 장소 총정리", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/a5134514-c0bd-4118-a674-481e48ec2212.jpeg", date: "240101", link: "https://triple.guide/content/articles/ca81200f-e367-4fe8-988f-2fa8d0b5c421"),
        Magazine(title: "야시장 천국 '대만 여행' 먹킷리스트", subtitle: "요즘 가장 인기 있는 메뉴는 OO", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/2ce73fc6-3f02-4d4f-812b-3764d018a887.jpeg", date: "240103", link: "https://triple.guide/content/articles/69f887b0-4b87-451f-8859-82c7461858b9"),
        Magazine(title: "핑크빛 바다가 펼쳐지는 환상의 섬, 롬복", subtitle: "잊히지 않는 TV속 그곳!", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/12b7bbfc-be05-437b-b0f9-cc649a353464.jpeg", date: "240101", link: "https://triple.guide/content/articles/8c4cded5-ff1e-4898-b884-c7b9f84fd5d8"),
        Magazine(title: "여행 고수가 알려주는 새벽 비행기 이용 꿀팁", subtitle: "이제 공항에서 시간 때울 걱정 끝!", photo_image: "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/c3c6d9d2-5656-4533-8772-486ca9406157.jpeg", date: "240105", link: "https://triple.guide/content/articles/791578f3-95d7-4300-a51f-6dff48db5d55"),
        
    ]
}
