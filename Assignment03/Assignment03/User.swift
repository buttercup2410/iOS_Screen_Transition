//
//  User.swift
//  Assignment03
//
//  Created by Nishi Mewada on 02/02/24.
//

import Foundation

class User{
    var pname:String?
    var pemail:String?
    var prole:String?
    
//    var pincome:String?
//    var peducation:String?
//    var pmarital:String?
//    var pliving:String?
    
    private var _pincome: String?
    var pincome: String? {
        get {
            return _pincome
        }
        set(newValue) {
            // You can add custom logic here if needed
            _pincome = newValue
        }
    }

    private var _peducation: String?
    var peducation: String? {
        get {
            return _peducation
        }
        set(newValue) {
            // You can add custom logic here if needed
            _peducation = newValue
        }
    }

    private var _pmarital: String?
    var pmarital: String? {
        get {
            return _pmarital
        }
        set(newValue) {
            // You can add custom logic here if needed
            _pmarital = newValue
        }
    }

    private var _pliving: String?
    var pliving: String? {
        get {
            return _pliving
        }
        set(newValue) {
            // You can add custom logic here if needed
            _pliving = newValue
        }
    }
    
    init(pname: String? = nil, pemail: String? = nil, prole: String? = nil, pincome: String? = nil, peducation: String? = nil, pmarital: String? = nil, pliving: String? = nil) {
        self.pname = pname
        self.pemail = pemail
        self.prole = prole
//        self.pincome = pincome
//        self.peducation = peducation
//        self.pmarital = pmarital
//        self.pliving = pliving
    }
    
    

}
