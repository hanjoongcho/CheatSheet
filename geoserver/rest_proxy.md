# Geoserver rest 서비스용 HTTP 기본인증 처리 Proxy 만들기 

# Geoserver rest 목록  
https://docs.geoserver.org/stable/en/user/rest/

# Geoserver rest 주요 Endpoint
| 최상위 호출 URL                                      |
|------------------------------------------------------|
| /rest/workspaces                                     |
| /rest/layergroups                                    |
| /rest/layers                                         |
| /rest/styles                                         |  

| 워크스페이스 하위 호출 URL                                         |
|------------------------------------------------------|
| /rest/workspaces/{layergroupName}/layergroups        |
| /rest/workspaces/{layergroupName}/layers             |
| /rest/workspaces/{layergroupName}/layers/{layerName} |
