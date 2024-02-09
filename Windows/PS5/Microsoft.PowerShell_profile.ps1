# Window title, prompt
function Prompt
{
	. $Home\Scripts\Microsoft.PowerShell_prompt.ps1
}

# Functions
# Change location to a specific directory
function SHOM
{
	Set-Location $Home
}
function SDOC
{
	Set-Location $Home\Documents
}
function SDWN
{
	Set-Location $Home\Downloads
}
function SPRJ
{
	# If the directory doesn't exist, then creates it
	if ( Test-Path $Home\Documents\Projects )
	{
		Set-Location $Home\Documents\Projects
	}
	else
	{
		New-Item $Home\Documents\Projects -ItemType Directory
		Set-Location $Home\Documents\Projects
	}
}
