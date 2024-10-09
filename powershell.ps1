# Login to Azure
Connect-AzAccount

# Define variables
$resourceGroupName = "example-resources"
$location = "West Europe"
$storageAccountName = "examplestorageacct"
$skuName = "Standard_LRS"
$kind = "StorageV2"

# Create resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName $skuName -Kind $kind -Tags @{ environment = "staging" }