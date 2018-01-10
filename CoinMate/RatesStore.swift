//
//  RatesStore.swift
//  CoinMate
//
//  Created by Virtual on 1/10/18.
//  Copyright © 2018 Virtual. All rights reserved.
//

import Foundation

class RatesStore {
    
    var aed: Double?
    var afn: Double?
    var all: Double?
    var amd: Double?
    var ang: Double?
    var aoa: Double?
    var ars: Double?
    var aud: Double?
    var awg: Double?
    var azn: Double?
    
    var bam: Double?
    var bbd: Double?
    var bdt: Double?
    var bgn: Double?
    var bhd: Double?
    var bif: Double?
    var bmd: Double?
    var bnd: Double?
    var bob: Double?
    var brl: Double?
    var bsd: Double?
    var btc: Double?
    var btn: Double?
    var bwp: Double?
    var byn: Double?
    var bzd: Double?
    
    var cad: Double?
    var cdf: Double?
    var chf: Double?
    var clf: Double?
    var clp: Double?
    var cnh: Double?
    var cny: Double?
    var cop: Double?
    var crc: Double?
    var cuc: Double?
    var cup: Double?
    var cve: Double?
    var czk: Double?
    
    init(dictionary: [String: Any]) {
        
        cad = dictionary["CAD"] as? Double
        cdf = dictionary["BBD"] as? Double
        chf = dictionary["BDT"] as? Double
        clf = dictionary["BGN"] as? Double
        clp = dictionary["BHD"] as? Double
        cnh = dictionary["BIF"] as? Double
        cny = dictionary["BMD"] as? Double
        cop = dictionary["BND"] as? Double
        crc = dictionary["BOB"] as? Double
        cuc = dictionary["BRL"] as? Double
        cup = dictionary["BSD"] as? Double
        cve = dictionary["BTC"] as? Double
        czk = dictionary["BTN"] as? Double
        
        bam = dictionary["BAM"] as? Double
        bbd = dictionary["BBD"] as? Double
        bdt = dictionary["BDT"] as? Double
        bgn = dictionary["BGN"] as? Double
        bhd = dictionary["BHD"] as? Double
        bif = dictionary["BIF"] as? Double
        bmd = dictionary["BMD"] as? Double
        bnd = dictionary["BND"] as? Double
        bob = dictionary["BOB"] as? Double
        brl = dictionary["BRL"] as? Double
        bsd = dictionary["BSD"] as? Double
        btc = dictionary["BTC"] as? Double
        btn = dictionary["BTN"] as? Double
        bwp = dictionary["BWP"] as? Double
        byn = dictionary["BYN"] as? Double
        bzd = dictionary["BZD"] as? Double
        
        aed = dictionary["AED"] as? Double
        afn = dictionary["AFN"] as? Double
        all = dictionary["ALL"] as? Double
        amd = dictionary["AMD"] as? Double
        ang = dictionary["ANG"] as? Double
        aoa = dictionary["AOA"] as? Double
        ars = dictionary["ARS"] as? Double
        aud = dictionary["AUD"] as? Double
        awg = dictionary["AWG"] as? Double
        azn = dictionary["AZN"] as? Double
        
        
        
        
    }
    
    
}
