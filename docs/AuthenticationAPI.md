# AuthenticationAPI

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminSignUp**](AuthenticationAPI.md#adminsignup) | **POST** /auth/admin-sign-up | 
[**changePassword**](AuthenticationAPI.md#changepassword) | **POST** /auth/change-password | 
[**login**](AuthenticationAPI.md#login) | **POST** /auth/login | 
[**logout**](AuthenticationAPI.md#logout) | **POST** /auth/logout | 
[**validateAccessToken**](AuthenticationAPI.md#validateaccesstoken) | **POST** /auth/validateToken | 


# **adminSignUp**
```swift
    open class func adminSignUp(signUpDto: SignUpDto, completion: @escaping (_ data: AdminSignupResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let signUpDto = SignUpDto(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example") // SignUpDto | 

AuthenticationAPI.adminSignUp(signUpDto: signUpDto) { (response, error) in
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
 **signUpDto** | [**SignUpDto**](SignUpDto.md) |  | 

### Return type

[**AdminSignupResponseDto**](AdminSignupResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changePassword**
```swift
    open class func changePassword(changePasswordDto: ChangePasswordDto, completion: @escaping (_ data: UserResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let changePasswordDto = ChangePasswordDto(password: "password_example", newPassword: "newPassword_example") // ChangePasswordDto | 

AuthenticationAPI.changePassword(changePasswordDto: changePasswordDto) { (response, error) in
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
 **changePasswordDto** | [**ChangePasswordDto**](ChangePasswordDto.md) |  | 

### Return type

[**UserResponseDto**](UserResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
```swift
    open class func login(loginCredentialDto: LoginCredentialDto, completion: @escaping (_ data: LoginResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich

let loginCredentialDto = LoginCredentialDto(email: "email_example", password: "password_example") // LoginCredentialDto | 

AuthenticationAPI.login(loginCredentialDto: loginCredentialDto) { (response, error) in
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
 **loginCredentialDto** | [**LoginCredentialDto**](LoginCredentialDto.md) |  | 

### Return type

[**LoginResponseDto**](LoginResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
```swift
    open class func logout(completion: @escaping (_ data: LogoutResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


AuthenticationAPI.logout() { (response, error) in
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

[**LogoutResponseDto**](LogoutResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateAccessToken**
```swift
    open class func validateAccessToken(completion: @escaping (_ data: ValidateAccessTokenResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Immich


AuthenticationAPI.validateAccessToken() { (response, error) in
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

[**ValidateAccessTokenResponseDto**](ValidateAccessTokenResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

