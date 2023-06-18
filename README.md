# Marketing common data modelling challenge
## Dashboard
Here is the link to the [recreated dashboard](https://lookerstudio.google.com/u/0/reporting/bf1d7a94-a711-45d4-b439-b68ad546002b/page/tEnnC).


## This MCDM repository
This repository connected to dbt Cloud.

Please find completed MCDM files in [models](/models). 
Each platform is mapped to suggested structure of new platform's data table. paid_ads__basic_performance is used as aggregate of all platforms' models.

Analysis folder holds requests used for the dashboard.


## How to add new platform
1. Add new_platform_data.csv file with new platform's data to seed folder. 
2. Add stg_new_platform_data.sql model to model, which will map new platform's data to paid_ads__basic_performance model. See stg_*.sql files in models folder as a reference.
3. Add with union new source to paid_ads__basic_performance.sql model 
```
...

union all

select * 
from {{ ref('new_platform_data') }}
```
4. In dbt console run `dbt seed` and `dbt build`.


