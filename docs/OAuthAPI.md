# OAuthAPI

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callback**](OAuthAPI.md#callback) | **POST** /oauth/callback | 
[**generateConfig**](OAuthAPI.md#generateconfig) | **POST** /oauth/config | 
[**link**](OAuthAPI.md#link) | **POST** /oauth/link | 
[**unlink**](OAuthAPI.md#unlink) | **POST** /oauth/unlink | 


# **callback**
```swift
    open class func callback(oAuthCallbackDto: OAuthCallbackDto, completion: @escaping (_ data: LoginResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let oAuthCallbackDto = OAuthCallbackDto(url: "url_example") // OAuthCallbackDto | 

OAuthAPI.callback(oAuthCallbackDto: oAuthCallbackDto) { (response, error) in
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
 **oAuthCallbackDto** | [**OAuthCallbackDto**](OAuthCallbackDto.md) |  | 

### Return type

[**LoginResponseDto**](LoginResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateConfig**
```swift
    open class func generateConfig(oAuthConfigDto: OAuthConfigDto, completion: @escaping (_ data: OAuthConfigResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let oAuthConfigDto = OAuthConfigDto(redirectUri: "redirectUri_example") // OAuthConfigDto | 

OAuthAPI.generateConfig(oAuthConfigDto: oAuthConfigDto) { (response, error) in
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
 **oAuthConfigDto** | [**OAuthConfigDto**](OAuthConfigDto.md) |  | 

### Return type

[**OAuthConfigResponseDto**](OAuthConfigResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **link**
```swift
    open class func link(oAuthCallbackDto: OAuthCallbackDto, completion: @escaping (_ data: UserResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let oAuthCallbackDto = OAuthCallbackDto(url: "url_example") // OAuthCallbackDto | 

OAuthAPI.link(oAuthCallbackDto: oAuthCallbackDto) { (response, error) in
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
 **oAuthCallbackDto** | [**OAuthCallbackDto**](OAuthCallbackDto.md) |  | 

### Return type

[**UserResponseDto**](UserResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlink**
```swift
    open class func unlink(completion: @escaping (_ data: UserResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


OAuthAPI.unlink() { (response, error) in
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

[**UserResponseDto**](UserResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

