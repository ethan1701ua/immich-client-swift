# DeviceInfoAPI

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeviceInfo**](DeviceInfoAPI.md#createdeviceinfo) | **POST** /device-info | 
[**updateDeviceInfo**](DeviceInfoAPI.md#updatedeviceinfo) | **PATCH** /device-info | 
[**upsertDeviceInfo**](DeviceInfoAPI.md#upsertdeviceinfo) | **PUT** /device-info | 


# **createDeviceInfo**
```swift
    open class func createDeviceInfo(upsertDeviceInfoDto: UpsertDeviceInfoDto, completion: @escaping (_ data: DeviceInfoResponseDto?, _ error: Error?) -> Void)
```



@deprecated

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let upsertDeviceInfoDto = UpsertDeviceInfoDto(deviceType: DeviceTypeEnum(), deviceId: "deviceId_example", isAutoBackup: false) // UpsertDeviceInfoDto | 

DeviceInfoAPI.createDeviceInfo(upsertDeviceInfoDto: upsertDeviceInfoDto) { (response, error) in
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
 **upsertDeviceInfoDto** | [**UpsertDeviceInfoDto**](UpsertDeviceInfoDto.md) |  | 

### Return type

[**DeviceInfoResponseDto**](DeviceInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeviceInfo**
```swift
    open class func updateDeviceInfo(upsertDeviceInfoDto: UpsertDeviceInfoDto, completion: @escaping (_ data: DeviceInfoResponseDto?, _ error: Error?) -> Void)
```



@deprecated

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let upsertDeviceInfoDto = UpsertDeviceInfoDto(deviceType: DeviceTypeEnum(), deviceId: "deviceId_example", isAutoBackup: false) // UpsertDeviceInfoDto | 

DeviceInfoAPI.updateDeviceInfo(upsertDeviceInfoDto: upsertDeviceInfoDto) { (response, error) in
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
 **upsertDeviceInfoDto** | [**UpsertDeviceInfoDto**](UpsertDeviceInfoDto.md) |  | 

### Return type

[**DeviceInfoResponseDto**](DeviceInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertDeviceInfo**
```swift
    open class func upsertDeviceInfo(upsertDeviceInfoDto: UpsertDeviceInfoDto, completion: @escaping (_ data: DeviceInfoResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let upsertDeviceInfoDto = UpsertDeviceInfoDto(deviceType: DeviceTypeEnum(), deviceId: "deviceId_example", isAutoBackup: false) // UpsertDeviceInfoDto | 

DeviceInfoAPI.upsertDeviceInfo(upsertDeviceInfoDto: upsertDeviceInfoDto) { (response, error) in
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
 **upsertDeviceInfoDto** | [**UpsertDeviceInfoDto**](UpsertDeviceInfoDto.md) |  | 

### Return type

[**DeviceInfoResponseDto**](DeviceInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

