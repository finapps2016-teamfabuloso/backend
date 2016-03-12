# FinApps2016 API
<hr>
<!--[![Build Status](https://travis-ci.org/<YOUR LINK>.svg)](https://travis-ci.org/<YOUR LINK>)-->

Welcome to the FinApps2016 API documentation.  This application will allow you to make ALL the api calls.

Base URI: https://finapps2016-backend.herokuapp.com 

**Methods**

* [Device Methods](#device-methods)
	* [List](#device-list)
	* [Create] (#device-create)
	* [Show] (#device-show)
* [Account Methods](#account-methods)
	* [List](#account-list)
	* [Create] (#account-create)
	* [Show] (#account-show)
* [Movement Methods](#movement-methods)
	* [List](#movement-list)
	* [Create] (#movement-create)
	* [Show] (#movement-show)
	
## <a name="device-methods"></a>Device Methods

### <a name="device-list"></a>List all devices

#### GET `/devices`


**Response**
`Status Code: 200 - OK`
    
```json
{
  "success": "true",
  "devices": [
    {
      "id": 1,
      "platform": "android",
      "category": "mobile",
      "serial": "3489399843298sdfds4723"
    },
    {
      "id": 2,
      "platform": "ios",
      "category": "wearable",
      "serial": "1034234987239834"
    },
    {
      "id": 3,
      "platform": "ios",
      "category": "mobile",
      "serial": "9398475827687223"
    }
  ]
}        
```

### <a name="device-show"></a>Show a Device

#### GET `/devices/:id`

**Response**
`Status Code: 200 - OK`
    
```json
{
  "success": "true",
  "device": {
    "id": 1,
    "platform": "android",
    "category": "mobile",
    "serial": "3489399843298sdfds4723"
  }
}     
```

### <a name="device-create"></a>Create a Device

#### POST `/devices`

**Request**

| Form Params        | Type           | Description  |
| ------------- |:-------------:|:----- |
| platform | string | ​*(Required)*​ ios or android |
| category | string | ​*(Required)*​ mobile, wearable, or tablet |
| serial | string | ​*(Required)*​ unique identifier for the device |

Example:
```json
{
  "device": {
    "platform": "ios",
    "category": "wearable",
    "serial": "e30943skjflsjdfsdlk"
  }
}     
```

**Response**
`Status Code: 201 - Created`
    
```json
{
  "success": "true",
  "device": {
    "id": 1,
    "platform": "android",
    "type": "mobile",
    "serial": "3489399843298sdfds4723"
  }
}     
```



