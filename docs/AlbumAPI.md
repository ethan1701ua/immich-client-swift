# AlbumAPI

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAssetsToAlbum**](AlbumAPI.md#addassetstoalbum) | **PUT** /album/{albumId}/assets | 
[**addUsersToAlbum**](AlbumAPI.md#adduserstoalbum) | **PUT** /album/{albumId}/users | 
[**createAlbum**](AlbumAPI.md#createalbum) | **POST** /album | 
[**deleteAlbum**](AlbumAPI.md#deletealbum) | **DELETE** /album/{albumId} | 
[**downloadArchive**](AlbumAPI.md#downloadarchive) | **GET** /album/{albumId}/download | 
[**getAlbumCountByUserId**](AlbumAPI.md#getalbumcountbyuserid) | **GET** /album/count-by-user-id | 
[**getAlbumInfo**](AlbumAPI.md#getalbuminfo) | **GET** /album/{albumId} | 
[**getAllAlbums**](AlbumAPI.md#getallalbums) | **GET** /album | 
[**removeAssetFromAlbum**](AlbumAPI.md#removeassetfromalbum) | **DELETE** /album/{albumId}/assets | 
[**removeUserFromAlbum**](AlbumAPI.md#removeuserfromalbum) | **DELETE** /album/{albumId}/user/{userId} | 
[**updateAlbumInfo**](AlbumAPI.md#updatealbuminfo) | **PATCH** /album/{albumId} | 


# **addAssetsToAlbum**
```swift
    open class func addAssetsToAlbum(albumId: String, addAssetsDto: AddAssetsDto, completion: @escaping (_ data: AddAssetsResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let albumId = "albumId_example" // String | 
let addAssetsDto = AddAssetsDto(assetIds: ["assetIds_example"]) // AddAssetsDto | 

AlbumAPI.addAssetsToAlbum(albumId: albumId, addAssetsDto: addAssetsDto) { (response, error) in
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
 **albumId** | **String** |  | 
 **addAssetsDto** | [**AddAssetsDto**](AddAssetsDto.md) |  | 

### Return type

[**AddAssetsResponseDto**](AddAssetsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addUsersToAlbum**
```swift
    open class func addUsersToAlbum(albumId: String, addUsersDto: AddUsersDto, completion: @escaping (_ data: AlbumResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let albumId = "albumId_example" // String | 
let addUsersDto = AddUsersDto(sharedUserIds: ["sharedUserIds_example"]) // AddUsersDto | 

AlbumAPI.addUsersToAlbum(albumId: albumId, addUsersDto: addUsersDto) { (response, error) in
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
 **albumId** | **String** |  | 
 **addUsersDto** | [**AddUsersDto**](AddUsersDto.md) |  | 

### Return type

[**AlbumResponseDto**](AlbumResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAlbum**
```swift
    open class func createAlbum(createAlbumDto: CreateAlbumDto, completion: @escaping (_ data: AlbumResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let createAlbumDto = CreateAlbumDto(albumName: "albumName_example", sharedWithUserIds: ["sharedWithUserIds_example"], assetIds: ["assetIds_example"]) // CreateAlbumDto | 

AlbumAPI.createAlbum(createAlbumDto: createAlbumDto) { (response, error) in
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
 **createAlbumDto** | [**CreateAlbumDto**](CreateAlbumDto.md) |  | 

### Return type

[**AlbumResponseDto**](AlbumResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlbum**
```swift
    open class func deleteAlbum(albumId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let albumId = "albumId_example" // String | 

AlbumAPI.deleteAlbum(albumId: albumId) { (response, error) in
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
 **albumId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadArchive**
```swift
    open class func downloadArchive(albumId: String, skip: Double? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let albumId = "albumId_example" // String | 
let skip = 987 // Double |  (optional)

AlbumAPI.downloadArchive(albumId: albumId, skip: skip) { (response, error) in
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
 **albumId** | **String** |  | 
 **skip** | **Double** |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlbumCountByUserId**
```swift
    open class func getAlbumCountByUserId(completion: @escaping (_ data: AlbumCountResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


AlbumAPI.getAlbumCountByUserId() { (response, error) in
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

[**AlbumCountResponseDto**](AlbumCountResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlbumInfo**
```swift
    open class func getAlbumInfo(albumId: String, completion: @escaping (_ data: AlbumResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let albumId = "albumId_example" // String | 

AlbumAPI.getAlbumInfo(albumId: albumId) { (response, error) in
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
 **albumId** | **String** |  | 

### Return type

[**AlbumResponseDto**](AlbumResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAlbums**
```swift
    open class func getAllAlbums(shared: Bool? = nil, assetId: String? = nil, completion: @escaping (_ data: [AlbumResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let shared = true // Bool |  (optional)
let assetId = "assetId_example" // String | Only returns albums that contain the asset Ignores the shared parameter undefined: get all albums (optional)

AlbumAPI.getAllAlbums(shared: shared, assetId: assetId) { (response, error) in
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
 **shared** | **Bool** |  | [optional] 
 **assetId** | **String** | Only returns albums that contain the asset Ignores the shared parameter undefined: get all albums | [optional] 

### Return type

[**[AlbumResponseDto]**](AlbumResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAssetFromAlbum**
```swift
    open class func removeAssetFromAlbum(albumId: String, removeAssetsDto: RemoveAssetsDto, completion: @escaping (_ data: AlbumResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let albumId = "albumId_example" // String | 
let removeAssetsDto = RemoveAssetsDto(assetIds: ["assetIds_example"]) // RemoveAssetsDto | 

AlbumAPI.removeAssetFromAlbum(albumId: albumId, removeAssetsDto: removeAssetsDto) { (response, error) in
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
 **albumId** | **String** |  | 
 **removeAssetsDto** | [**RemoveAssetsDto**](RemoveAssetsDto.md) |  | 

### Return type

[**AlbumResponseDto**](AlbumResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserFromAlbum**
```swift
    open class func removeUserFromAlbum(albumId: String, userId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let albumId = "albumId_example" // String | 
let userId = "userId_example" // String | 

AlbumAPI.removeUserFromAlbum(albumId: albumId, userId: userId) { (response, error) in
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
 **albumId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAlbumInfo**
```swift
    open class func updateAlbumInfo(albumId: String, updateAlbumDto: UpdateAlbumDto, completion: @escaping (_ data: AlbumResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let albumId = "albumId_example" // String | 
let updateAlbumDto = UpdateAlbumDto(albumName: "albumName_example", albumThumbnailAssetId: "albumThumbnailAssetId_example") // UpdateAlbumDto | 

AlbumAPI.updateAlbumInfo(albumId: albumId, updateAlbumDto: updateAlbumDto) { (response, error) in
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
 **albumId** | **String** |  | 
 **updateAlbumDto** | [**UpdateAlbumDto**](UpdateAlbumDto.md) |  | 

### Return type

[**AlbumResponseDto**](AlbumResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

