%dw 2.0
var customer = (cosmosCustomer: Object) ->
{
	customerId__c: cosmosCustomer.id,
	firstName__c: cosmosCustomer.personalInformation.firstName,
	lastName__c: cosmosCustomer.personalInformation.lastName,
	Name: cosmosCustomer.personalInformation.firstName ++ " " ++ cosmosCustomer.personalInformation.lastName default '',
	companyName__c: cosmosCustomer.personalInformation.companyName,
	email__c: cosmosCustomer.personalInformation.email,
	phone__c: cosmosCustomer.personalInformation.phone 
}