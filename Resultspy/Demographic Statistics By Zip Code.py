#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd


# In[33]:


# Reading dataset file
df = pd.read_csv(r'C:\Users\omdre\OneDrive\Desktop\Codecademy\Demographic Statistics By Zip Code\Demographic_Statistics_By_Zip_Code _ForExcel.csv')


# In[5]:


print(df)


# In[34]:


# Retrieving dataframe information:
df.info()


# In[36]:


# Returning top 5 rows
df.iloc[:5]


# In[37]:


# Returning 2 first rows:
df.iloc[:, :2]


# In[42]:


# Selecting one column:
df['JURISDICTION NAME']


# In[44]:


# Selecting multiple columns using column names:
df[['JURISDICTION NAME', 'COUNT PARTICIPANTS']]


# In[109]:


# Sorting data by highest number of participants per jurisdiction, returning 10 rows, descending order:
df.sort_values(by=['COUNT PARTICIPANTS','JURISDICTION NAME'], ascending=False) [:10]

