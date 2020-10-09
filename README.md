# EY-Project Guidelines
# Part 1:
The U.S. Department of Transportation's (DOT) Bureau of Transportation Statistics (BTS) tracks the on-time performance and delays of domestic flights operated by large air carriers. Your client has extracted data from https://www.transtats.bts.gov that can be leveraged to provide some key insights on the flight delay time and perform trend analysis on it. The client is particularly interested in anything you can tell them about flight delays in a few key cities.
# Task:
A.	Come up with a pre-defined metadata structure of the output format (column names, # of columns, etc.). Remember the goal is to transform this data in a long format.
B.	Import the dataset in python and explore if it requires any data cleaning.
C.	Flatten out the dataset using pandas library. (For data wrangling, you can utilize any resources you wish to refer online. You can also refer but not limit yourself to the cheat sheet attached in the appendix section)
D.	Present Omega Ray with data visualizations using any of python visualization libraries (like Matplotlib or Seaborn). The client is particularly interested in getting insights on these key questions:
1)	Trend in flight delays (in minutes) over the last 6 months of the year 2017.
2)	Have all the 3 carriers exhibited the same trend over the last 6 months of 2017?
3)	How much was the total delay (in minutes) for: 
i.	United in the month of July
ii.	American in the month of December  
(Note: Answers need not be exact numbers, just provide approximate values)
4)	Among the 3 carriers, which airline had the lowest delays over the last 6 months of 2017?
5)	During its introductory phase, the client does not intend to have its operations at airports which have witnessed huge flight delays. Can you help the client to identify the top 2 airports that the client should not have it operations at?
6)	For all the Southwest flights flying from LAX airport, the total flight delay time was the maximum for which month?
7)	Due to a pandemic (like COVID-19), if number of passengers decreased significantly and if all 3 carriers reduced flights that led to half the delays in LAX, LGA, and SEA airports, which airline will have the least flight delay?
# Part 2:
You have the project deadline coming up, but Omega Ray has provided you with additional data that can prove useful to strengthen your analysis and provide further insights to the client. The client is now interested in exploring possible reasons for the flight delays. The client has extracted data on number of flights these 3 carriers have operated, over the last 6 months of 2017, at the earlier reported airports.
Luckily the data was directly pulled from a columnar database and hence the file is already in a long format. However, the name of carrier was masked and is presented in a unique key format. The client has also provided a lookup sheet (text format) which can be used to pull the carrier names in our datasheet.
# Task:
A.	Import both the datasets in python and explore if it requires any data cleaning.
B.	Look up data in dataset 3 using dataset 2 as a reference.
C.	Once you have joined the datasets, the data is ready for visualization.
D.	Present Omega Ray with data visualizations using any of python visualization libraries. The client is particularly interested in getting insights on these key questions:
1)	Among the 3 carriers, which airline operates the highest number of flights?
2)	During its introductory phase, the client does not intend to have its operations at an airport which already has too many flights. Can you help identify the airport that the client should avoid having its operations?
3)	The client wants to explore several possible reasons for flight delays. Weather is definitely one of the foremost reason for delays. Can number of flights operated by a carrier also be a possible reason?
Plot the trend in overall number of flights over the last 6 months of the year 2017.
4)	Compare this with the overall flight delay trend that you plotted in Part1. Do you think they follow a similar trend?
5)	Due to a pandemic (like COVID-19), if the number of flights in New York decreased by 80%, Los Angeles decreased by 60%, and Seattle decreased by 50% from July – September, does the trend in flight delay change or remain the same? 
