INSERT INTO Donor (name, gender, dob, phone, email, blood_group, address) VALUES
('arjun reddy', 'male', '1995-03-15', '9876543210', 'arjun.reddy@gmail.com', 'a+', 'hyderabad'),
('sneha kumari', 'female', '1998-07-20', '9876501234', 'sneha.kumari@gmail.com', 'b+', 'chennai'),
('ravi teja', 'male', '1992-12-05', '9876512345', 'ravi.teja@gmail.com', 'o+', 'bangalore'),
('meera sharma', 'female', '1999-01-25', '9876523456', 'meera.sharma@gmail.com', 'ab+', 'mumbai'),
('vikram singh', 'male', '1990-08-10', '9876534567', 'vikram.singh@gmail.com', 'a-', 'delhi'),
('priya das', 'female', '1996-05-18', '9876545678', 'priya.das@gmail.com', 'b-', 'kolkata'),
('ajay kumar', 'male', '1994-09-12', '9876556789', 'ajay.kumar@gmail.com', 'o-', 'pune'),
('neha gupta', 'female', '1997-04-08', '9876567890', 'neha.gupta@gmail.com', 'ab-', 'jaipur'),
('rahul varma', 'male', '1993-11-30', '9876578901', 'rahul.varma@gmail.com', 'a+', 'lucknow'),
('anita joshi', 'female', '1995-06-14', '9876589012', 'anita.joshi@gmail.com', 'b+', 'ahmedabad');

INSERT INTO Patient (name, gender, dob, phone, blood_group, address) VALUES
('sunil sharma', 'male', '2000-04-12', '9123456780', 'a+', 'hyderabad'),
('kavya menon', 'female', '2002-10-08', '9123456781', 'b+', 'kochi'),
('manoj kumar', 'male', '1999-01-15', '9123456782', 'o+', 'chennai'),
('pallavi jain', 'female', '2001-03-22', '9123456783', 'ab+', 'delhi'),
('arvind nair', 'male', '1998-07-11', '9123456784', 'a-', 'mumbai'),
('divya reddy', 'female', '2003-09-25', '9123456785', 'b-', 'bangalore'),
('suresh yadav', 'male', '1997-05-10', '9123456786', 'o-', 'kolkata'),
('shreya ghosh', 'female', '2000-02-14', '9123456787', 'ab-', 'pune'),
('alok verma', 'male', '2002-06-30', '9123456788', 'a+', 'lucknow'),
('ritu kapoor', 'female', '2001-12-20', '9123456789', 'b+', 'jaipur');

INSERT INTO Hospital (name, location, phone, email) VALUES
('apollo hospital', 'hyderabad', '9011111111', 'apollo.hyderabad@gmail.com'),
('fortis hospital', 'delhi', '9022222222', 'fortis.delhi@gmail.com'),
('aiims hospital', 'mumbai', '9033333333', 'aiims.mumbai@gmail.com'),
('care hospital', 'bangalore', '9044444444', 'care.bangalore@gmail.com'),
('sunshine hospital', 'chennai', '9055555555', 'sunshine.chennai@gmail.com'),
('global hospital', 'kolkata', '9066666666', 'global.kolkata@gmail.com'),
('max hospital', 'pune', '9077777777', 'max.pune@gmail.com'),
('manipal hospital', 'lucknow', '9088888888', 'manipal.lucknow@gmail.com'),
('narayana hospital', 'jaipur', '9099999999', 'narayana.jaipur@gmail.com'),
('sai hospital', 'kochi', '9101010101', 'sai.kochi@gmail.com');

INSERT INTO BloodBank (name, location, phone, email) VALUES
('red cross blood bank', 'hyderabad', '9201111111', 'redcross.hyderabad@gmail.com'),
('life care blood bank', 'delhi', '9202222222', 'lifecare.delhi@gmail.com'),
('apollo blood bank', 'mumbai', '9203333333', 'apollo.mumbai@gmail.com'),
('city blood bank', 'chennai', '9204444444', 'cityblood.chennai@gmail.com'),
('national blood bank', 'bangalore', '9205555555', 'national.blr@gmail.com'),
('helping hands blood bank', 'kolkata', '9206666666', 'helpinghands.kolkata@gmail.com'),
('donate life blood bank', 'pune', '9207777777', 'donatelife.pune@gmail.com'),
('global blood bank', 'lucknow', '9208888888', 'global.lucknow@gmail.com'),
('sanjeevani blood bank', 'jaipur', '9209999999', 'sanjeevani.jaipur@gmail.com'),
('hope blood bank', 'kochi', '9210101010', 'hope.kochi@gmail.com');

INSERT INTO BloodStock (bank_id, blood_group, quantity) VALUES
(1, 'a+', 50),
(1, 'b+', 40),
(2, 'o+', 60),
(2, 'ab+', 30),
(3, 'a-', 25), 
(4, 'b-', 20),
(5, 'o-', 15),
(6, 'ab-', 10),
(7, 'a+', 35),
(8, 'b+', 45);

INSERT INTO Donation (donor_id, bank_id, donation_date, quantity) VALUES
(1, 1, '2025-01-15', 1),
(2, 1, '2025-01-20', 2),
(3, 2, '2025-02-01', 1),
(4, 3, '2025-02-05', 1),
(5, 4, '2025-02-10', 2),
(6, 5, '2025-02-15', 1),
(7, 6, '2025-02-18', 1),
(8, 7, '2025-02-20', 2),
(9, 8, '2025-02-22', 1),
(10, 9, '2025-02-25', 1);

INSERT INTO Transfusion (patient_id, hospital_id, bank_id, blood_group, quantity, transfusion_date) VALUES
(1, 1, 1, 'a+', 1, '2025-02-01'),
(2, 2, 2, 'b+', 2, '2025-02-03'),
(3, 3, 3, 'o+', 1, '2025-02-05'),
(4, 4, 4, 'ab+', 1, '2025-02-08'),
(5, 5, 5, 'a-', 2, '2025-02-10'),
(6, 6, 6, 'b-', 1, '2025-02-12'),
(7, 7, 7, 'o-', 1, '2025-02-15'),
(8, 8, 8, 'ab-', 1, '2025-02-18'),
(9, 9, 9, 'a+', 2, '2025-02-20'),
(10, 10, 10, 'b+', 1, '2025-02-22');

