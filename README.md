# Final_Project Team 5 (Katie, Sean, Sergio, Martina, Irma)

## Topic and Reasoning:

Topic: College Completion and Efficiency Measures for US Institutions


The topic our team selected is around college completion and efficiency measures for US institutions. There are several factors that impact a student's ability to complete a college education. Historically, a student's gender, race, and other external factors have contributed to inequities in the education field. By analyzing the data, we will be able to assess the institution's performance and determine how resources, specifically financial aid, may help improve a student's success. Our team selected this topic because we are interested in exploring how motivating factors such as financial aid and early interventions, help provide more access to students in need, and ultimately improve students chances of completing a college education.  


Questions were formulated for the machine learning portion of the project. please see the attached AI Questions PDF and Questions. - SMB 03/06/2023


----------

# Final Project Database (MSF2141 03/07/2023)

# Objective
Generation of a database in order to analyse the college completion rates and efficiency measures for institutions across the United States.


# Dataset
Dataset was downloaded from the following website: https://www.kaggle.com/datasets/thedevastator/college-completion-and-efficiency-measures-for-u under the CC0: Public Domain licence. The author of the dataset is Jonathan Ortiz (https://data.world/databeats). Detailed information about the dataset can be found here: [README](https://github.com/kfelds1/Final_Project/blob/9a4af7b1e13e7d53d938cf0289569e0474e35b69/README.txt).
Dataset contains four (4) csv tables ([archive.zip](https://github.com/kfelds1/Final_Project/blob/6b38d0e19ebf20343cb548641279730aa7440c88/archive.zip)):
- TABLE 1: cc_institution_details
- TABLE 2: cc_institution_grads
- TABLE 3: cc_state_sector_details
- TABLE 4: cc_state_sector_grads


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

**_Importantly, to match previous years, Native Hawaiian or Other Pacific Islander has been combined with Asian. Students reported as being of two or more races, nonresident, or unknown are included in totals but not shown separately._**

**_At two-year institutions, the number of graduates within 100 percent of normal time is not available before 2009 and is never broken down by race or gender._**

### Efficiency measures

**“Awards per 100 full-time undergraduate students”** includes all undergraduate-level completions reported by the institution to the NCES: bachelor’s degrees, associate degrees, and certificate programs of less than four years in length. Full-time-equivalent undergraduates are estimated from the number of credit hours taken at the institution in an academic year. To account for changes in enrollment, the resulting metric is a three-year average of data from 2011, 2012, and 2013.

**Expenditure categories** are slightly different depending on whether the institution is public, private non-profit, or private for-profit. The spending types considered to be educational in nature, either directly or indirectly, are: instruction, research, public service, student services, academic support, institutional support, operations, and maintenance. Because separate spending figures are not available for only undergraduate students, the measure includes graduate degrees, post-master’s certificates, and all doctorates.

### In context

**Graduation rates and percent rank for four-year institutions** are shown are only for bachelor’s-degree-seeking students.

**Median estimated SAT score** is derived from the 25th and 75th percentile scores for reading and math submitted to the institution by students in the 2013 entering class. For students submitting an ACT score, an approximate equivalent was generated based on a conversion formula for English and mathematics from ACT. The estimate is derived from all submitted tests–in some cases, admitted students submitted both. Score estimates and percent rank within sector are displayed for four-year publics and four-year private nonprofit institutions only, and at least 90 percent of incoming students must have submitted a score for it to be included. 

**Average student aid** is equal to the total amount of grants, loans, and scholarships awarded by the institution, divided by the number of recipients in 2013.

**Pell Grant percentage** corresponds with the total share of undergraduates receiving a Pell Grant. The maximum Federal Pell Grant award is $7,395 for the 2023–24 award year (July 1, 2023, to June 30, 2024). Usually, it is awarded only to undergraduate students who display exceptional financial need and have not earned a bachelor's, graduate, or professional degree.

**Endowment figures** are based on values at the end of 2013 calendar year, divided by the total number of enrolled full-time-equivalent students that year.

**Full-time faculty members** are full-time employees focused on instruction, research, and/or public service, excluding employees who explicitly work for a medical school.

# Softwares
- Quick DBD (https://app.quickdatabasediagrams.com/#/)
- PostgreSQL and pgAdmin 4

# Entity Relationship Diagram (EDR)
In order to create the Database, first an EDR was created ([EDR_schema_code](https://github.com/kfelds1/Final_Project/blob/0a5370eb7fa1ac272d95c3209c5c4d3f24f1b9ce/EDR_schema_code.txt)):
![EDR_schema](https://github.com/kfelds1/Final_Project/blob/2dc20945b28efd13f96c6da29b52945ab117e015/EDR_schema.png)

The EDR depicts the relationship among the original tables (TABLE 2, TABLE 3, and TABLE 4) and three (3) working tables ([cc_institution_details_info](https://github.com/kfelds1/Final_Project/blob/49284424baeee5e4f765ddf7ca821353e5ee9499/cc_institution_details_info.csv), [cc_institution_details_results](https://github.com/kfelds1/Final_Project/blob/e860e9850804efc8326ba488e1bae15bfaacdbde/cc_institution_details_results.csv), and [cc_institution_details_VSA_results](https://github.com/kfelds1/Final_Project/blob/990b7218125bd97fe4123f769472d26fd553db63/cc_institution_details_VSA_results.csv)). For practical reasons, the TABLE 1 was separated into three (3) working tables because the original one contained more than 50 columns.  

**Column titles and their definition for each table are described below:**

- WORKING TABLE 1: cc_institution_details_info
  - unitid - *Department of Education Unit ID number*
  - chronname - *Institution name*
  - city - *Institution city*
  - state - *Institution state*
  - level - *Level of institution (4-year, 2-year)*
  - control - *Control of institution (Public, Private not-for-profit, Private for-profit)*
  - basic - *Carnegie Foundation for the Advancement of Teaching Basic Classification (2010 version)*
  - hbcu - *Denotes Historically Black College and Universities*
  - flagship - *Denotes Public flagship institutions*
  - long_x - *Institution longitude*
  - lat_y - *Institution latitude*
  - site - *Institution Web site address*
    
- WORKING TABLE 2: cc_institution_details_results
  - unitid - *Department of Education Unit ID number*
  - student_count - *Total number of undergraduates in 2010*
  - awards_per_value - *Completions per 100 FTE undergraduate students (average 2011, 2012, and 2013)*
  - awards_per_state_value - *Completions per 100 FTE undergraduate students, state and sector average*
  - awards_per_natl_value - *Completions per 100 FTE undergraduate students, national sector average*
  - exp_award_value - *Estimated educational spending (expenses related to instruction, research, public service, student services, academic support, institutional                            support, operations and maintenance) per academic award in 2013. Includes all certificates and degrees*
  - exp_award_state_value - *Spending per completion, state and sector average*
  - exp_award_natl_value - *Spending per completion, national sector average*
  - ft_pct - *Percentage of undergraduates who attend full-time*
  - fte_value - *Total number of full-time equivalent undergraduates*
  - med_sat_value - *Median estimated SAT value for incoming students*
  - med_sat_percentile - *Institution's percent rank for median SAT value within sector*
  - aid_value - *The average amount of student aid going to undergraduate recipients*
  - aid_percentile - *Institution's percent rank for average amount of student aid going to undergraduate recipients within sector*
  - endow_value - *End-of-year endowment value per full-time equivalent student*
  - endow_percentile - *Institution's percent rank for endowment value per full-time equivalent student within sector*
  - grad_100_value - *Percentage of first-time, full-time, degree-seeking undergraduates who complete a degree or certificate program within 100 percent of expected                           time (bachelor's-seeking group at 4-year institutions)*
  - grad_100_percentile - *Institution's percent rank for completers within 100 percent of normal time within sector*
  - grad_150_value - *Percentage of first-time, full-time, degree-seeking undergraduates who complete a degree or certificate program within 150 percent of expected                           time (bachelor's-seeking group at 4-year institutions)*
  - grad_150_percentile - *Institution's percent rank for completers within 150 percent of normal time within sector*
  - pell_value - *Percentage of undergraduates receiving a Pell Grant*
  - pell_percentile - *Institution's percent rank for undergraduate Pell recipients within sector*
  - retain_value - *Share of freshman students retained for a second year*
  - retain_percentile - *Institution's percent rank for freshman retention percentage within sector*
  - ft_fac_value - *Percentage of employees devoted to instruction, research or public service who are full-time and do not work for an associated medical school*
  - ft_fac_percentile - *Institution's percent rank for full-time faculty share within sector*
  
- WORKING TABLE 3: cc_institution_details_VSA_results
  - unitid - *Department of Education Unit ID number*
  - vsa_year - *Most recent year of Student Success and Progress Rate data available from the Voluntary System of Accountability*
  - vsa_grad_after4_first - *First-time, full-time students who graduated from this institution within four years*
  - vsa_grad_elsewhere_after4_first - *First-time, full-time students who graduated from another institution within four years*
  - vsa_enroll_after4_first - *First-time, full-time students who are still enrolled at this institution after four years*
  - vsa_enroll_elsewhere_after4_first - *First-time, full-time students who are enrolled at another institution after four years*
  - vsa_grad_after6_first - *First-time, full-time students who graduated from this institution within six years*
  - vsa_grad_elsewhere_after6_first - *First-time, full-time students who graduated from another institution within six years*
  - vsa_enroll_after6_first - *First-time, full-time students who are still enrolled at this institution after six years*
  - vsa_enroll_elsewhere_after6_first - *First-time, full-time students who are enrolled at another institution after six years*
  - vsa_grad_after4_transfer - *Full-time transfer students who graduated from this institution within four years*
  - vsa_grad_elsewhere_after4_transfer - *Full-time transfer students who graduated from another institution within four years*
  - vsa_enroll_after4_transfer - *Full-time transfer students who are still enrolled at this institution after four years*
  - vsa_enroll_elsewhere_after4_transfer - *Full-time transfer students who are enrolled at another institution after four years*
  - vsa_grad_after6_transfer - *Full-time transfer students who graduated from this institution within six years*
  - vsa_grad_elsewhere_after6_transfer - *Full-time transfer students who graduated from another institution within six years*
  - vsa_enroll_after6_transfer - *Full-time transfer students who are still enrolled at this institution after six years*
  - vsa_enroll_elsewhere_after6_transfer - *Full-time transfer students who are enrolled at another institution after six years*
  - counted_pct - *Share entering undergraduate class who were first-time, full-time, degree-seeking students, meaning that they generally would be part of a tracked                      cohort of potential graduates. The entering class of 2007 is displayed for 4-year institutions; 2010 for 2-year institutions.*

- TABLE 2: cc_institution_grads
  - unitid - *Department of Education Unit ID number*
  - year - *Year of data release*
  - gender - *Gender of students ('B' = both genders; 'M' = male; 'F' = female)*
  - race - *Race/ethnicity of students ('X' = all students; 'Ai' = American Indian; 'A' = Asian; 'B' = Black; 'H' = Hispanic; 'W' = White)*
  - cohort - *Degree-seeking cohort type ('4y bach' = Bachelor's/equivalent-seeking cohort at 4-year institutions; '4y other' = Students seeking another type of degree              or certificate at a 4-year institution; '2y all' = Degree-seeking students at 2-year institutions)*
  - grad_cohort - *Number of first-time, full-time, degree-seeking students in the cohort being tracked, minus any exclusions*
  - grad_100 - *Number of students who graduated within 100 percent of normal/expected time*
  - grad_150 - *Number of students who graduated within 150 percent of normal/expected time*
  - grad_100_rate - *Percentage of students who graduated within 100 percent of normal/expected time*
  - grad_150_rate - *Percentage of students who graduated within 150 percent of normal/expected time*

- TABLE 3: cc_state_sector_details
  - stateid - *State FIPS code ('00' for United States)*
  - state - *State name*
  - level - *Level of institution (4-year, 2-year)*
  - control - *Control of institution (Public, Private not-for-profit, Private for-profit)*
  - counted_pct - *Percentage of students in the entering class (Fall 2007 at 4-year institutions, Fall 2010 at 2-year institutions) who are first-time, full-time,                        degree-seeking students and generally part of the official graduation rate*
  - awards_per_state_value - *Completions per 100 FTE undergraduate students, state and sector average*
  - awards_per_natl_value - *Completions per 100 FTE undergraduate students, national sector average*
  - exp_award_state_value - *Spending per completion, state and sector average*
  - exp_award_natl_value - *Spending per completion, national sector average*
  - state_appr_value - *State appropriations to higher education in fiscal year 2011 per resident*

- TABLE 4: cc_state_sector_grads
  - stateid - *State FIPS code ('00' for United States)*
  - state - *State name*
  - control - *Control of institution (Public, Private not-for-profit, Private for-profit)*
  - level - *Level of institution (4-year, 2-year)*
  - year - *Year of data release*
  - gender - *Gender of students ('B' = both genders; 'M' = male; 'F' = female)*
  - race - *Race/ethnicity of students ('X' = all students; 'Ai' = American Indian; 'A' = Asian; 'B' = Black; 'H' = Hispanic; 'W' = White)*
  - cohort - *Degree-seeking cohort type ('4y bach' = Bachelor's/equivalent-seeking cohort at 4-year institutions; '4y other' = Students seeking another type of degree              or certificate at a 4-year institution; '2y all' = Degree-seeking students at 2-year institutions)*
  - grad_cohort - *Number of first-time, full-time, degree-seeking students in the cohort being tracked, minus any exclusions*
  - grad_100 - *Number of students who graduated within 100 percent of normal/expected time*
  - grad_150 - *Number of students who graduated within 150 percent of normal/expected time*
  - grad_100_rate - *Percentage of students who graduated within 100 percent of normal/expected time*
  - grad_150_rate - *Percentage of students who graduated within 150 percent of normal/expected time*
  - grad_cohort_ct - *Number of institutions with data included in the cohort*


