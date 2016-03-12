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
* [Movement Methods](#movement-methods)
	* [List](#movement-list)
	* [Create] (#movement-create)
	
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
      "serial": "IMIEXXXXXXXXXXXXX4432",
      "apps": [
        {
          "id": 1,
          "name": "Global Payments"
        },
        {
          "id": 2,
          "name": "Kroger"
        },
        {
          "id": 3,
          "name": "Nordstrom Rack"
        },
        {
          "id": 4,
          "name": "Sephora"
        }
      ]
    },
    {
      "id": 2,
      "platform": "ios",
      "category": "wearable",
      "serial": "IMIEXXXXXXXXXXXXX44212",
      "apps": [
        {
          "id": 1,
          "name": "Global Payments"
        },
        {
          "id": 2,
          "name": "Kroger"
        },
        {
          "id": 3,
          "name": "Nordstrom Rack"
        },
        {
          "id": 4,
          "name": "Sephora"
        }
      ]
    },
    {
      "id": 3,
      "platform": "ios",
      "category": "tablet",
      "serial": "IMIEXXXXXXXXXXXXX9932",
      "apps": [
        {
          "id": 1,
          "name": "Global Payments"
        },
        {
          "id": 2,
          "name": "Kroger"
        },
        {
          "id": 3,
          "name": "Nordstrom Rack"
        },
        {
          "id": 4,
          "name": "Sephora"
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
    "serial": "IMIEXXXXXXXXXXXXX4432"
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
    "category": "mobile",
    "serial": "IMIEXXXXXXXXXXXXX4432"
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
      "name": "Global Payments"
    },
    {
      "id": 2,
      "name": "Kroger"
    },
    {
      "id": 3,
      "name": "Nordstrom Rack"
    },
    {
      "id": 4,
      "name": "Sephora"
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
  "apps": {
    "id": 5,
    "name": "Target"
  }
}
```

### <a name="app-create"></a>Create an application/merchant

#### POST `/apps`

**Request**

| Form Params        | Type           | Description  |
| ------------- |:-------------:|:----- |
| name | string | ​*(Required)*​ Name of merchant or application |

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
  "apps": {
    "id": 5,
    "name": "Target"
  }
}
```

## <a name="trusted-app-methods"></a>Device Methods

### <a name="trusted-app-create"></a>Link an existing device to an applciation or merchant

#### POST `/trusted_applications`


**Request**

| Form Params        | Type           | Description  |
| ------------- |:-------------:|:----- |
| device_id | integer | ​*(Required)*​ Existing :id of device|
| app_id | integer | ​*(Required)*​ Existing :id of app/merchant |

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

## <a name="account-methods"></a>Account Methods

### <a name="account-list"></a>List all accounts

#### GET `/accounts`


**Response**
`Status Code: 200 - OK`
    

```json
{
  "success": "true",
  "accounts": [
    {
      "id": 1,
      "name": "Bitcoin",
      "image_url": "http://localhost:3000/payment_processors/bitcoin.png",
      "ccn": "XXXXXXXXXXXXXXXXXXXXUgmE"
    },
    {
      "id": 2,
      "name": "Paypal",
      "image_url": "http://localhost:3000/payment_processors/paypal.png",
      "ccn": "kishan@gmail.com"
    },
    {
      "id": 3,
      "name": "Visa",
      "image_url": "http://localhost:3000/payment_processors/visa.png",
      "ccn": "XXXX-XXXX-XXXX-3222"
    }
  ]
}
```

	
## <a name="movement-methods"></a>Movement Methods

### <a name="movement-list"></a>List all movements

#### GET `/movements`


**Response**
`Status Code: 200 - OK`
    
```json
{
  "success": "true",
  "movements": [
    {
      "id": 1,
      "price": "8.49",
      "item": "Delicious Apples",
      "nfc_tag": "EXAMPLE_TAG_4",
      "account": {
        "id": 1,
        "name": "Bitcoin",
        "image_url": "payment_processors/bitcoin.png",
        "number": "XXXXXXXXXXXXXXXXXXXXUgmE"
      },
      "device": {
        "id": 2,
        "platform": "ios",
        "category": "wearable"
      },
      "merchant": {
        "app_id": 3,
        "name": "Nordstrom Rack"
      },
      "date": "03-12-2016",
      "time": "10:34:35"
    }
  ]
}
```

### <a name="movement-create"></a>Create a Movement

#### POST `/devices/:device_id/movements`

**Request**

| Form Params        | Type           | Description  |
| ------------- |:-------------:|:----- |
| price | decimal | ​*(Required)*​ price of purchase |
| item | string | ​*(Required)*​ name of item purchased |
| nfc_tag | string | ​*(Required)*​ unique identifier for the item purchased |
| account_id| integer | *(Required)* existing account id |
| app_id| integer | *(Required)* existing application id |
| device__id| integer | *(Required)* existing device id |


Example:
```json
{
  "movement": {
    "price": 35.00,
    "item": "Fancy Pants",
    "nfc_tag_": "EXAMPLE TAG",
    "account_id": 1,
    "app_id": 1,
    "device_id: 1
   }
}     
```

**Response**
`Status Code: 201 - Created`
    
```json
{
  "success": "true",
  "movement": {
    "id": 3,
    "price": "5.99",
    "item": "Fantastic Hat",
    "nfc_tag": "EXAMPLE_TAG",
    "account_id": 1,
    "app_id": 1,
    "device_id": 2
  }
}   
```
