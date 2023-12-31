use university;
DELIMITER //
CREATE TRIGGER grade_new
AFTER UPDATE ON student
FOR EACH ROW
BEGIN
    UPDATE takes
    JOIN course ON course.Course_id = takes.Course_id
    SET takes.Grade=
        CASE
            WHEN NEW.Total_cred / course.Credits >= 0.9 THEN 'A'
            WHEN NEW.Total_cred / course.Credits >= 0.8 THEN 'B'
            WHEN NEW.Total_cred / course.Credits >= 0.7 THEN 'C'
            WHEN NEW.Total_cred / course.Credits >= 0.6 THEN 'D'
            ELSE 'F'
        END
    WHERE takes.ID = NEW.ID;
END;
//
DELIMITER ;

update student 
set Total_cred = 
case
when id=1 then 76
when id=2 then 200
when id=3 then 130
when id=4 then 230
when id=5 then 211
when id=6 then 100
when id=7 then 236
when id=8 then 121
when id=9 then 221
when id=10 then 281
when id=11 then 100
when id=12 then 115
when id=13 then 131
when id=14 then 106
when id=15 then 58
when id=16 then 40
when id=17 then 213
when id=18 then 271
when id=19 then 274
when id=20 then 80
when id=21 then 112
when id=22 then 198
when id=23 then 254
when id=24 then 90
when id=25 then 91
when id=26 then 77
when id=27 then 70
when id=28 then 286
when id=29 then 268
when id=30 then 169
else Total_cred
end;
select * from takes;
