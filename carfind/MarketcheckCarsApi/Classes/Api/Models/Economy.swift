//
// Economy.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Economy: Codable {

    /** Show vehicle impact on climate change in terms of greeenhouse gases. This rating will be in the range of 1 - 10 */
    public var ghgEmissionsRating: Double?
    /** Contains text like bad|Good|Very Good| Excellent */
    public var ghgEmissionsIndicator: String?
    /** Shows vehicle&#39;s emissions of pollutants known to cause smog and other forms of air pollution. This rating will be in the range of 1 - 10 */
    public var smogRating: Double?
    /** Contains text like bad|Good|Very Good| Excellent */
    public var smogIndicator: String?


    public enum CodingKeys: String, CodingKey { 
        case ghgEmissionsRating = "ghg_emissions_rating"
        case ghgEmissionsIndicator = "ghg_emissions_indicator"
        case smogRating = "smog_rating"
        case smogIndicator = "smog_indicator"
    }


}

