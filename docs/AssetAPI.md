# AssetAPI

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkDuplicateAsset**](AssetAPI.md#checkduplicateasset) | **POST** /asset/check | 
[**checkExistingAssets**](AssetAPI.md#checkexistingassets) | **POST** /asset/exist | 
[**deleteAsset**](AssetAPI.md#deleteasset) | **DELETE** /asset | 
[**downloadFile**](AssetAPI.md#downloadfile) | **GET** /asset/download/{assetId} | 
[**downloadLibrary**](AssetAPI.md#downloadlibrary) | **GET** /asset/download-library | 
[**getAllAssets**](AssetAPI.md#getallassets) | **GET** /asset | 
[**getAssetById**](AssetAPI.md#getassetbyid) | **GET** /asset/assetById/{assetId} | 
[**getAssetByTimeBucket**](AssetAPI.md#getassetbytimebucket) | **POST** /asset/time-bucket | 
[**getAssetCountByTimeBucket**](AssetAPI.md#getassetcountbytimebucket) | **POST** /asset/count-by-time-bucket | 
[**getAssetCountByUserId**](AssetAPI.md#getassetcountbyuserid) | **GET** /asset/count-by-user-id | 
[**getAssetSearchTerms**](AssetAPI.md#getassetsearchterms) | **GET** /asset/search-terms | 
[**getAssetThumbnail**](AssetAPI.md#getassetthumbnail) | **GET** /asset/thumbnail/{assetId} | 
[**getCuratedLocations**](AssetAPI.md#getcuratedlocations) | **GET** /asset/curated-locations | 
[**getCuratedObjects**](AssetAPI.md#getcuratedobjects) | **GET** /asset/curated-objects | 
[**getUserAssetsByDeviceId**](AssetAPI.md#getuserassetsbydeviceid) | **GET** /asset/{deviceId} | 
[**searchAsset**](AssetAPI.md#searchasset) | **POST** /asset/search | 
[**serveFile**](AssetAPI.md#servefile) | **GET** /asset/file/{assetId} | 
[**updateAsset**](AssetAPI.md#updateasset) | **PUT** /asset/{assetId} | 
[**uploadFile**](AssetAPI.md#uploadfile) | **POST** /asset/upload | 


# **checkDuplicateAsset**
```swift
    open class func checkDuplicateAsset(checkDuplicateAssetDto: CheckDuplicateAssetDto, completion: @escaping (_ data: CheckDuplicateAssetResponseDto?, _ error: Error?) -> Void)
```



Check duplicated asset before uploading - for Web upload used

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let checkDuplicateAssetDto = CheckDuplicateAssetDto(deviceAssetId: "deviceAssetId_example", deviceId: "deviceId_example") // CheckDuplicateAssetDto | 

AssetAPI.checkDuplicateAsset(checkDuplicateAssetDto: checkDuplicateAssetDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkDuplicateAssetDto** | [**CheckDuplicateAssetDto**](CheckDuplicateAssetDto.md) |  | 

### Return type

[**CheckDuplicateAssetResponseDto**](CheckDuplicateAssetResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkExistingAssets**
```swift
    open class func checkExistingAssets(checkExistingAssetsDto: CheckExistingAssetsDto, completion: @escaping (_ data: CheckExistingAssetsResponseDto?, _ error: Error?) -> Void)
```



Checks if multiple assets exist on the server and returns all existing - used by background backup

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let checkExistingAssetsDto = CheckExistingAssetsDto(deviceAssetIds: ["deviceAssetIds_example"], deviceId: "deviceId_example") // CheckExistingAssetsDto | 

AssetAPI.checkExistingAssets(checkExistingAssetsDto: checkExistingAssetsDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkExistingAssetsDto** | [**CheckExistingAssetsDto**](CheckExistingAssetsDto.md) |  | 

### Return type

[**CheckExistingAssetsResponseDto**](CheckExistingAssetsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAsset**
```swift
    open class func deleteAsset(deleteAssetDto: DeleteAssetDto, completion: @escaping (_ data: [DeleteAssetResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let deleteAssetDto = DeleteAssetDto(ids: ["ids_example"]) // DeleteAssetDto | 

AssetAPI.deleteAsset(deleteAssetDto: deleteAssetDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteAssetDto** | [**DeleteAssetDto**](DeleteAssetDto.md) |  | 

### Return type

[**[DeleteAssetResponseDto]**](DeleteAssetResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadFile**
```swift
    open class func downloadFile(assetId: String, isThumb: Bool? = nil, isWeb: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let assetId = "assetId_example" // String | 
let isThumb = true // Bool |  (optional)
let isWeb = true // Bool |  (optional)

AssetAPI.downloadFile(assetId: assetId, isThumb: isThumb, isWeb: isWeb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String** |  | 
 **isThumb** | **Bool** |  | [optional] 
 **isWeb** | **Bool** |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadLibrary**
```swift
    open class func downloadLibrary(skip: Double? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let skip = 987 // Double |  (optional)

AssetAPI.downloadLibrary(skip: skip) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skip** | **Double** |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAssets**
```swift
    open class func getAllAssets(ifNoneMatch: String? = nil, completion: @escaping (_ data: [AssetResponseDto]?, _ error: Error?) -> Void)
```



Get all AssetEntity belong to the user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let ifNoneMatch = "ifNoneMatch_example" // String | ETag of data already cached on the client (optional)

AssetAPI.getAllAssets(ifNoneMatch: ifNoneMatch) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ifNoneMatch** | **String** | ETag of data already cached on the client | [optional] 

### Return type

[**[AssetResponseDto]**](AssetResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetById**
```swift
    open class func getAssetById(assetId: String, completion: @escaping (_ data: AssetResponseDto?, _ error: Error?) -> Void)
```



Get a single asset's information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let assetId = "assetId_example" // String | 

AssetAPI.getAssetById(assetId: assetId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String** |  | 

### Return type

[**AssetResponseDto**](AssetResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetByTimeBucket**
```swift
    open class func getAssetByTimeBucket(getAssetByTimeBucketDto: GetAssetByTimeBucketDto, completion: @escaping (_ data: [AssetResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let getAssetByTimeBucketDto = GetAssetByTimeBucketDto(timeBucket: ["timeBucket_example"]) // GetAssetByTimeBucketDto | 

AssetAPI.getAssetByTimeBucket(getAssetByTimeBucketDto: getAssetByTimeBucketDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getAssetByTimeBucketDto** | [**GetAssetByTimeBucketDto**](GetAssetByTimeBucketDto.md) |  | 

### Return type

[**[AssetResponseDto]**](AssetResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetCountByTimeBucket**
```swift
    open class func getAssetCountByTimeBucket(getAssetCountByTimeBucketDto: GetAssetCountByTimeBucketDto, completion: @escaping (_ data: AssetCountByTimeBucketResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let getAssetCountByTimeBucketDto = GetAssetCountByTimeBucketDto(timeGroup: TimeGroupEnum()) // GetAssetCountByTimeBucketDto | 

AssetAPI.getAssetCountByTimeBucket(getAssetCountByTimeBucketDto: getAssetCountByTimeBucketDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getAssetCountByTimeBucketDto** | [**GetAssetCountByTimeBucketDto**](GetAssetCountByTimeBucketDto.md) |  | 

### Return type

[**AssetCountByTimeBucketResponseDto**](AssetCountByTimeBucketResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetCountByUserId**
```swift
    open class func getAssetCountByUserId(completion: @escaping (_ data: AssetCountByUserIdResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


AssetAPI.getAssetCountByUserId() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AssetCountByUserIdResponseDto**](AssetCountByUserIdResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetSearchTerms**
```swift
    open class func getAssetSearchTerms(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


AssetAPI.getAssetSearchTerms() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetThumbnail**
```swift
    open class func getAssetThumbnail(assetId: String, format: ThumbnailFormat? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let assetId = "assetId_example" // String | 
let format = ThumbnailFormat() // ThumbnailFormat |  (optional)

AssetAPI.getAssetThumbnail(assetId: assetId, format: format) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String** |  | 
 **format** | [**ThumbnailFormat**](.md) |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCuratedLocations**
```swift
    open class func getCuratedLocations(completion: @escaping (_ data: [CuratedLocationsResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


AssetAPI.getCuratedLocations() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[CuratedLocationsResponseDto]**](CuratedLocationsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCuratedObjects**
```swift
    open class func getCuratedObjects(completion: @escaping (_ data: [CuratedObjectsResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


AssetAPI.getCuratedObjects() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[CuratedObjectsResponseDto]**](CuratedObjectsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAssetsByDeviceId**
```swift
    open class func getUserAssetsByDeviceId(deviceId: String, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```



Get all asset of a device that are in the database, ID only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let deviceId = "deviceId_example" // String | 

AssetAPI.getUserAssetsByDeviceId(deviceId: deviceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String** |  | 

### Return type

**[String]**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAsset**
```swift
    open class func searchAsset(searchAssetDto: SearchAssetDto, completion: @escaping (_ data: [AssetResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let searchAssetDto = SearchAssetDto(searchTerm: "searchTerm_example") // SearchAssetDto | 

AssetAPI.searchAsset(searchAssetDto: searchAssetDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchAssetDto** | [**SearchAssetDto**](SearchAssetDto.md) |  | 

### Return type

[**[AssetResponseDto]**](AssetResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serveFile**
```swift
    open class func serveFile(assetId: String, isThumb: Bool? = nil, isWeb: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let assetId = "assetId_example" // String | 
let isThumb = true // Bool |  (optional)
let isWeb = true // Bool |  (optional)

AssetAPI.serveFile(assetId: assetId, isThumb: isThumb, isWeb: isWeb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String** |  | 
 **isThumb** | **Bool** |  | [optional] 
 **isWeb** | **Bool** |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAsset**
```swift
    open class func updateAsset(assetId: String, updateAssetDto: UpdateAssetDto, completion: @escaping (_ data: AssetResponseDto?, _ error: Error?) -> Void)
```



Update an asset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let assetId = "assetId_example" // String | 
let updateAssetDto = UpdateAssetDto(tagIds: ["tagIds_example"], isFavorite: false) // UpdateAssetDto | 

AssetAPI.updateAsset(assetId: assetId, updateAssetDto: updateAssetDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String** |  | 
 **updateAssetDto** | [**UpdateAssetDto**](UpdateAssetDto.md) |  | 

### Return type

[**AssetResponseDto**](AssetResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFile**
```swift
    open class func uploadFile(assetData: URL, completion: @escaping (_ data: AssetFileUploadResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let assetData = URL(string: "https://example.com")! // URL | 

AssetAPI.uploadFile(assetData: assetData) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetData** | **URL** |  | 

### Return type

[**AssetFileUploadResponseDto**](AssetFileUploadResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

