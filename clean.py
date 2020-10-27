import pandas as pd
import numpy as np
import xlrd
df = pd.read_excel('Ey2.xlsx')

df.rename(columns={'Unnamed: 0':'Airport','Unnamed: 1':'City','Unnamed: 2':'Month', 'Unnamed: 3':'CarrierID','Unnamed: 4':'Non_of_Flights' })

df1 = df.dropna()

df1
# Example on how to read data from excel file
#The data in the excel file was clean normally
