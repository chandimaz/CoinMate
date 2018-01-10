//
//  ViewController.swift
//  CoinMate
//
//  Created by Virtual on 9/4/17.
//  Copyright © 2017 Virtual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rate: RatesStore? {
        didSet{
            print(rate?.cad)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "currency", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        let urls = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            do {
                
                let data = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as AnyObject
                
                let rates = data["rates"] as! [String: Any]
                
                self.rate = RatesStore(dictionary: rates)
                
                
                
                
                guard let cad = rates["CAD"] as? Double else {return} //Canada Dollar
                guard let cdf = rates["CDF"] as? Double else {return} //Congo/Kinshasa Franc
                guard let chf = rates["CHF"] as? Double else {return} //Switzerland Franc
                guard let clf = rates["CLF"] as? Double else {return} //chillie
                guard let clp = rates["CLP"] as? Double else {return} //Chile Peso
                guard let cnh = rates["CNH"] as? Double else {return} //china national
                guard let cny = rates["CNY"] as? Double else {return} //China Yuan Renminbi
                guard let cop = rates["COP"] as? Double else {return} //Colombia Peso
                guard let crc = rates["CRC"] as? Double else {return} //Costa Rica Colon
                guard let cuc = rates["CUC"] as? Double else {return} //Cuba Convertible Peso
                guard let cup = rates["CUP"] as? Double else {return} //Cuba Peso
                guard let cve = rates["CVE"] as? Double else {return} //Cape Verde Escudo
                guard let czk = rates["CZK"] as? Double else {return} //Czech Republic Koruna
                
                guard let djf = rates["DJF"] as? Double else {return} //Djibouti Franc
                guard let dkk = rates["DKK"] as? Double else {return} //Denmark Krone
                guard let dop = rates["DOP"] as? Double else {return} //Dominican Republic Peso
                guard let dzd = rates["DZD"] as? Double else {return} //Algeria Dinar
                
                guard let egp = rates["EGP"] as? Double else {return} //Egypt Pound
                guard let ern = rates["ERN"] as? Double else {return} //Eritrea Nakfa
                guard let etb = rates["ETB"] as? Double else {return} //Ethiopia Birr
                guard let eur = rates["EUR"] as? Double else {return} //Euro Member Countries
                
                guard let fjd = rates["FJD"] as? Double else {return} //Fiji Dollar
                guard let fkp = rates["FKP"] as? Double else {return} //Falkland Islands (Malvinas) Pound
                
                guard let gbp = rates["GBP"] as? Double else {return} //United Kingdom Pound
                guard let gel = rates["GEL"] as? Double else {return} //Georgia Lari
                guard let ggp = rates["GGP"] as? Double else {return} //Guernsey Pound
                guard let ghs = rates["GHS"] as? Double else {return} //Ghana Cedi
                guard let gip = rates["GIP"] as? Double else {return} //Gibraltar Pound
                guard let gmd = rates["GMD"] as? Double else {return} //Gambia Dalasi
                guard let gnf = rates["GNF"] as? Double else {return} //Guinea Franc
                guard let gtq = rates["GTQ"] as? Double else {return} //Guatemala Quetzal
                guard let gyd = rates["GYD"] as? Double else {return} //Guyana DollarMNY
                
                guard let hkd = rates["HKD"] as? Double else {return} //Hong Kong Dollar
                guard let hnl = rates["HNL"] as? Double else {return} //Honduras Lempira
                guard let hrk = rates["HRK"] as? Double else {return} //Croatia Kuna
                guard let htg = rates["HTG"] as? Double else {return} //Haiti Gourde
                guard let huf = rates["HUF"] as? Double else {return} //Hungary Forint
                
                guard let idr = rates["IDR"] as? Double else {return} //Indonesia Rupiah
                guard let ils = rates["ILS"] as? Double else {return} //Israel Shekel
                guard let imp = rates["IMP"] as? Double else {return} //Isle of Man Pound
                guard let inr = rates["INR"] as? Double else {return} //India Rupee
                guard let iqd = rates["IQD"] as? Double else {return} //Iraq Dinar
                guard let irr = rates["IRR"] as? Double else {return} //Iran Rial
                guard let isk = rates["ISK"] as? Double else {return} //Iceland Krona
                
                guard let jep = rates["JEP"] as? Double else {return} //Jersey Pound
                guard let jmd = rates["JMD"] as? Double else {return} //Jamaica Dollar
                guard let jod = rates["JOD"] as? Double else {return} //Jordan Dinar
                guard let jpy = rates["JPY"] as? Double else {return} //Japan Yen
                
                guard let kes = rates["KES"] as? Double else {return} //Kenya Shilling
                guard let kgs = rates["KGS"] as? Double else {return} //Kyrgyzstan Som
                guard let khr = rates["KHR"] as? Double else {return} //Cambodia Riel
                guard let kmf = rates["KMF"] as? Double else {return} //Comorian Franc
                guard let kpw = rates["KPW"] as? Double else {return} //Korea (North) Won
                guard let krw = rates["KRW"] as? Double else {return} //Korea (South) Won
                guard let kwd = rates["KWD"] as? Double else {return} //Kuwait Dinar
                guard let kyd = rates["KYD"] as? Double else {return} //Cayman Islands Dollar
                guard let kzt = rates["KZT"] as? Double else {return} //Kazakhstan Tenge
                
                guard let lak = rates["LAK"] as? Double else {return} //Laos Kip
                guard let lbp = rates["LBP"] as? Double else {return} //Lebanon Pound
                guard let lkr = rates["LKR"] as? Double else {return} //Sri Lanka Rupee
                guard let lrd = rates["LRD"] as? Double else {return} //Liberia Dollar
                guard let lsl = rates["LSL"] as? Double else {return} //Lesotho Loti
                guard let lyd = rates["LYD"] as? Double else {return} //Libya Dinar
                
                guard let mad = rates["MAD"] as? Double else {return} //Morocco Dirham
                guard let mdl = rates["MDL"] as? Double else {return} //Moldova Leu
                guard let mga = rates["MGA"] as? Double else {return} //Madagascar Ariary
                guard let mkd = rates["MKD"] as? Double else {return} //Macedonia Denar
                guard let mmk = rates["MMK"] as? Double else {return} //Myanmar (Burma) Kyat
                guard let mnt = rates["MNT"] as? Double else {return} //Mongolia Tughrik
                guard let mop = rates["MOP"] as? Double else {return} //Macau Pataca
                guard let mro = rates["MRO"] as? Double else {return} //Mauritania Ouguiya
                guard let mur = rates["MUR"] as? Double else {return} //Mauritius Rupee
                guard let mvr = rates["MVR"] as? Double else {return} //Maldives (Maldive Islands) Rufiyaa
                guard let mwk = rates["MWK"] as? Double else {return} //Malawi Kwacha
                guard let mxn = rates["MXN"] as? Double else {return} //Mexico Peso
                guard let myr = rates["MYR"] as? Double else {return} //Malaysia Ringgit
                guard let mzn = rates["MZN"] as? Double else {return} //Mozambique Metical
                
                guard let nad = rates["NAD"] as? Double else {return} //Namibia Dollar
                guard let ngn = rates["NGN"] as? Double else {return} //Nigeria Naira
                guard let nio = rates["NIO"] as? Double else {return} //Nicaragua Cordoba
                guard let nok = rates["NOK"] as? Double else {return} //Norway Krone
                guard let npr = rates["NPR"] as? Double else {return} //Nepal Rupee
                guard let nzd = rates["NZD"] as? Double else {return} //New Zealand Dollar
                
                guard let omr = rates["OMR"] as? Double else {return} //Oman Rial
                
                guard let pab = rates["PAB"] as? Double else {return} //Panama Balboa
                guard let pen = rates["PEN"] as? Double else {return} //Peru Sol
                guard let pgk = rates["PGK"] as? Double else {return} //Papua New Guinea Kina
                guard let php = rates["PHP"] as? Double else {return} //Philippines Peso
                guard let pkr = rates["PKR"] as? Double else {return} //Pakistan Rupee
                guard let pln = rates["PLN"] as? Double else {return} //Poland Zloty
                guard let pyg = rates["PYG"] as? Double else {return} //Paraguay Guarani
                
                guard let qar = rates["QAR"] as? Double else {return} //Qatar Riyal
                
                guard let ron = rates["RON"] as? Double else {return} //Romania Leu
                guard let rsd = rates["RSD"] as? Double else {return} //Serbia Dinar
                guard let rub = rates["RUB"] as? Double else {return} //Russia Ruble
                guard let rwf = rates["RWF"] as? Double else {return} //Rwanda Franc
                
                guard let sar = rates["SAR"] as? Double else {return} //Saudi Arabia Riyal
                guard let sbd = rates["SBD"] as? Double else {return} //Solomon Islands Dollar
                guard let scr = rates["SCR"] as? Double else {return} //Seychelles Rupee
                guard let sdg = rates["SDG"] as? Double else {return} //Sudan Pound
                guard let sek = rates["SEK"] as? Double else {return} //Sweden Krona
                guard let sgd = rates["SGD"] as? Double else {return} //Singapore Dollar
                guard let shp = rates["SHP"] as? Double else {return} //Saint Helena Pound
                guard let sll = rates["SLL"] as? Double else {return} //Sierra Leone Leone
                guard let sos = rates["SOS"] as? Double else {return} //Somalia Shilling
                guard let srd = rates["SRD"] as? Double else {return} //Suriname Dollar
                guard let ssp = rates["SSP"] as? Double else {return} //South sudan
                guard let std = rates["STD"] as? Double else {return} //São Tomé and Príncipe Dobra
                guard let svc = rates["SVC"] as? Double else {return} //El Salvador Colon
                guard let syp = rates["SYP"] as? Double else {return} //Syria Pound
                guard let szl = rates["SZL"] as? Double else {return} //Swaziland Lilangeni
                
                guard let thb = rates["THB"] as? Double else {return} //Thailand Baht
                guard let tjs = rates["TJS"] as? Double else {return} //Tajikistan Somoni
                guard let tmt = rates["TMT"] as? Double else {return} //Turkmenistan Manat
                guard let tnd = rates["TND"] as? Double else {return} //Tunisia Dinar
                guard let top = rates["TOP"] as? Double else {return} //Tonga Pa'anga
                guard let trys = rates["TRY"] as? Double else {return} //Turkey Lira
                guard let ttd = rates["TTD"] as? Double else {return} //Trinidad and Tobago Dollar
                guard let twd = rates["TWD"] as? Double else {return} //Taiwan New Dollar
                guard let tzs = rates["TZS"] as? Double else {return} //Tanzania Shilling
                
                guard let uah = rates["UAH"] as? Double else {return} //Ukraine Hryvnia
                guard let ugx = rates["UGX"] as? Double else {return} //Uganda Shilling
                guard let usd = rates["USD"] as? Double else {return} //United States Dollar
                guard let uyu = rates["UYU"] as? Double else {return} //Uruguay Peso
                guard let uzs = rates["UZS"] as? Double else {return} //Uzbekistan Som
                
                guard let vef = rates["VEF"] as? Double else {return} //Venezuela Bolívar
                guard let vnd = rates["VND"] as? Double else {return} //Viet Nam Dong
                guard let vuv = rates["VUV"] as? Double else {return} //Vanuatu Vatu
                
                guard let wst = rates["WST"] as? Double else {return} //Samoa Tala
                
                guard let xaf = rates["XAF"] as? Double else {return} //Communauté Financière Africaine (BEAC) CFA Franc BEAC
                guard let xag = rates["XAG"] as? Double else {return}
                guard let xau = rates["XAU"] as? Double else {return}
                guard let xcd = rates["XCD"] as? Double else {return} //East Caribbean Dollar
                guard let xdr = rates["XDR"] as? Double else {return} //International Monetary Fund (IMF) Special Drawing Rights
                guard let xof = rates["XOF"] as? Double else {return} //Communauté Financière Africaine (BCEAO) Franc
                guard let xpd = rates["XPD"] as? Double else {return}
                guard let xpf = rates["XPF"] as? Double else {return} //Comptoirs Français du Pacifique (CFP) Franc
                guard let xpt = rates["XPT"] as? Double else {return}
                
                guard let yer = rates["YER"] as? Double else {return} //Yemen Rial
                
                guard let zar = rates["ZAR"] as? Double else {return} //South Africa Rand
                guard let zmw = rates["ZMW"] as? Double else {return} //Zambia Kwacha
                guard let zwl = rates["ZWL"] as? Double else {return} //zimbabwe
                
//                print(aed , afn , all , amd , ang , aoa , ars , aud , awg , azn )
//                print("B")
//                print(bam, bbd , bdt , bgn , bhd , bif , bmd, bnd , bob , brl , bsd , btc , btn, bwp , byn , bzd)
//                print("C")
//                print(cad,cdf,chf,clf,clp,cnh,cny,cop,crc,cuc,cup,cve,czk )
//                print("D")
//                print(djf,dkk,dop,dzd)
//                print("E")
//                print(egp,ern,etb,eur)
//                print("F")
//                print(fjd,fkp)
//                print("G")
//                print(gbp,gel,ggp,ghs,gip,gmd,gnf,gtq,gyd)
//                print("H")
//                print(hkd,hnl,hrk,htg,huf)
//                print("I")
//                print(idr,ils,imp,inr,iqd,irr,isk)
//                print("J")
//                print(jep,jmd,jod,jpy)
//                print("K")
//                print(kes,kgs,khr,kmf,kpw,krw,kwd,kyd,kzt)
//                print("L")
//                print(lak,lbp,lkr,lrd,lsl,lyd)
//                print("M")
//                print(mad,mdl,mga,mkd,mmk,mnt,mop,mro,mur,mvr,mwk,mxn,myr,mzn)
//                print("N")
//                print(nad,ngn,nio,nok,npr,nzd)
//                print("O")
//                print(omr)
//                print("P")
//                print(pab,pen,pgk,php,pkr,pln,pyg)
//                print("Q")
//                print(qar)
//                print("R")
//                print(ron,rsd,rub,rwf)
//                print("S")
//                print(sar,sbd,scr,sdg,sek,sgd,shp,sll,sos,srd,ssp,std,svc,syp,szl)
//                print("T")
//                print(thb,tjs,tmt,tnd,top,trys,ttd,twd,tzs)
//                print("U")
//                print(uah,ugx,usd,uyu,uzs)
//                print("V")
//                print(vef,vnd,vuv)
//                print("W")
//                print(wst)
//                print("X")
//                print(xaf,xag,xau,xcd,xdr,xof,xpd,xpf,xpt)
//                print("Y")
//                print(yer)
//                print("Z")
//                print(zar,zmw,zwl)
//                
//                print(usd * 5 * lkr)
                
                
                
                
            }catch {
                
            }
        }
        urls.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if let text = sender.titleLabel?.text {
            print(text)
        }
        
    }
    
    
}

