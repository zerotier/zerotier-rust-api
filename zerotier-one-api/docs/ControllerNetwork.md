# ControllerNetwork

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**String**> |  | [optional][readonly]
**nwid** | Option<**String**> |  | [optional][readonly]
**objtype** | Option<**String**> |  | [optional][readonly]
**name** | Option<**String**> |  | [optional]
**creation_time** | Option<**f32**> |  | [optional][readonly]
**private** | Option<**bool**> |  | [optional]
**enable_broadcast** | Option<**bool**> |  | [optional]
**v4_assign_mode** | Option<[**crate::models::ControllerNetworkV4AssignMode**](ControllerNetwork_v4AssignMode.md)> |  | [optional]
**v6_assign_mode** | Option<[**crate::models::ControllerNetworkV6AssignMode**](ControllerNetwork_v6AssignMode.md)> |  | [optional]
**mtu** | Option<**i32**> |  | [optional]
**multicast_limit** | Option<**i32**> |  | [optional]
**revision** | Option<**i32**> |  | [optional][readonly]
**routes** | Option<[**Vec<crate::models::ControllerNetworkRoutes>**](ControllerNetwork_routes.md)> |  | [optional]
**ip_assignment_pools** | Option<[**Vec<crate::models::ControllerNetworkIpAssignmentPools>**](ControllerNetwork_ipAssignmentPools.md)> |  | [optional]
**rules** | Option<[**Vec<serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**capabilities** | Option<[**Vec<serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**tags** | Option<[**Vec<serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**remote_trace_target** | Option<**String**> |  | [optional]
**remote_trace_level** | Option<**i32**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


