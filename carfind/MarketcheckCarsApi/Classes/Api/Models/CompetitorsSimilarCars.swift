//
// CompetitorsSimilarCars.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CompetitorsSimilarCars: Codable {

    /** ymm_comb_name */
    public var name: String?
    /** Average price of year make model combination */
    public var avgPrice: Double?
    /** Average mileage of year make model combination */
    public var avgMiles: Double?
    /** Average market value of year make model combination */
    public var avgMarketValue: Double?


    public enum CodingKeys: String, CodingKey { 
        case name
        case avgPrice = "avg_price"
        case avgMiles = "avg_miles"
        case avgMarketValue = "avg_market_value"
    }


}

