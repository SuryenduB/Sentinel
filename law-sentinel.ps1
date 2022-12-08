# Connect to Azure
Connect-AzAccount

# Set the tenant ID, subscription ID, and other required parameters
Set-AzContext -Tenant "a015f467-c5c4-4088-88cc-2f799e68eb96" -Subscription "e379f32c-a85d-447f-8050-e9f496f305a0"

# Create a new resource group named "sentinel" in the Central India location
New-AzResourceGroup -Name "sentinel" -Location "Central India"

# Create a new Log Analytics workspace in the "sentinel" resource group with the "PerGB2018" pricing tier and Central India location
New-AzOperationalInsightsWorkspace -ResourceGroupName "sentinel" -Name "Contoso-Sentinel-Suryendu" -Sku "pergb2018" -Location "Central India"

# Verify that the workspace has been created successfully
Get-AzOperationalInsightsWorkspace -ResourceGroupName "sentinel" -Name "Contoso-Sentinel-Suryendu"
