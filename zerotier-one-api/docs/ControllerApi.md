# \ControllerApi

All URIs are relative to *http://localhost:9993*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_controller_network**](ControllerApi.md#generate_controller_network) | **POST** /controller/network/{controllerID}______ | Generate Random Network ID.
[**get_controller_network**](ControllerApi.md#get_controller_network) | **GET** /controller/network/{networkID} | Get Network by ID.
[**get_controller_network_member**](ControllerApi.md#get_controller_network_member) | **GET** /controller/network/{networkID}/member{nodeID} | Get Network Member Details by ID.
[**get_controller_network_members**](ControllerApi.md#get_controller_network_members) | **GET** /controller/network/{networkID}/member | List Network Members.
[**get_controller_networks**](ControllerApi.md#get_controller_networks) | **GET** /controller/network | List Networks.
[**get_controller_status**](ControllerApi.md#get_controller_status) | **GET** /controller | Get Controller Status.
[**set_controller_network**](ControllerApi.md#set_controller_network) | **POST** /controller/network/{networkID} | Create or Update a Network.



## generate_controller_network

> crate::models::ControllerNetwork generate_controller_network(controller_id, controller_network)
Generate Random Network ID.

Create a new network with a random ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**controller_id** | **String** | Node ID of the controller. | [required] |
**controller_network** | [**ControllerNetwork**](ControllerNetwork.md) | Network object JSON. | [required] |

### Return type

[**crate::models::ControllerNetwork**](ControllerNetwork.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_controller_network

> crate::models::ControllerNetwork get_controller_network(network_id)
Get Network by ID.

Get details of a network by it's ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**network_id** | **String** | ID of the network. | [required] |

### Return type

[**crate::models::ControllerNetwork**](ControllerNetwork.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_controller_network_member

> crate::models::ControllerNetworkMember get_controller_network_member(network_id, node_id)
Get Network Member Details by ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**network_id** | **String** | ID of the network. | [required] |
**node_id** | **String** | ID of the member node. | [required] |

### Return type

[**crate::models::ControllerNetworkMember**](ControllerNetworkMember.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_controller_network_members

> ::std::collections::HashMap<String, i32> get_controller_network_members(network_id)
List Network Members.

JSON object containing all member IDs as keys and their memberRevisionCounter values as values.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**network_id** | **String** | ID of the network. | [required] |

### Return type

**::std::collections::HashMap<String, i32>**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_controller_networks

> Vec<String> get_controller_networks()
List Networks.

List IDs of all networks hosted by this controller.

### Parameters

This endpoint does not need any parameter.

### Return type

**Vec<String>**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_controller_status

> crate::models::ControllerStatus get_controller_status()
Get Controller Status.

Check for controller function and return controller status.

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::ControllerStatus**](ControllerStatus.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_controller_network

> crate::models::ControllerNetwork set_controller_network(network_id, controller_network)
Create or Update a Network.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**network_id** | **String** | ID of the network. | [required] |
**controller_network** | [**ControllerNetwork**](ControllerNetwork.md) | Network object JSON. | [required] |

### Return type

[**crate::models::ControllerNetwork**](ControllerNetwork.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

