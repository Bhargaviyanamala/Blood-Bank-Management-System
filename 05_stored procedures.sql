-- for adding donner
delimiter //

create procedure add_donation(
    in p_donor_id int,
    in p_bank_id int,
    in p_blood_group varchar(5),
    in p_quantity int
)
begin
    -- insert donation record
    insert into donation(donor_id, bank_id, donation_date, quantity)
    values(p_donor_id, p_bank_id, curdate(), p_quantity);
end //

delimiter ;

delimiter //

create procedure update_bloodstock(
    in p_bank_id int,
    in p_blood_group varchar(5),
    in p_quantity int
)
begin
    declare v_stock int;

    select quantity into v_stock
    from bloodstock
    where bank_id = p_bank_id and blood_group = p_blood_group;

    if v_stock is null then
        insert into bloodstock(bank_id, blood_group, quantity)
        values(p_bank_id, p_blood_group, p_quantity);
    else
        update bloodstock
        set quantity = quantity + p_quantity
        where bank_id = p_bank_id and blood_group = p_blood_group;
    end if;
end //

delimiter ;

delimiter //

create procedure check_stock(
    in p_bank_id int,
    in p_blood_group varchar(5),
    out p_available int
)
begin
    select quantity into p_available
    from bloodstock
    where bank_id = p_bank_id and blood_group = p_blood_group;

    if p_available is null then
        set p_available = 0;
    end if;
end //

delimiter ;


delimiter //
create procedure record_transfusion(
    in p_patient_id int,
    in p_hospital_id int,
    in p_bank_id int,
    in p_blood_group varchar(5),
    in p_quantity int,
    out p_status varchar(50)
)
begin
    declare v_stock int;

    -- check stock
    call check_stock(p_bank_id, p_blood_group, v_stock);

    if v_stock >= p_quantity then
        -- insert transfusion
        insert into transfusion(patient_id, hospital_id, bank_id, blood_group, quantity, transfusion_date)
        values(p_patient_id, p_hospital_id, p_bank_id, p_blood_group, p_quantity, curdate());

        -- reduce stock
        update bloodstock
        set quantity = quantity - p_quantity
        where bank_id = p_bank_id and blood_group = p_blood_group;

        set p_status = 'transfusion successful';
    else
        set p_status = 'insufficient stock for transfusion';
    end if;
end //

delimiter ;


-- 1. add donation
call add_donation(1, 1, 'a+', 2);

-- 2. update stock
call update_bloodstock(1, 'a+', 2);

-- 3. record transfusion
call record_transfusion(1, 1, 1, 'a+', 1, @status);
select @status;
