# Network Status Report


## Project Description
This script checks the current network status,including IP addresses,
network interface,routes,and open ports.

Displaying and Saving Reports
The script shows the results on the screen and saves them in a report file.
The report files are  saved in the reports folder.

Report Files
Each report has a date and time in its filename.This makes it easier to find a specific report
 and compare reports from different times.

## Testing
The script was tested in differrent network conditions.

## How to Run
bash ~/network-project/network-report.sh
This command runs the script to check network information and generate a report.


##Requirements
To run this project, we need Ubuntu and a terminal.
No additional software installation is required.

## Features
Resolves domain names to IP addresses
Checks internet connectivity
Checks network interfaces, IP addresses, and routes
Displays information about listening TCP ports and UDP sockets 
Continues running even when some network checks fail.

##Project Structure
Reports are saved in a separate folder to keep the project organized and make files easier to find.
The main script is network-report.sh
It checks network information and generates a report.
Reports are saved in a separate folder to keep the project organized and make files easiar to find.


