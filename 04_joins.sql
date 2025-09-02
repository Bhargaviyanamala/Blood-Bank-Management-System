-- jions
-- donors and their donations
select d.name as donor_name, d.blood_group, o.donation_date, o.quantity
from donor d
inner join donation o on d.donor_id = o.donor_id;
-- patients and their transfusions
select p.name as patient_name, t.blood_group, t.quantity, t.transfusion_date
from patient p
inner join transfusion t on p.patient_id = t.patient_id;


-- left jion
-- all donors, whether they donated or not
select d.name, d.blood_group, o.donation_date
from donor d
left join donation o on d.donor_id = o.donor_id;

-- all hospitals and transfusions (even if no transfusion yet)
select h.name as hospital_name, t.transfusion_date, t.quantity
from hospital h
left join transfusion t on h.hospital_id = t.hospital_id;

-- right jion
-- all donations and their donors (even if some donors deleted)
select d.name, o.donation_date, o.quantity
from donor d
right join donation o on d.donor_id = o.donor_id;

-- all transfusions and hospitals (ensuring all transfusions are shown)
select h.name as hospital_name, t.transfusion_date
from hospital h
right join transfusion t on h.hospital_id = t.hospital_id;


-- all donors and donations (matched and unmatched)
select d.name, o.donation_date
from donor d
left join donation o on d.donor_id = o.donor_id
union
select d.name, o.donation_date
from donor d
right join donation o on d.donor_id = o.donor_id;

-- full jion
-- all hospitals and transfusions
select h.name, t.transfusion_date
from hospital h
left join transfusion t on h.hospital_id = t.hospital_id
union
select h.name, t.transfusion_date
from hospital h
right join transfusion t on h.hospital_id = t.hospital_id;
