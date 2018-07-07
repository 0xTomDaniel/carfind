//
// BaseListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Minimal set of attributes describing a listing */

public struct BaseListing: Codable {

    /** Unique identifier representing a specific listing from the Marketcheck database */
    public var _id: String?
    /** Listing title as displayed on the source website */
    public var heading: String?
    /** VIN for the car */
    public var vin: String?
    /** Stock no of the car */
    public var stockNo: String?
    /** Asking price for the car */
    public var price: String?
    /** Odometer reading / reported miles usage for the car */
    public var miles: String?
    /** Inventory type of car */
    public var inventoryType: String?
    /** Listing last seen at (most recent) timestamp */
    public var lastSeenAt: Double?
    /** Listing last seen at (most recent) date */
    public var lastSeenAtDate: String?
    /** Listing first seen at first scraped date */
    public var scrapedAtDate: Double?
    /** Listing first seen at first scraped timestamp */
    public var firstSeenAt: Double?
    /** Listing first seen at first scraped date */
    public var firstSeenAtDate: String?
    /** Last reported price for the car. If the asking price value is not or is available then the last_price could perhaps be used. last_price is the price for the car listed on the source website as of last_price_dt date */
    public var refPrice: String?
    /** Last Odometer reading / reported miles usage for the car. If the asking miles value is not or is available then the last_miles could perhaps be used. last_miles is the miles for the car listed on the source website as of last_miles_dt date */
    public var refMiles: String?
    /** The date at which the last price was reported online. This is earlier to last_seen_date */
    public var refPriceDt: Int?
    /** The date at which the last miles was reported online. This is earlier to last_seen_date */
    public var refMilesDt: Int?
    /** Days on Market value for the car based on current and historical listings found in the Marketcheck database for this car */
    public var dom: Double?
    /** Days on Market value for the car based on current and last 6 month listings found in the Marketcheck database for this car */
    public var dom180: Double?
    /** Days on Market value for the car based on current and last 30 days listings found in the Marketcheck database for this car */
    public var domActive: Double?
    /** Seller type for the car */
    public var sellerType: String?
    /** Exterior color of the car */
    public var exteriorColor: String?
    /** Interior color of the car */
    public var interiorColor: String?
    /** Vehicle Details Page url of the specific car */
    public var vdpUrl: String?
    /** Source domain of the listing */
    public var source: String?
    /** Car Media Attributes - main photo link/url and photo links */
    public var media: ListingMedia?
    public var build: Build?
    public var dealer: Dealer?
    /** Certified car */
    public var isCertified: Int?
    /** Distance of the car&#39;s location from the specified user lcoation */
    public var distance: Double?


    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case heading
        case vin
        case stockNo = "stock_no"
        case price
        case miles
        case inventoryType = "inventory_type"
        case lastSeenAt = "last_seen_at"
        case lastSeenAtDate = "last_seen_at_date"
        case scrapedAtDate = "scraped_at_date"
        case firstSeenAt = "first_seen_at"
        case firstSeenAtDate = "first_seen_at_date"
        case refPrice = "ref_price"
        case refMiles = "ref_miles"
        case refPriceDt = "ref_price_dt"
        case refMilesDt = "ref_miles_dt"
        case dom
        case dom180 = "dom_180"
        case domActive = "dom_active"
        case sellerType = "seller_type"
        case exteriorColor = "exterior_color"
        case interiorColor = "interior_color"
        case vdpUrl = "vdp_url"
        case source
        case media
        case build
        case dealer
        case isCertified = "is_certified"
        case distance
    }


}
