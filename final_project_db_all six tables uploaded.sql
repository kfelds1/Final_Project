CREATE TABLE cc_institution_grads_db (
	id_number VARCHAR NOT NULL,
    unitid INT NOT NULL,
    grads_year int NOT NULL,
	gender VARCHAR NOT NULL,
	race varchar NOT NULL,
	cohort varchar NOT NULL,
	grad_cohort decimal,
	grad_100 int,
	grad_150 int,
	grad_100_rate decimal,
	grad_150_rate decimal,
	PRIMARY KEY (id_number)
);



CREATE TABLE cc_institution_details_info (
	unitid int NOT NULL,
	chronname varchar NOT NULL,
	city varchar NOT NULL,
	grads_state varchar NOT NULL, 
	grads_level varchar NOT NULL,
	grads_control varchar NOT NULL,
	basic varchar NOT NULL,
	hbcu varchar,
	flagship varchar,
	long_x decimal NOT NULL,
	lat_y decimal NOT NULL,
	site varchar,
	PRIMARY KEY (unitid)
);


CREATE TABLE cc_institution_details_results(
	unitid int NOT NULL,
	student_count int NOT NULL,
	awards_per_value decimal NOT NULL,
	awards_per_state_value decimal NOT NULL,
	awards_per_natl_value decimal NOT NULL,
	exp_award_value int NOT NULL,
	exp_award_state_value int NOT NULL,
	exp_award_natl_value int NOT NULL,
	exp_award_percentile int NOT NULL,
	ft_pct decimal,
	fte_value int NOT NULL,
	fte_percentile int NOT NULL,
	med_sat_value int,
	med_sat_percentile int,
	aid_value int,
	aid_percentile int,
	endow_value int,
	endow_percentile int,
	grad_100_value decimal,
	grad_100_percentile int,
	grad_150_value decimal,
	grad_150_percentile int,
	pell_value decimal,
	pell_percentile int,
	retain_value decimal,
	retain_percentile int,
	ft_fac_value decimal,
	ft_fac_percentile int,
	FOREIGN KEY (unitid) REFERENCES cc_institution_details_info (unitid),
	PRIMARY KEY (unitid)
);


CREATE TABLE cc_institution_details_VSA_results(
	unitid int NOT NULL,
	vsa_year int,
	vsa_grad_after4_first decimal, 
	vsa_grad_elsewhere_after4_first decimal,
	vsa_enroll_after4_first decimal,
	vsa_enroll_elsewhere_after4_first decimal,
	vsa_grad_after6_first decimal,
	vsa_grad_elsewhere_after6_first decimal,
	vsa_enroll_after6_first decimal,
	vsa_enroll_elsewhere_after6_first decimal,
	vsa_grad_after4_transfer decimal,
	vsa_grad_elsewhere_after4_transfer decimal,
	vsa_enroll_after4_transfer decimal,
	vsa_enroll_elsewhere_after4_transfer decimal,
	vsa_grad_after6_transfer decimal,
	vsa_grad_elsewhere_after6_transfer decimal,
	vsa_enroll_after6_transfer decimal,
	vsa_enroll_elsewhere_after6_transfer decimal,
	counted_pct decimal,
	FOREIGN KEY (unitid) REFERENCES cc_institution_details_info (unitid),
	PRIMARY KEY (unitid)
);


CREATE TABLE cc_state_sector_grads(
	id_number_state varchar NOT NULL,
	stateid int NOT NULL,
	grads_state varchar NOT NULL,
	state_abbr varchar NOT NULL,
	grads_control varchar NOT NULL,
	grads_level varchar NOT NULL,
	grads_year int NOT NULL,
	gender varchar NOT NULL,
	race varchar NOT NULL,
	cohort varchar NOT NULL,
	grad_cohort int NOT NULL,
	grad_100 int,
	grad_150 int NOT NULL,
	grad_100_rate decimal,
	grad_150_rate decimal,
	grad_cohort_ct int NOT NULL,
	PRIMARY KEY (id_number_state)
);


CREATE TABLE cc_state_sector_details(
	id_number_short varchar NOT NULL,
	stateid int NOT NULL,
	grads_state varchar NOT NULL,
	state_abbr varchar NOT NULL,
	state_post varchar NOT NULL,
	grads_level varchar NOT NULL,
	grads_control varchar NOT NULL,
	schools_count int NOT NULL,
	counted_pct decimal,
	awards_per_state_value decimal,
	awards_per_natl_value decimal,
	exp_award_state_value int,
	exp_award_natl_value int NOT NULL,
	state_appr_value decimal,
	state_appr_rank int,
	grad_rate_rank int,
	awards_per_rank int,
	PRIMARY KEY (id_number_short)
);

SELECT * 
FROM cc_institution_grads_db
LIMIT 10;


SELECT *
FROM cc_institution_details_info
LIMIT 10;



SELECT *
FROM cc_institution_details_results
LIMIT 10;


SELECT *
FROM cc_institution_details_VSA_results
LIMIT 10;

SELECT *
FROM cc_state_sector_grads
LIMIT 10;


SELECT *
FROM cc_state_sector_details
LIMIT 10;
