#Region For Loop
#==============================================================================
# The variable array ($array) is declared and holds an Array of strings.
$array = @("S","E","R","V","E","R","T","R","I","B","E")

# This is a for loop statement.
for ($i = 0; $i -lt $array.Count; $i++) {
    
    # This echos out the present value of the string in the array when the condition is satisfied.
     # `n - it creates a new line after the message.
    # This is a print to screen CMDLET [Write-Host].
    Write-Host $array[$i] `n
    
    # Suspends the activity in the script for 1 second
    Start-Sleep -s 1
}
# This is a print to screen CMDLET [Write-Host]. -- It writes out the number of letters contained in the array.
Write-Host ($array) "has" $array.Count "letters"
#==============================================================================
#EndRegion For Loop


#==============================================================================
# Comment 
# ==============================================================================
# ============================================
# Below shows the basic For statement Syntax:
# ============================================
# for (<Init>; <Condition>; <Repeat>)
# {
#     <Statement list>
# }
# =============================================
# The Init placeholder represents one or more commands that are run before the loop begins. it creates and initializes a variable with a starting value. 
# This variable will be the basis for the condition to be tested in the next portion of the For statement.
#################################################
# The Condition placeholder represents the portion that evaluates the condition each time the For loop runs. 
# If the condition set is True, the commands in the command block runs, and the condition is evaluated again. 
# If still True, the commands in the Statement list run again. This is repeated until the condition becomes False.
#################################################
# The Repeat placeholder represents one or more commands [separated by commas], that is executed each time the loop repeats. 
# It is mostly used to modify a variable (mostly [Init]) that is tested inside the condition placeholder.
#################################################
# The Statement list placeholder represents one or more commands that are run each time the loop is entered or repeated. 
# The commands in the Statement list are surrounded by braces "{}".
# ============================================
# In the script above, the For loop runs the commands ([Write-Host], [Start-Sleep]) in the statement List while the condition [value of $i is less than sum of the strings in the array ($array.Count)] is satisfied.
# Then it goes to the last line of the script and runs the CMDLET [Write-Host].
# ============================================
# Below holds in the script above:
# ============================================
# Init - is set to 0.
# Condition - is set to check if the current value of $i is less than the sum of the strings in the array ($array.Count).
# Repeat part - is set to increment the present value of $i by 1 (i++).
# ============================================
# The for loop statement can also be written as represented in an alternative syntax using the carriage returns instead of semicolons to delimit the Init, Condition, and Repeat portions.
# Example below: 
# ============================================
# for (<Init>; <Condition>; <Repeat>)
# {
#     <Statement List>
# }
# =============================================
# Example in reference to the script written in the step in Attune
# ============================================
# for (
#     $i = 0
#     $i -lt $array.Count
#     $i++
# ){
#     Write-Host $array[$i] `n
#     Start-Sleep -s 1
# }
# ============================================
# ==============================================================================