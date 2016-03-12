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
* [Applications Methods](#app-methods)
	* [List](#app-list)
	* [Create] (#app-create)
	* [Show] (#app-show)
* [Trusted Application Methods](#trusted-app-methods)
	* [Create] (#trusted-app-create)
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
      "serial": "3489399843298sdfds4723",
      "apps": [
        {
          "id": 1,
          "name": "Kroger"
        },
        {
          "id": 2,
          "name": "Target"
        },
        {
          "id": 3,
          "name": "Nordstrom Rack"
        }
      ]
    },
    {
      "id": 2,
      "platform": "ios",
      "category": "wearable",
      "serial": "1034234987239834",
      "apps": [
        {
          "id": 3,
          "name": "Nordstrom Rack"
        }
      ]
    },
    {
      "id": 3,
      "platform": "ios",
      "category": "mobile",
      "serial": "9398475827687223",
      "apps": [
        {
          "id": 3,
          "name": "Nordstrom Rack"
        }
      ]
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

## <a name="apps-methods"></a>Application Methods

### <a name="apps-list"></a>List all applications

#### GET `/apps`


**Response**
`Status Code: 200 - OK`
    
```json
{
  "success": "true",
  "apps": [
    {
      "id": 1,
      "name": "Kroger"
    },
    {
      "id": 2,
      "name": "Target"
    },
    {
      "id": 3,
      "name": "Nordstrom Rack"
    }
  ]
}
```

### <a name="apps-show"></a>Show an application

#### GET `/apps/:id`

**Response**
`Status Code: 200 - OK`
    
```json
{
  "success": "true",
  "app": {
    "id": 1,
    "name": "Kroger"
  }
}
```

### <a name="app-create"></a>Create an application

#### POST `/apps`

**Request**

| Form Params        | Type           | Description  |
| ------------- |:-------------:|:----- |
| name | string | ​*(Required)*​ Name of application |

Example:
```json
{
  "app": {
    "name": "Global Payments App"
  }
}     
```

**Response**
`Status Code: 201 - Created`
    
```json
{
  "success": "true",
  "app": {
    "id": 1,
    "name": "Global Payments App"
  }
}
```

## <a name="trusted-app-methods"></a>Device Methods

### <a name="trusted-app-create"></a>Link an existing device to an applciation

#### POST `/trusted_applications`


**Request**

| Form Params        | Type           | Description  |
| ------------- |:-------------:|:----- |
| device_id | integer | ​*(Required)*​ Existing :id of device|
| app_id | integer | ​*(Required)*​ Existing :id of app |

Example:
```json
{
  "trusted_application": {
    "device_id": 1,
    "app_id": 1
  }
}     
```

**Response**

```json
{
  "success": "true",
  "trusted_application": {
    "id": 8,
    "device_id": 3,
    "app_id": 3
  }
}
```