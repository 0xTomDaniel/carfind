//
// InventoryAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class InventoryAPI {
    /**
     Dealer inventory
     
     - parameter dealerId: (path) Id representing the dealer to fetch the active inventory for 
     - parameter apiKey: (query) The API Authentication Key. Mandatory with all API calls. (optional)
     - parameter rows: (query) Number of results to return. Default is 10. Max is 50 (optional)
     - parameter start: (query) Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDealerActiveInventory(dealerId: String, apiKey: String? = nil, rows: Int? = nil, start: Int? = nil, completion: @escaping ((_ data: BaseListing?,_ error: Error?) -> Void)) {
        getDealerActiveInventoryWithRequestBuilder(dealerId: dealerId, apiKey: apiKey, rows: rows, start: start).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Dealer inventory
     - GET /dealer/{dealer_id}/active/inventory
     - Get a dealer's currently active inventory
     - examples: [{contentType=application/json, example={
  "ref_miles_dt" : 2,
  "scraped_at_date" : 1.46581298050294517310021547018550336360931396484375,
  "stock_no" : "stock_no",
  "dom" : 7.061401241503109105224211816675961017608642578125,
  "distance" : 1.489415909854170383397331534069962799549102783203125,
  "is_certified" : 1,
  "ref_miles" : "ref_miles",
  "source" : "source",
  "media" : {
    "photo_links" : [ "photo_links", "photo_links" ],
    "photo_link" : "photo_link"
  },
  "miles" : "miles",
  "last_seen_at_date" : "last_seen_at_date",
  "price" : "price",
  "seller_type" : "seller_type",
  "vin" : "vin",
  "ref_price" : "ref_price",
  "id" : "id",
  "first_seen_at_date" : "first_seen_at_date",
  "interior_color" : "interior_color",
  "heading" : "heading",
  "ref_price_dt" : 5,
  "first_seen_at" : 5.962133916683182377482808078639209270477294921875,
  "dom_180" : 9.301444243932575517419536481611430644989013671875,
  "vdp_url" : "vdp_url",
  "exterior_color" : "exterior_color",
  "build" : {
    "std_seating" : "std_seating",
    "year" : 2.027123023002321833274663731572218239307403564453125,
    "engine_aspiration" : "engine_aspiration",
    "city_miles" : "city_miles",
    "steering_type" : "steering_type",
    "overall_height" : "overall_height",
    "engine_block" : "engine_block",
    "transmission" : "transmission",
    "trim" : "trim",
    "engine" : "engine",
    "antibrake_sys" : "antibrake_sys",
    "body_type" : "body_type",
    "model" : "model",
    "fuel_type" : "fuel_type",
    "make" : "make",
    "overall_width" : "overall_width",
    "vehicle_type" : "vehicle_type",
    "drivetrain" : "drivetrain",
    "cylinders" : 7.3862819483858839220147274318151175975799560546875,
    "doors" : 4.1456080298839363962315474054776132106781005859375,
    "made_in" : "made_in",
    "overall_length" : "overall_length",
    "engine_size" : "engine_size",
    "engine_measure" : "engine_measure",
    "tank_size" : "tank_size",
    "highway_miles" : "highway_miles"
  },
  "dom_active" : 3.61607674925191080461672754609026014804840087890625,
  "dealer" : {
    "zip" : "zip",
    "target_url_used" : "target_url_used",
    "city" : "city",
    "latitude" : "latitude",
    "rating" : 1.231513536777255612975068288506008684635162353515625,
    "dealer_type" : "independent",
    "car_type" : "car_type",
    "target_url_new" : "target_url_new",
    "franchise_id" : "franchise_id",
    "phone" : "phone",
    "street" : "street",
    "name" : "name",
    "target_url_certified" : "target_url_certified",
    "id" : "id",
    "state" : "state",
    "longitude" : "longitude"
  },
  "inventory_type" : "inventory_type",
  "last_seen_at" : 6.02745618307040320615897144307382404804229736328125
}}]
     
     - parameter dealerId: (path) Id representing the dealer to fetch the active inventory for 
     - parameter apiKey: (query) The API Authentication Key. Mandatory with all API calls. (optional)
     - parameter rows: (query) Number of results to return. Default is 10. Max is 50 (optional)
     - parameter start: (query) Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows (optional)

     - returns: RequestBuilder<BaseListing> 
     */
    open class func getDealerActiveInventoryWithRequestBuilder(dealerId: String, apiKey: String? = nil, rows: Int? = nil, start: Int? = nil) -> RequestBuilder<BaseListing> {
        var path = "/dealer/{dealer_id}/active/inventory"
        let dealerIdPreEscape = "\(dealerId)"
        let dealerIdPostEscape = dealerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{dealer_id}", with: dealerIdPostEscape, options: .literal, range: nil)
        let URLString = MarketcheckCarsApiAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "api_key": apiKey, 
            "rows": rows?.encodeToJSON(), 
            "start": start?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<BaseListing>.Type = MarketcheckCarsApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Dealer's historical inventory
     
     - parameter dealerId: (path) Id representing the dealer to fetch the active inventory for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDealerHistoricalInventory(dealerId: String, completion: @escaping ((_ data: BaseListing?,_ error: Error?) -> Void)) {
        getDealerHistoricalInventoryWithRequestBuilder(dealerId: dealerId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Dealer's historical inventory
     - GET /dealer/{dealer_id}/historical/inventory
     - [v1 : Not Implemented Yet] - Get a dealer's historical inventory
     - examples: [{contentType=application/json, example={
  "ref_miles_dt" : 2,
  "scraped_at_date" : 1.46581298050294517310021547018550336360931396484375,
  "stock_no" : "stock_no",
  "dom" : 7.061401241503109105224211816675961017608642578125,
  "distance" : 1.489415909854170383397331534069962799549102783203125,
  "is_certified" : 1,
  "ref_miles" : "ref_miles",
  "source" : "source",
  "media" : {
    "photo_links" : [ "photo_links", "photo_links" ],
    "photo_link" : "photo_link"
  },
  "miles" : "miles",
  "last_seen_at_date" : "last_seen_at_date",
  "price" : "price",
  "seller_type" : "seller_type",
  "vin" : "vin",
  "ref_price" : "ref_price",
  "id" : "id",
  "first_seen_at_date" : "first_seen_at_date",
  "interior_color" : "interior_color",
  "heading" : "heading",
  "ref_price_dt" : 5,
  "first_seen_at" : 5.962133916683182377482808078639209270477294921875,
  "dom_180" : 9.301444243932575517419536481611430644989013671875,
  "vdp_url" : "vdp_url",
  "exterior_color" : "exterior_color",
  "build" : {
    "std_seating" : "std_seating",
    "year" : 2.027123023002321833274663731572218239307403564453125,
    "engine_aspiration" : "engine_aspiration",
    "city_miles" : "city_miles",
    "steering_type" : "steering_type",
    "overall_height" : "overall_height",
    "engine_block" : "engine_block",
    "transmission" : "transmission",
    "trim" : "trim",
    "engine" : "engine",
    "antibrake_sys" : "antibrake_sys",
    "body_type" : "body_type",
    "model" : "model",
    "fuel_type" : "fuel_type",
    "make" : "make",
    "overall_width" : "overall_width",
    "vehicle_type" : "vehicle_type",
    "drivetrain" : "drivetrain",
    "cylinders" : 7.3862819483858839220147274318151175975799560546875,
    "doors" : 4.1456080298839363962315474054776132106781005859375,
    "made_in" : "made_in",
    "overall_length" : "overall_length",
    "engine_size" : "engine_size",
    "engine_measure" : "engine_measure",
    "tank_size" : "tank_size",
    "highway_miles" : "highway_miles"
  },
  "dom_active" : 3.61607674925191080461672754609026014804840087890625,
  "dealer" : {
    "zip" : "zip",
    "target_url_used" : "target_url_used",
    "city" : "city",
    "latitude" : "latitude",
    "rating" : 1.231513536777255612975068288506008684635162353515625,
    "dealer_type" : "independent",
    "car_type" : "car_type",
    "target_url_new" : "target_url_new",
    "franchise_id" : "franchise_id",
    "phone" : "phone",
    "street" : "street",
    "name" : "name",
    "target_url_certified" : "target_url_certified",
    "id" : "id",
    "state" : "state",
    "longitude" : "longitude"
  },
  "inventory_type" : "inventory_type",
  "last_seen_at" : 6.02745618307040320615897144307382404804229736328125
}}]
     
     - parameter dealerId: (path) Id representing the dealer to fetch the active inventory for 

     - returns: RequestBuilder<BaseListing> 
     */
    open class func getDealerHistoricalInventoryWithRequestBuilder(dealerId: String) -> RequestBuilder<BaseListing> {
        var path = "/dealer/{dealer_id}/historical/inventory"
        let dealerIdPreEscape = "\(dealerId)"
        let dealerIdPostEscape = dealerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{dealer_id}", with: dealerIdPostEscape, options: .literal, range: nil)
        let URLString = MarketcheckCarsApiAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BaseListing>.Type = MarketcheckCarsApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
