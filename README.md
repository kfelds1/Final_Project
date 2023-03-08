## Dataset

There are four datasets that we will use and transform for our project to obtain our desired, final dataset. All of the data has been gathered from the National Center for Education Statistics’ Integrated Postsecondary Education Data System (NCES/IPEDS). NCES is the primary federal entity for collecting and analyzing data relating to all aspects of education in the US. The datasets contain information from 3,800 degree-granting institutions in the US between the years of 2008 and 2013, and the students who have participated in the dataset are all full-time undergraduates. The ultimate objective of these datasets is to observe the graduation rates of undergraduates when controlling for different variables such as gender, race, or type of school.

1. cc_institution_details

This dataset contains many variables which describe the institution in great detail. There are variables ranging from the type of institution (public or private), to the coordinates of the institution's location, and to the average amount of financial aid given to students. There are several directions we could go with this information, but some interesting ideas could include the graduation rates of students at public versus private institutions or the graduation rates of students who receive more aid versus those who receive less.

2. cc_institution_grads

This dataset includes significantly less variables than the previous one, with only ten variables. Similar to the first dataset, this one includes a variable to identify which student goes to which institution, called 'Department of Education Unit Number.' The two variables of focus in this dataset are the gender and ethnicity of the students. With this information to describe students, we could explore the questions of whether or not gender and race play a factor in graduation rates.

3. cc_state_sector_details

This dataset breaks down the institutions in the first dataset on a state level. We have the ability to see which states have the most institutions in this particular survey, the level (2 or 4 year) and type (private or public) of institution, and awards per state.

4. cc_state_sector_grads

This final dataset includes information on the undergraduates in combination with the state data. With this information, we could see if there are trends involving the state in which the institution is located and the graduation rates. Furthermore, we could also explore the types of students and their demographic characteristics against the state that their institution is located.


## Data Transformation

We plan to focus on the first two datasets, observing each data point organized by institution. We will combine and clean up the datasets to include our desired areas of focus, and load the datasets into SQL to create tables for analysis.
