# Final Project Database Creation

# Objective
Generation of a database to be able to analyse the college completion rates and efficiency measures for institutions across the United States, based on a dataset compiled by Jonathan Ortiz (https://www.kaggle.com/datasets/thedevastator/college-completion-and-efficiency-measures-for-u).


# Dataset
Detailed information about the dataset can be found here: [README](https://github.com/kfelds1/Final_Project/blob/9a4af7b1e13e7d53d938cf0289569e0474e35b69/README.txt)

Briefly, dataset contains data and trends for 3,800 degree-granting institutions in the United States (excluding territories) that reported a first-time, full-time degree-seeking undergraduate cohort, had a total of at least 100 students at the undergraduate level in 2013, and awarded undergraduate degrees between 2008 and 2013.

Graduation rates data were compiled from the National Center for Education Statistics’ Integrated Postsecondary Education Data System (NCES/IPEDS), which is limited to tracking completions for groups of first-time, full-time degree-seeking students at the undergraduate level. The groups examined typically first entered college six years earlier at four-year institutions and three years earlier at two-year institutions. Colleges report how many students completed their programs within 100 percent of normal time and within 150 percent of normal time. For students seeking a bachelor’s degree or equivalent, this corresponds with graduation within four years and six years, respectively.




# Softwares
- Quick DBD (https://app.quickdatabasediagrams.com/#/)
- PostgreSQL and pgAdmin 4

# Analysis
In order to analyze the HR data, an Employee Database was created based on the entity relationship diagram, shown below. 

The Employee database was created from the following four (4) source tables ([archive.zip](https://github.com/kfelds1/Final_Project/blob/6b38d0e19ebf20343cb548641279730aa7440c88/archive.zip)): 
- cc_institution_details.csv
- cc_institution_grads.csv
- cc_state_sector_details.csv
- cc_state_sector_grads.csv

The code for creation of the Database can be found here: schema.
