# customers-api
Customers api is a rest api service used to create, update and retreive customer details for resellers. 
This api creates/update customer data in Azure cosmos DB and Salesforce and Retrieves data from Azure cosmos DB. 

## Resources: 
  /customers <br />
   Post: Creates customer in both Azure cosmos db and salesforce. <br />
  /customers/{Id}: <br />
    Get: Retrieves customer data from azure cosmos db for given Id. <br />
    Put: Updates customer data in both Azure cosmos db and salesforce. <br />
Anypoint exchange Uri: https://anypoint.mulesoft.com/exchange/c5dfaf05-939d-43d0-b835-1fd2ca86adb2/customer-api/ <br />

## Technical Details:
  ###  Backed systems setup:
  #### Azure cosmos DB: 
  Azure cosomos db is cloud NoSQL api service provided by Azure cloud platform. 
  If you have Azure cloud subscription then we can use Azurce cloud cosmos db configurations. 
  If you don't have Azure subscription then Azure provides Azure cosomos emulator that we can run locally and use for developmet. You can find more details at https://learn.microsoft.com/en-us/azure/cosmos-db/local-emulator?tabs=ssl-netstd21
  
  #### salesforce: 
  Create a sales force account and capture your security token to use in api. 
  
  ### Mule: 
  #### steps :
  1. Created API specification RAML file using Anypoint platform Design center. <br />
  2. Added Required data types, security schemas and examples and published to Anypoint exchanage. <br />
  3. Imported customers-api specification from exchange and generated required flows for each resource type. <br />
  4. Added all required cosmos db and salesforce encrypted configurations to customer-api-config.yaml under /src/main/resources/config folder. <br />
  5. Implemented all the flows, added configurations to global-configurations.xml file. <br />
  6. Added Error handling logic. <br />
  7. Added unit test cases for all the implementation flows using Munit. <br />
  8. Login to API Manager.  <br />
  9. Configuration: 
        runtime: Mule Gateway.
        proxyType: Connect to existing application (basic endpoint).
        Mule version: Mule4
  10.  Select customer API from Exchange. Provided endpoint credentials.  <br />
  11. Once API added in API manager. Copy the API Instance ID. <br />
  12. Configure API Instance ID to auto discovery configuration in mule api. <br />
  13. Add basic authorization security policy to Customer API in policies section. <br />
  14. Add Custom circuit breaker policy to apply circuit breaker design pattern on api <br />
  15. Login to Runtime manager and deploy customer-api application. we can also use mule maven plugin to deploy api to cloud hub. <br />
        
  
  
  
