//
//  CityInfo.swift 
//
//  Created by Den on 2024/01/08.
//

import Foundation

struct City {
    var city_name: String
    var city_english_name: String
    var city_explain: String
    var city_image: String
    var domestic_travel: Bool
}
 
struct CityInfo {
    static let city: [City] = [
        City(city_name: "방콕", city_english_name: "Bangkok", city_explain: "방콕, 파타야, 후아힌, 코사멧, 코사무이", city_image: "https://i.namu.wiki/i/OUKHuXT-QXe-wDgGE_9hMfEW9Sb3lyMWl0SSbpTQyfl0Lw3rs_A_DuVyXBNXTFG3FUkfmy7hBjL68dgLzssEQg.webp", domestic_travel: false),
        City(city_name: "오사카", city_english_name: "Osaka", city_explain: "오사카, 교토, 고베, 나라", city_image: "https://images.unsplash.com/photo-1590559899731-a382839e5549?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "다낭", city_english_name: "Danang", city_explain: "다낭, 호이안, 후에", city_image: "https://images.unsplash.com/photo-1588411393236-d2524cca1196?q=80&w=2802&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "제주", city_english_name: "Jeju", city_explain: "제주, 섭지코지, 성산일출봉", city_image: "https://images.unsplash.com/photo-1596941248238-0d49dcaa4263?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8JUVDJUEwJTlDJUVDJUEzJUJDfGVufDB8fDB8fHww", domestic_travel: true),
        City(city_name: "부산", city_english_name: "Busan", city_explain: "부산, 해운대, 마린시티", city_image: "https://plus.unsplash.com/premium_photo-1661914310117-9875b2229719?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8JUVCJUI2JTgwJUVDJTgyJUIwfGVufDB8fDB8fHww", domestic_travel: true),
        City(city_name: "파리", city_english_name: "Paris", city_explain: "파리, 베르사유, 몽생미셀, 스트라스부르", city_image: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8JUVEJThDJThDJUVCJUE2JUFDfGVufDB8fDB8fHww", domestic_travel: false),
        City(city_name: "시드니", city_english_name: "Sydney", city_explain: "시드니, 블루마운틴, 울릉공, 뉴캐슬", city_image: "https://images.unsplash.com/photo-1523428096881-5bd79d043006?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8JUVDJThCJTlDJUVCJTkzJTlDJUVCJThCJTg4fGVufDB8fDB8fHww", domestic_travel: false),
        City(city_name: "전주", city_english_name: "Jeonju", city_explain: "전주, 한옥 마을, 오목대, 경기전", city_image: "https://images.unsplash.com/photo-1654592205911-a1690a2bed54?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fCVFQyVBMCU4NCVFQyVBMyVCQ3xlbnwwfHwwfHx8MA%3D%3D", domestic_travel: true),
        City(city_name: "밀라노", city_english_name: "Milano", city_explain: "밀라노, 꼬모, 베로나, 베르가모, 시르미오네", city_image: "https://images.unsplash.com/photo-1610016302534-6f67f1c968d8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8JUVCJUIwJTgwJUVCJTlEJUJDJUVCJTg1JUI4fGVufDB8fDB8fHww", domestic_travel: false),
        City(city_name: "리스본", city_english_name: "Lisbon", city_explain: "리스본, 신트라, 카스카이스, 오비두스", city_image: "https://images.unsplash.com/photo-1588535684923-900727736ac0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8JUVCJUE2JUFDJUVDJThBJUE0JUVCJUIzJUI4fGVufDB8fDB8fHww", domestic_travel: false),
        City(city_name: "서울", city_english_name: "Seoul", city_explain: "서울, 남산타워, 롯데타워, 경복궁", city_image: "https://images.unsplash.com/photo-1546874177-9e664107314e?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8JUVDJTg0JTlDJUVDJTlBJUI4fGVufDB8fDB8fHww", domestic_travel: true),
        City(city_name: "두바이", city_english_name: "Dubai", city_explain: "두바이, 아부다비, 알 아인", city_image: "https://images.unsplash.com/photo-1518684079-3c830dcef090?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "홍콩", city_english_name: "Hongkong", city_explain: "홍콩, 마카오", city_image: "https://images.unsplash.com/photo-1616394158624-a2ba9cfe2994?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fCVFRCU5OSU4RCVFQyVCRCVBOXxlbnwwfHwwfHx8MA%3D%3D", domestic_travel: false),
        City(city_name: "토론토", city_english_name: "Toronto", city_explain: "토론토, 나이아가라, 킹스턴, 블루마운틴", city_image: "https://images.unsplash.com/photo-1603466182843-75f713ba06b3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fCVFRCU4NiVBMCVFQiVBMSVBMCVFRCU4NiVBMHxlbnwwfHwwfHx8MA%3D%3D", domestic_travel: false),
        City(city_name: "대전", city_english_name: "Daejeon", city_explain: "대전, 성심당", city_image: "https://images.unsplash.com/photo-1702038852944-ac3c27498313?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8JUVEJTk1JTlDJUVBJUI1JUFEJTIwJUVCJThDJTgwJUVDJUEwJTg0fGVufDB8fDB8fHww", domestic_travel: true),
    ]
}
