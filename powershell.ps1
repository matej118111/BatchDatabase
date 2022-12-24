$setting1 = $false
$setting2 = $false

# Prompt the user to enter their name
$name = Read-Host "Firstly enter your name... (Note: Name will not be saved)"

while ($true) {
    # Display the menu to the user
    Clear-Host
    Write-Host "Welcome to the menu $name"
    Write-Host "-------------------------------------------------------------------------"
    Write-Host "Choice 1 - type data to enter the batch database"
    Write-Host "Choice 2 - type N232 for ???"
    Write-Host "Choice 3 - type exit to close this program"
    Write-Host "-------------------------------------------------------------------------"

    # Get the user's menu selection
    $choice = Read-Host "Select"

    # Process the user's menu selection
    switch ($choice) {
        "data" {
            # Display the database selection menu
            Clear-Host
            Write-Host "Welcome to the database $name"
            Write-Host "Please select the database you want to enter"
            Write-Host "-------------------------------------------------------------------------"
            Write-Host "Type b to go back to the Menu"
            Write-Host "Type 1 for database 1"
            Write-Host "Type 2 for database 2"
            Write-Host "Type 3 for database 3"
            Write-Host "Type 4 for database 4"
            Write-Host "Type 5 for database 5"
            Write-Host "Type 6 for database 6"
            Write-Host "Type 7 for database 7"
            Write-Host "Type 8 for database 8"
            Write-Host "Type 9 for database 9"
            Write-Host "-------------------------------------------------------------------------"
            Write-Host "$testInput"
            Write-Host "-------------------------------------------------------------------------"

            # Get the user's database selection
            $dbChoice = Read-Host "Select"

            # Process the user's database selection
            switch ($dbChoice) {
                "1" {
                    # Go to database 1
                    goto db1
                }
                "2" {
                    # Go to database 2
                    goto db2
                }
                "3" {
                    # Go to database 3
                    goto db3
                }
                "4" {
                    # Go to database 4
                    goto db4
                }
                "5" {
                    # Go to database 5
                    goto db5
                }
                "6" {
                    # Go to database 6
                    goto db6
                }
                "7" {
                    # Go to database 7
                    goto db7
                }
                "8" {
                    # Go to database 8
                    goto db8
                }
                "9" {
                    # Go to database 9
                    goto db9
                }
                "b" {
                    # Go back to the menu
                    goto menuredirect
                }
                default {
                    # Display an error message
                    Write-Host "Invalid selection"
                }
            }
        }
        "N232" {
            # Check if $sdActive is true
            if ($sdActive) {
                # Check if $sd1p1ActiveCheck is true
                if ($sd1p1ActiveCheck) {
                    goto csdpa
                }
                else {
                    # Go to cancelsdactive
                    goto cancelsdactive
                }
            }
