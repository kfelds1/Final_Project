# Final Project Database Creation

# Objective
Generation of a database to be able to analyse the college completion rates and efficiency measures for institutions across the United States, based on a dataset compiled by Jonathan Ortiz (https://www.kaggle.com/datasets/thedevastator/college-completion-and-efficiency-measures-for-u).


# Dataset
Detailed information about the dataset can be found here: [README](https://github.com/kfelds1/Final_Project/blob/9a4af7b1e13e7d53d938cf0289569e0474e35b69/README.txt)

### Source
Briefly, dataset contains graduation data and trends for 3,800 degree-granting institutions in the United States (excluding territories) that reported a first-time, full-time degree-seeking undergraduate cohort, had a total of at least 100 students at the undergraduate level in 2013, and awarded undergraduate degrees between 2008 and 2013.

Dataset was compiled from two (2) sources - **National Center for Education Statistics’ Integrated Postsecondary Education Data System (NCES/IPEDS)** and **Voluntary System of Accountability (VSA)**. 
- **NCES/IPEDS:** Graduation rates are limited to tracking completions for groups of first-time, full-time degree-seeking students at the undergraduate level. The groups examined typically first entered college six years earlier at four-year institutions and three years earlier at two-year institutions. Colleges report how many students completed their programs within 100 percent of normal time and within 150 percent of normal time. For students seeking a bachelor’s degree or equivalent, this corresponds with graduation within four years and six years, respectively.

- **VSA:** Graduation and continued-enrollment statistics come from the VSA’s Success and Progress Rate. The numbers are based on student cohort data from the National Student Clearinghouse for first-time, full-time students and full-time transfer students. About half of four-year public institutions we examined have reported these data. Because it’s linked to a particular student instead of an institution, these figures can show outcomes for students who enter and leave a particular college in a way traditional graduation rates cannot.

**_Importantly, while there are similarities between the first-time, full-time completion measures that come from IPEDS and those that exist as part of the VSA, the rates will never completely align for reasons including variations in the time frame examined and the exact group of students—institutions are not penalized for students who cannot be successfully identified from National Student Clearinghouse records._**

### Race and ethnicity
Until 2009, the NCES classified students in seven (7) ways: 
- White, non-Hispanic; 
- Black, non-Hispanic; 
- American Indian/Alaskan Native; 
- Asian/Pacific Islander; 
- unknown race; 
- unknown ethnicity; 
- nonresident. 

In addition to creating a stronger separation between race and ethnicity categories, two (2) new race categories were created: 
- Native Hawaiian or Other Pacific Islander (previously combined with Asian students);
- students who belong to two or more races.

**_The new race classifications have not been adopted by all institutions—they are given the option to use the old categories, the new categories, or a mixture of the two. Because of that, graduation data specific to race after 2008 may be affected by these differences in classification._**

Importantly, to match previous years, Native Hawaiian or Other Pacific Islander has been combined with Asian. Students reported as being of two or more races, nonresident, or unknown are included in totals but not shown separately.

At two-year institutions, the number of graduates within 100 percent of normal time is not available before 2009 and is never broken down by race or gender.

### Efficiency measures

“Awards per 100 full-time undergraduate students” includes all undergraduate-level completions reported by the institution to the NCES: bachelor’s degrees, associate degrees, and certificate programs of less than four years in length. Full-time-equivalent undergraduates are estimated from the number of credit hours taken at the institution in an academic year. To account for changes in enrollment, the resulting metric is a three-year average of data from 2011, 2012, and 2013.

Expenditure categories are slightly different depending on whether the institution is public, private non-profit, or private for-profit. The spending types considered to be educational in nature, either directly or indirectly, are: instruction, research, public service, student services, academic support, institutional support, operations, and maintenance. Because separate spending figures are not available for only undergraduate students, the measure includes graduate degrees, post-master’s certificates, and all doctorates.

In context

At four-year institutions, the graduation rates and percent rank shown are only for bachelor’s-degree-seeking students.

The median estimated SAT score is derived from the 25th and 75th percentile scores for reading and math submitted to the institution by students in the 2013 entering class. For students submitting an ACT score, an approximate equivalent was generated based on a conversion formula for English and mathematics from ACT. The estimate is derived from all submitted tests–in some cases, admitted students submitted both. Score estimates and percent rank within sector are displayed for four-year publics and four-year private nonprofit institutions only, and at least 90 percent of incoming students must have submitted a score for it to be included. 

Average student aid is equal to the total amount of grants, loans, and scholarships awarded by the institution, divided by the number of recipients in 2013.

Pell Grant percentage corresponds with the total share of undergraduates receiving a Pell Grant.

Endowment figures are based on values at the end of 2013 calendar year, divided by the total number of enrolled full-time-equivalent students that year.

Full-time faculty members are full-time employees focused on instruction, research, and/or public service, excluding employees who explicitly work for a medical school.


---


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
