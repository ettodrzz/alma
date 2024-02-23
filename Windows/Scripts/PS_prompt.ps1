# Get the current location
$private:Path = "$((Get-Location).Path)"

# Prompt color
function private:Additive
{
    return "$(Get-Random -Minimum 200 -Maximum 250)"
}
$Private:Color = "$(Additive);$(Additive);$(Additive)"
$private:ColorFG = "$([Char]0x1B)[38;2;${Color};49m"
$private:ColorBG = "$([Char]0x1B)[38;2;0;0;0;48;2;${Color}m"
$private:ColorReset = "$([Char]0x1B)[0m"

# Change window title
$Host.UI.RawUI.WindowTitle = $Path

# Change prompt
# Nerd Font: nf-pl-left_hard_divider  e0b0
return "$ColorBG > $ColorFG$([Char]0xE0B0)$ColorReset "
