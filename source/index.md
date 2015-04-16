---

language_tabs:
- json
- xml
- csv
---

# Introduction

Welcome to the Quandl API! You can use our API to access Quandl API endpoints, which can get information on various cats, kittens, and breeds in our database.

We have language bindings in Shell, Ruby, and Python! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

This example API documentation page was created with [Slate](http://github.com/tripit/slate). Feel free to edit it and use it as a base for your own API's documentation.
Hello world

## A Subsection

Text in a subsection

### title in a subsection

More text in the subection
# Databases

## Retrieve Database by code



<div class="tabs tab-json" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/databases/WIKI?api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/json,application/vnd.quandl+json;version=2015-03-31" 
```

<div class="tabs tab-json" style="display:none"></div>
> The above command returns JSON structured like this:

<div class="tabs tab-json" style="display:none"></div>
```json
{
  "database": {
    "id": 1,
    "code": "WIKI",
    "name": "Wiki EOD Stock Prices",
    "description": "End of day stock prices, dividends and splits for 3,000 US companies, curated by the Quandl community and released into the public domain.",
    "datasets_count": 3160,
    "downloads": 0,
    "premium": false,
    "image": "https://d3rlqa3rnk4r1f.cloudfront.net/images/default-avatar.png",
    "subscribed": false,
    "created_at": "2015-04-21T16:41:39.245Z",
    "bundle_ids": [

    ],
    "vendor_id": null,
    "plan_category_ids": [

    ],
    "related_dataset_ids": [

    ]
  }
}
```

<div class="tabs tab-xml" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/databases/WIKI?api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/xml,application/vnd.quandl+xml;version=2015-03-31" 
```

<div class="tabs tab-xml" style="display:none"></div>
> The above command returns XML structured like this:

<div class="tabs tab-xml" style="display:none"></div>
```xml
<?xml version="1.0" encoding="UTF-8"?>
<quandl-response>
  <database>
    <id type="integer">1</id>
    <code>WIKI</code>
    <name>Wiki EOD Stock Prices</name>
    <description>End of day stock prices, dividends and splits for 3,000 US companies, curated by the Quandl community and released into the public domain.</description>
    <datasets-count type="integer">3160</datasets-count>
    <downloads type="integer">0</downloads>
    <premium type="boolean">false</premium>
    <image>https://d3rlqa3rnk4r1f.cloudfront.net/images/default-avatar.png</image>
    <subscribed type="boolean">false</subscribed>
    <created-at type="dateTime">2015-04-21T16:41:39Z</created-at>
    <bundle-ids type="array"/>
    <vendor-id nil="true"/>
    <plan-category-ids type="array"/>
    <related-dataset-ids type="array"/>
  </database>
</quandl-response>

```

### HTTP Request
`GET https://www.quandl.com/api/v3/databases/:database_code`



### Query Parameters
Parameter | Required | Description
--------- | ------- | -----------
database_code | true | string



## List all Databases



<div class="tabs tab-json" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/databases?per_page=3&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/json,application/vnd.quandl+json;version=2015-03-31" 
```

<div class="tabs tab-json" style="display:none"></div>
> The above command returns JSON structured like this:

<div class="tabs tab-json" style="display:none"></div>
```json
{
  "databases": [
    {
      "id": 1,
      "code": "WIKI",
      "name": "Wiki EOD Stock Prices",
      "description": "End of day stock prices, dividends and splits for 3,000 US companies, curated by the Quandl community and released into the public domain.",
      "datasets_count": 3160,
      "downloads": 0,
      "premium": false,
      "image": "https://d3rlqa3rnk4r1f.cloudfront.net/images/default-avatar.png",
      "subscribed": false,
      "created_at": "2015-04-21T16:41:39.245Z",
      "bundle_ids": [

      ],
      "vendor_id": null,
      "plan_category_ids": [

      ],
      "related_dataset_ids": [

      ]
    },
    {
      "id": 2,
      "code": "RGZ1",
      "name": "Veniam qui ut laudantium molestiae velit distinctio ut.",
      "description": "No description for this database yet.",
      "datasets_count": 0,
      "downloads": 0,
      "premium": false,
      "image": "https://d3rlqa3rnk4r1f.cloudfront.net/images/default-avatar.png",
      "subscribed": false,
      "created_at": "2015-04-21T16:41:39.338Z",
      "bundle_ids": [

      ],
      "vendor_id": null,
      "plan_category_ids": [

      ],
      "related_dataset_ids": [

      ]
    },
    {
      "id": 3,
      "code": "PKN2",
      "name": "Veniam qui ut laudantium molestiae velit distinctio ut.",
      "description": "No description for this database yet.",
      "datasets_count": 0,
      "downloads": 0,
      "premium": false,
      "image": "https://d3rlqa3rnk4r1f.cloudfront.net/images/default-avatar.png",
      "subscribed": false,
      "created_at": "2015-04-21T16:41:39.426Z",
      "bundle_ids": [

      ],
      "vendor_id": null,
      "plan_category_ids": [

      ],
      "related_dataset_ids": [

      ]
    }
  ],
  "meta": {
    "current_page": 1,
    "next_page": 2,
    "prev_page": null,
    "total_pages": 2,
    "total_count": 5,
    "per_page": 3,
    "current_first_item": 1,
    "current_last_item": 3
  }
}
```

<div class="tabs tab-xml" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/databases?per_page=3&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/xml,application/vnd.quandl+xml;version=2015-03-31" 
```

<div class="tabs tab-xml" style="display:none"></div>
> The above command returns XML structured like this:

<div class="tabs tab-xml" style="display:none"></div>
```xml
<?xml version="1.0" encoding="UTF-8"?>
<quandl-response>
  <databases type="array" current_page="1" next_page="2" prev_page="" total_pages="2" total_count="5" per_page="3" current_first_item="1" current_last_item="3">
    <database>
      <id type="integer">1</id>
      <code>WIKI</code>
      <name>Wiki EOD Stock Prices</name>
      <description>End of day stock prices, dividends and splits for 3,000 US companies, curated by the Quandl community and released into the public domain.</description>
      <datasets-count type="integer">3160</datasets-count>
      <downloads type="integer">0</downloads>
      <premium type="boolean">false</premium>
      <image>https://d3rlqa3rnk4r1f.cloudfront.net/images/default-avatar.png</image>
      <subscribed type="boolean">false</subscribed>
      <created-at type="dateTime">2015-04-21T16:41:39Z</created-at>
      <bundle-ids type="array"/>
      <vendor-id nil="true"/>
      <plan-category-ids type="array"/>
      <related-dataset-ids type="array"/>
    </database>
    <database>
      <id type="integer">2</id>
      <code>RGZ1</code>
      <name>Veniam qui ut laudantium molestiae velit distinctio ut.</name>
      <description>No description for this database yet.</description>
      <datasets-count type="integer">0</datasets-count>
      <downloads type="integer">0</downloads>
      <premium type="boolean">false</premium>
      <image>https://d3rlqa3rnk4r1f.cloudfront.net/images/default-avatar.png</image>
      <subscribed type="boolean">false</subscribed>
      <created-at type="dateTime">2015-04-21T16:41:39Z</created-at>
      <bundle-ids type="array"/>
      <vendor-id nil="true"/>
      <plan-category-ids type="array"/>
      <related-dataset-ids type="array"/>
    </database>
    <database>
      <id type="integer">3</id>
      <code>PKN2</code>
      <name>Veniam qui ut laudantium molestiae velit distinctio ut.</name>
      <description>No description for this database yet.</description>
      <datasets-count type="integer">0</datasets-count>
      <downloads type="integer">0</downloads>
      <premium type="boolean">false</premium>
      <image>https://d3rlqa3rnk4r1f.cloudfront.net/images/default-avatar.png</image>
      <subscribed type="boolean">false</subscribed>
      <created-at type="dateTime">2015-04-21T16:41:39Z</created-at>
      <bundle-ids type="array"/>
      <vendor-id nil="true"/>
      <plan-category-ids type="array"/>
      <related-dataset-ids type="array"/>
    </database>
  </databases>
</quandl-response>

```

### HTTP Request
`GET https://www.quandl.com/api/v3/databases`



### Query Parameters
Parameter | Required | Description
--------- | ------- | -----------



## Download Database



<div class="tabs tab-json" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/databases/ZEA/data?download_type=complete&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/json,application/vnd.quandl+json;version=2015-03-31" \
	-o ZEA.zip \
	-L 
```

<div class="tabs tab-xml" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/databases/ZEA/data?download_type=complete&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/xml,application/vnd.quandl+xml;version=2015-03-31" \
	-o ZEA.zip \
	-L 
```

### HTTP Request
`GET https://www.quandl.com/api/v3/databases/:database_code/data`



### Query Parameters
Parameter | Required | Description
--------- | ------- | -----------
database_code | true | string
download_type | false | string (Options: complete or partial, default is complete)


# Datasets

## Retrieve Dataset data and metadata complex example



<div class="tabs tab-json" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/datasets/WIKI/AAPL?column_index=1&start_date=2015-02-12&end_date=2015-04-22&order=asc&collapse=weekly&transform=rdiff&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/json,application/vnd.quandl+json;version=2015-03-31" 
```

<div class="tabs tab-json" style="display:none"></div>
> The above command returns JSON structured like this:

<div class="tabs tab-json" style="display:none"></div>
```json
{
  "dataset": {
    "id": 1,
    "dataset_code": "AAPL",
    "database_code": "WIKI",
    "name": "Apple Inc. (AAPL)",
    "description": "End of day open, high, low, close and volume, dividends and splits",
    "refreshed_at": "2015-04-21T12:41:36.000Z",
    "newest_available_date": "2015-04-22",
    "oldest_available_date": "2015-02-12",
    "column_names": [
      "Date",
      "Open"
    ],
    "frequency": "daily",
    "type": "Time Series",
    "premium": false,
    "urlize_name": "Apple-Inc-AAPL",
    "updated_at": "2015-04-21T16:41:36.241Z",
    "favourite": false,
    "private": false,
    "display_url": "http://www.quandl.com/WIKI/AAPL",
    "latest_values": [
      "2015-04-17",
      10.081180487412126,
      10.966839238112028,
      13.965188058268087
    ],
    "related_collections": [

    ],
    "related_datasets": [

    ],
    "limit": null,
    "transform": "rdiff",
    "column_index": 1,
    "start_date": "2015-02-12",
    "end_date": "2015-04-22",
    "data": [
      [
        "2015-02-22",
        0.0017569452194609
      ],
      [
        "2015-03-01",
        0.020309991668671
      ],
      [
        "2015-03-08",
        -0.011313075153612
      ],
      [
        "2015-03-15",
        0.0030366381618123
      ],
      [
        "2015-03-22",
        0.019382438962717
      ],
      [
        "2015-03-29",
        -0.0044011084696308
      ],
      [
        "2015-04-05",
        0.010104223469913
      ],
      [
        "2015-04-12",
        0.0084833410617297
      ],
      [
        "2015-04-19",
        -0.0072540997428217
      ],
      [
        "2015-04-26",
        0.0021833156876592
      ]
    ],
    "meta": {
    },
    "collapse": "weekly",
    "order": "asc",
    "database_id": 1
  },
  "meta": {
  }
}
```

<div class="tabs tab-xml" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/datasets/WIKI/AAPL?column_index=1&start_date=2015-02-12&end_date=2015-04-22&order=asc&collapse=weekly&transform=rdiff&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/xml,application/vnd.quandl+xml;version=2015-03-31" 
```

<div class="tabs tab-xml" style="display:none"></div>
> The above command returns XML structured like this:

<div class="tabs tab-xml" style="display:none"></div>
```xml
<?xml version="1.0" encoding="UTF-8"?>
<quandl-response>
  <dataset>
    <id type="integer">1</id>
    <dataset-code>AAPL</dataset-code>
    <database-code>WIKI</database-code>
    <name>Apple Inc. (AAPL)</name>
    <description>End of day open, high, low, close and volume, dividends and splits</description>
    <refreshed-at type="dateTime">2015-04-21T12:41:36Z</refreshed-at>
    <newest-available-date type="date">2015-04-22</newest-available-date>
    <oldest-available-date type="date">2015-02-12</oldest-available-date>
    <column-names type="array">
      <column-name>Date</column-name>
      <column-name>Open</column-name>
    </column-names>
    <frequency>daily</frequency>
    <type>Time Series</type>
    <premium type="boolean">false</premium>
    <urlize-name>Apple-Inc-AAPL</urlize-name>
    <updated-at type="dateTime">2015-04-21T16:41:36Z</updated-at>
    <favourite type="boolean">false</favourite>
    <private type="boolean">false</private>
    <display-url>http://www.quandl.com/WIKI/AAPL</display-url>
    <latest-values type="array">
      <latest-value type="date">2015-04-17</latest-value>
      <latest-value type="float">10.081180487412126</latest-value>
      <latest-value type="float">10.966839238112028</latest-value>
      <latest-value type="float">13.965188058268087</latest-value>
    </latest-values>
    <related-collections type="array"/>
    <related-datasets type="array"/>
    <limit nil="true"/>
    <transform>rdiff</transform>
    <column-index type="integer">1</column-index>
    <start-date type="date">2015-02-12</start-date>
    <end-date type="date">2015-04-22</end-date>
    <data type="array">
      <datum type="array">
        <datum type="date">2015-02-22</datum>
        <datum type="float">0.0017569452194609</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-03-01</datum>
        <datum type="float">0.020309991668671</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-03-08</datum>
        <datum type="float">-0.011313075153612</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-03-15</datum>
        <datum type="float">0.0030366381618123</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-03-22</datum>
        <datum type="float">0.019382438962717</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-03-29</datum>
        <datum type="float">-0.0044011084696308</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-04-05</datum>
        <datum type="float">0.010104223469913</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-04-12</datum>
        <datum type="float">0.0084833410617297</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-04-19</datum>
        <datum type="float">-0.0072540997428217</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-04-26</datum>
        <datum type="float">0.0021833156876592</datum>
      </datum>
    </data>
    <meta>
    </meta>
    <collapse>weekly</collapse>
    <order>asc</order>
    <database-id type="integer">1</database-id>
  </dataset>
</quandl-response>

```

<div class="tabs tab-csv" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/datasets/WIKI/AAPL?column_index=1&start_date=2015-02-12&end_date=2015-04-22&order=asc&collapse=weekly&transform=rdiff&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: text/csv,text/vnd.quandl+csv;version=2015-03-31" 
```

<div class="tabs tab-csv" style="display:none"></div>
> The above command returns CSV structured like this:

<div class="tabs tab-csv" style="display:none"></div>
```plaintext
Date,Open
2015-02-22,0.0017569452194609
2015-03-01,0.020309991668671
2015-03-08,-0.011313075153612
2015-03-15,0.0030366381618123
2015-03-22,0.019382438962717
2015-03-29,-0.0044011084696308
2015-04-05,0.010104223469913
2015-04-12,0.0084833410617297
2015-04-19,-0.0072540997428217
2015-04-26,0.0021833156876592

```

### HTTP Request
`GET https://www.quandl.com/api/v3/datasets/:database_code/:dataset_code`



### Query Parameters
Parameter | Required | Description
--------- | ------- | -----------
database_code | true | string
dataset_code | true | string
limit | false | integer
rows | false | integer
column_index | false | integer
start_date | false | date
end_date | false | date
order | false | boolean
collapse | false | string
transform | false | string



## Retrieve Dataset data

### Add another header from override

This endpoint retrieves both the data and metadata of the dataset.
Please use this if you want both data and metadata.

See request params for more detail.

<div class="tabs tab-json" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/datasets/WIKI/AAPL/data?end_date=2015-02-15&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/json,application/vnd.quandl+json;version=2015-03-31" 
```

<div class="tabs tab-json" style="display:none"></div>
> The above command returns JSON structured like this:

<div class="tabs tab-json" style="display:none"></div>
```json
{
  "dataset_data": {
    "limit": null,
    "transform": null,
    "column_index": null,
    "column_names": [
      "Date",
      "Open",
      "High",
      "Low"
    ],
    "start_date": "2015-02-12",
    "end_date": "2015-02-15",
    "frequency": "daily",
    "data": [
      [
        "2015-02-15",
        9.634416057212821,
        10.505742812604263,
        13.293999255285856
      ],
      [
        "2015-02-14",
        9.572642448375397,
        10.550855708211328,
        13.213453259797948
      ],
      [
        "2015-02-13",
        9.639650945514024,
        10.622849782455594,
        13.120181825022904
      ],
      [
        "2015-02-12",
        9.635681677477637,
        10.643470608503891,
        13.198902915973042
      ]
    ],
    "meta": {
    },
    "collapse": null,
    "order": "desc",
    "id": 1,
    "dataset_id": 1
  }
}
```

<div class="tabs tab-xml" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/datasets/WIKI/AAPL/data?end_date=2015-02-15&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/xml,application/vnd.quandl+xml;version=2015-03-31" 
```

<div class="tabs tab-xml" style="display:none"></div>
> The above command returns XML structured like this:

<div class="tabs tab-xml" style="display:none"></div>
```xml
<?xml version="1.0" encoding="UTF-8"?>
<quandl-response>
  <dataset-data>
    <limit nil="true"/>
    <transform nil="true"/>
    <column-index nil="true"/>
    <column-names type="array">
      <column-name>Date</column-name>
      <column-name>Open</column-name>
      <column-name>High</column-name>
      <column-name>Low</column-name>
    </column-names>
    <start-date type="date">2015-02-12</start-date>
    <end-date type="date">2015-02-15</end-date>
    <frequency>daily</frequency>
    <data type="array">
      <datum type="array">
        <datum type="date">2015-02-15</datum>
        <datum type="float">9.634416057212821</datum>
        <datum type="float">10.505742812604263</datum>
        <datum type="float">13.293999255285856</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-02-14</datum>
        <datum type="float">9.572642448375397</datum>
        <datum type="float">10.550855708211328</datum>
        <datum type="float">13.213453259797948</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-02-13</datum>
        <datum type="float">9.639650945514024</datum>
        <datum type="float">10.622849782455594</datum>
        <datum type="float">13.120181825022904</datum>
      </datum>
      <datum type="array">
        <datum type="date">2015-02-12</datum>
        <datum type="float">9.635681677477637</datum>
        <datum type="float">10.643470608503891</datum>
        <datum type="float">13.198902915973042</datum>
      </datum>
    </data>
    <meta>
    </meta>
    <collapse nil="true"/>
    <order>desc</order>
    <id type="integer">1</id>
    <dataset-id type="integer">1</dataset-id>
  </dataset-data>
</quandl-response>

```

<div class="tabs tab-csv" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/datasets/WIKI/AAPL/data?end_date=2015-02-15&api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: text/csv,text/vnd.quandl+csv;version=2015-03-31" 
```

<div class="tabs tab-csv" style="display:none"></div>
> The above command returns CSV structured like this:

<div class="tabs tab-csv" style="display:none"></div>
```plaintext
Date,Open,High,Low
2015-02-15,9.634416057212821,10.505742812604263,13.293999255285856
2015-02-14,9.572642448375397,10.550855708211328,13.213453259797948
2015-02-13,9.639650945514024,10.622849782455594,13.120181825022904
2015-02-12,9.635681677477637,10.643470608503891,13.198902915973042

```

### HTTP Request
`GET https://www.quandl.com/api/v3/datasets/:database_code/:dataset_code/data`



### Query Parameters
Parameter | Required | Description
--------- | ------- | -----------
database_code | true | Database code (string)
dataset_code | true | Randomly override another description!!!
limit | false | integer
rows | false | integer
column_index | false | integer
start_date | false | date
end_date | false | date
order | false | boolean
collapse | false | string
transform | false | string



## Retrieve Dataset metadata



<div class="tabs tab-json" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/datasets/WIKI/AAPL/metadata?api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/json,application/vnd.quandl+json;version=2015-03-31" 
```

<div class="tabs tab-json" style="display:none"></div>
> The above command returns JSON structured like this:

<div class="tabs tab-json" style="display:none"></div>
```json
{
  "dataset": {
    "id": 1,
    "dataset_code": "AAPL",
    "database_code": "WIKI",
    "name": "Apple Inc. (AAPL)",
    "description": "End of day open, high, low, close and volume, dividends and splits",
    "refreshed_at": "2015-04-21T12:41:36.000Z",
    "newest_available_date": "2015-04-22",
    "oldest_available_date": "2015-02-12",
    "column_names": [
      "Date",
      "Open",
      "High",
      "Low"
    ],
    "frequency": "daily",
    "type": "Time Series",
    "premium": false,
    "urlize_name": "Apple-Inc-AAPL",
    "updated_at": "2015-04-21T16:41:36.241Z",
    "favourite": false,
    "private": false,
    "display_url": "http://www.quandl.com/WIKI/AAPL",
    "latest_values": [
      "2015-04-17",
      10.081180487412126,
      10.966839238112028,
      13.965188058268087
    ],
    "related_collections": [

    ],
    "related_datasets": [

    ],
    "database_id": 1
  }
}
```

<div class="tabs tab-xml" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/datasets/WIKI/AAPL/metadata?api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: application/xml,application/vnd.quandl+xml;version=2015-03-31" 
```

<div class="tabs tab-xml" style="display:none"></div>
> The above command returns XML structured like this:

<div class="tabs tab-xml" style="display:none"></div>
```xml
<?xml version="1.0" encoding="UTF-8"?>
<quandl-response>
  <dataset>
    <id type="integer">1</id>
    <dataset-code>AAPL</dataset-code>
    <database-code>WIKI</database-code>
    <name>Apple Inc. (AAPL)</name>
    <description>End of day open, high, low, close and volume, dividends and splits</description>
    <refreshed-at type="dateTime">2015-04-21T12:41:36Z</refreshed-at>
    <newest-available-date type="date">2015-04-22</newest-available-date>
    <oldest-available-date type="date">2015-02-12</oldest-available-date>
    <column-names type="array">
      <column-name>Date</column-name>
      <column-name>Open</column-name>
      <column-name>High</column-name>
      <column-name>Low</column-name>
    </column-names>
    <frequency>daily</frequency>
    <type>Time Series</type>
    <premium type="boolean">false</premium>
    <urlize-name>Apple-Inc-AAPL</urlize-name>
    <updated-at type="dateTime">2015-04-21T16:41:36Z</updated-at>
    <favourite type="boolean">false</favourite>
    <private type="boolean">false</private>
    <display-url>http://www.quandl.com/WIKI/AAPL</display-url>
    <latest-values type="array">
      <latest-value type="date">2015-04-17</latest-value>
      <latest-value type="float">10.081180487412126</latest-value>
      <latest-value type="float">10.966839238112028</latest-value>
      <latest-value type="float">13.965188058268087</latest-value>
    </latest-values>
    <related-collections type="array"/>
    <related-datasets type="array"/>
    <database-id type="integer">1</database-id>
  </dataset>
</quandl-response>

```

<div class="tabs tab-csv" style="display:none"></div>
```shell
curl "https://www.quandl.com/api/v3/datasets/WIKI/AAPL/metadata?api_key=jxBAuBYSJs_eJ5B64Tkw" -X GET \
	-H "Accept: text/csv,text/vnd.quandl+csv;version=2015-03-31" 
```

<div class="tabs tab-csv" style="display:none"></div>
> The above command returns CSV structured like this:

<div class="tabs tab-csv" style="display:none"></div>
```plaintext
id,dataset_code,database_code,name,description,refreshed_at,newest_available_date,oldest_available_date,column_names,frequency,type,premium,urlize_name,updated_at,favourite,private,display_url,latest_values,related_collections,related_datasets,database_id
1,AAPL,WIKI,Apple Inc. (AAPL),"End of day open, high, low, close and volume, dividends and splits",2015-04-21 12:41:36 UTC,2015-04-22,2015-02-12,"[""Date"", ""Open"", ""High"", ""Low""]",daily,Time Series,false,Apple-Inc-AAPL,2015-04-21 16:41:36 UTC,false,false,http://www.quandl.com/WIKI/AAPL,"[Fri, 17 Apr 2015, 10.081180487412126, 10.966839238112028, 13.965188058268087]",[],#<Dataset::ActiveRecord_Relation:0x007fe496a417f8>,1

```

### HTTP Request
`GET https://www.quandl.com/api/v3/datasets/:database_code/:dataset_code/metadata`



### Query Parameters
Parameter | Required | Description
--------- | ------- | -----------
database_code | true | string
dataset_code | true | string

