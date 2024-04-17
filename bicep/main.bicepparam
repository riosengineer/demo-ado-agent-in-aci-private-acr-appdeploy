using './main.bicep'

// Hover over parameters to view descriptions
// Change parameter values to customise deployment if you wish
param location = 'uksouth'
param rgName = 'rg-ado-uks-demo'
param rgWebAppName = 'rg-ado-uks-webapp-demo'
param acrName = '' // needs to be unique 
param acrSku = 'Premium'
param aciName = 'ado-agent'
param tags = {
  environment: 'demo'
  project: 'aci-ado-agent-demo'
}
param addressPrefix = '10.0.0.0/21'
param subnetPrefix = '10.0.1.0/26'
param subnetPEPrefix = '10.0.2.0/26'
param subnetADOPrefix = '10.0.3.0/24'
param peAddress = '10.0.2.6'
param peAddressAcr = '10.0.2.4'
param vNetName = 'vnet-ado-uks-demo'
param nsgName = 'nsg-ado-uks-demo'
param webAppName = 'app-ado-uks-demo'
param webAppPlanName = 'app-plan-ado-uks-demo'
param webAppNic = 'app-ado-uks-demo-pe-nic'
param acrNic = 'acr-ado-uks-demo-pe-nic'
param natGatewayName = 'natgw-ado-uks-demo'
param natGatewayPipName = 'natgw-pip-ado-uks-demo'
param webPlanSize = 'B1'
param webPlanTier = 'Basic'
// ADO Agent
param AZP_NAME = 'self-hosted' // Leave this value unless you're editing the modules to change the agent name
param AZP_POOL = 'Default' // Leave this value unless you're editing the modules to change the pool name
param AZP_TOKEN = 'ADO_PAT' // enter your ADO PAT here. For anything other than lab/demo move this value to your ADO library/keyvault 
param AZP_URL = 'https://dev.azure.com/ADO_ORG'
param aciImage = 'emberstack/azure-pipelines-agent' // change this on second deployment pass. See () for more info. 
// placeholder image: emberstack/azure-pipelines-agent private image: ${acrName}.azurecr.io/ado-agent:latest 
// Git Repo 
param gitRepoUrl = 'https://dev.azure.com/ADO_ORG/ADO_PROJECT/_git/REPO_NAME#main' // change to your ADO repo URL
