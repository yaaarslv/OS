
net start > "C:\LAB6\LaunchedServices.txt"


net stop DNS-client


net start > "C:\LAB6\launchedServicesAfter.txt"


fc /A "C:\LAB6\LaunchedServices.txt" "C:\LAB6\launchedServicesAfter.txt" > "C:\LAB6\launchedServicesDifference.txt"


net start DNS-client