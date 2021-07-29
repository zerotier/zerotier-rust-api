/*
 * ZeroTierOne Service API
 *
 * <p> This API controls the ZeroTier service that runs in the background on your computer. This is how zerotier-cli, and the macOS and Windows apps control the service. </p> <p> API requests must be authenticated via an authentication token. ZeroTier One saves this token in the authtoken.secret file in its working directory. This token may be supplied via the X-ZT1-Auth HTTP request header. </p> <p> For example: <code>curl -H \"X-ZT1-Auth: $TOKEN\" http://localhost:9993/status</code> </p> <p> The token can be found in: <ul> <li>Mac :: /Library/Application Support/ZeroTier/One</li> <li>Windows :: \\ProgramData\\ZeroTier\\One</li> <li>Linux :: /var/lib/zerotier-one</li> </ul> </p> 
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct ControllerNetworkIpAssignmentPools {
    #[serde(rename = "ipRangeStart", skip_serializing_if = "Option::is_none")]
    pub ip_range_start: Option<String>,
    #[serde(rename = "ipRangeEnd", skip_serializing_if = "Option::is_none")]
    pub ip_range_end: Option<String>,
}

impl ControllerNetworkIpAssignmentPools {
    pub fn new() -> ControllerNetworkIpAssignmentPools {
        ControllerNetworkIpAssignmentPools {
            ip_range_start: None,
            ip_range_end: None,
        }
    }
}


