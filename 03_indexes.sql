-- indexes
-- index on donor blood_group (faster search by blood group)
create index idx_donor_bloodgroup on donor(blood_group);
-- index on patient blood_group
create index idx_patient_bloodgroup on patient(blood_group);
-- index on hospital name
create index idx_hospital_name on hospital(name);
-- index on bloodbank name
create index idx_bloodbank_name on bloodbank(name);

-- unique index on donor phone
create unique index idx_ph on donor(phone);
-- unique index on hospital email
create unique index idx_hospital_email on hospital(email);

-- index for searching stock by bank and blood group together
create index idx_stock_bank_group on bloodstock(bank_id, blood_group);
-- index for transfusion lookup by patient + hospital
create index idx_transfusion_patient_hospital on transfusion(patient_id, hospital_id);

show indexes from donor;
show indexes from bloodstock;

drop index idx_donor_bloodgroup on donor;