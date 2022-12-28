# SystemConfigAPI

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getConfig**](SystemConfigAPI.md#getconfig) | **GET** /system-config | 
[**getDefaults**](SystemConfigAPI.md#getdefaults) | **GET** /system-config/defaults | 
[**getStorageTemplateOptions**](SystemConfigAPI.md#getstoragetemplateoptions) | **GET** /system-config/storage-template-options | 
[**updateConfig**](SystemConfigAPI.md#updateconfig) | **PUT** /system-config | 


# **getConfig**
```swift
    open class func getConfig(completion: @escaping (_ data: SystemConfigDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


SystemConfigAPI.getConfig() { (response, error) in
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

[**SystemConfigDto**](SystemConfigDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDefaults**
```swift
    open class func getDefaults(completion: @escaping (_ data: SystemConfigDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


SystemConfigAPI.getDefaults() { (response, error) in
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

[**SystemConfigDto**](SystemConfigDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStorageTemplateOptions**
```swift
    open class func getStorageTemplateOptions(completion: @escaping (_ data: SystemConfigTemplateStorageOptionDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


SystemConfigAPI.getStorageTemplateOptions() { (response, error) in
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

[**SystemConfigTemplateStorageOptionDto**](SystemConfigTemplateStorageOptionDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConfig**
```swift
    open class func updateConfig(systemConfigDto: SystemConfigDto, completion: @escaping (_ data: SystemConfigDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let systemConfigDto = SystemConfigDto(ffmpeg: SystemConfigFFmpegDto(crf: "crf_example", preset: "preset_example", targetVideoCodec: "targetVideoCodec_example", targetAudioCodec: "targetAudioCodec_example", targetScaling: "targetScaling_example"), oauth: SystemConfigOAuthDto(enabled: false, issuerUrl: "issuerUrl_example", clientId: "clientId_example", clientSecret: "clientSecret_example", scope: "scope_example", buttonText: "buttonText_example", autoRegister: false), storageTemplate: SystemConfigStorageTemplateDto(template: "template_example")) // SystemConfigDto | 

SystemConfigAPI.updateConfig(systemConfigDto: systemConfigDto) { (response, error) in
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
 **systemConfigDto** | [**SystemConfigDto**](SystemConfigDto.md) |  | 

### Return type

[**SystemConfigDto**](SystemConfigDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

