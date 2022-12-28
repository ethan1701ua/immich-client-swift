# JobAPI

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllJobsStatus**](JobAPI.md#getalljobsstatus) | **GET** /jobs | 
[**getJobStatus**](JobAPI.md#getjobstatus) | **GET** /jobs/{jobId} | 
[**sendJobCommand**](JobAPI.md#sendjobcommand) | **PUT** /jobs/{jobId} | 


# **getAllJobsStatus**
```swift
    open class func getAllJobsStatus(completion: @escaping (_ data: AllJobStatusResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


JobAPI.getAllJobsStatus() { (response, error) in
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

[**AllJobStatusResponseDto**](AllJobStatusResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobStatus**
```swift
    open class func getJobStatus(jobId: JobId, completion: @escaping (_ data: JobStatusResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let jobId = JobId() // JobId | 

JobAPI.getJobStatus(jobId: jobId) { (response, error) in
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
 **jobId** | [**JobId**](.md) |  | 

### Return type

[**JobStatusResponseDto**](JobStatusResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendJobCommand**
```swift
    open class func sendJobCommand(jobId: JobId, jobCommandDto: JobCommandDto, completion: @escaping (_ data: Double?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let jobId = JobId() // JobId | 
let jobCommandDto = JobCommandDto(command: JobCommand()) // JobCommandDto | 

JobAPI.sendJobCommand(jobId: jobId, jobCommandDto: jobCommandDto) { (response, error) in
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
 **jobId** | [**JobId**](.md) |  | 
 **jobCommandDto** | [**JobCommandDto**](JobCommandDto.md) |  | 

### Return type

**Double**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

