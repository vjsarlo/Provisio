-- Main Tables
INSERT INTO `provisio`.`hotel`(`idhotel`,`name`,`address`,`city`,`state`,`zip`,`phone`) values(1,'LasVegas', '3275 Paradise Road', 'Las Vegas', 'NV', '89109', '17025908888' );
INSERT INTO `provisio`.`hotel`(`idhotel`,`name`,`address`,`city`,`state`,`zip`,`phone`) values(2,'Seattle', '401 Lenora St', 'Seattle', 'WA',  '98121', '12064434300');

INSERT INTO `provisio`.`amenity`(`idamenity`,`description`,`cost`,`flat`) values(1,'Wi-Fi', 12.99, 1);
INSERT INTO `provisio`.`amenity`(`idamenity`,`description`,`cost`,`flat`) values(2,'Breakfast', 8.99, 0);
INSERT INTO `provisio`.`amenity`(`idamenity`,`description`,`cost`,`flat`) values(3,'Parking', 19.99, 0);

INSERT INTO `provisio`.`hotelamenity`(`idamenity`,`idhotel`) VALUES(1,1);
INSERT INTO `provisio`.`hotelamenity`(`idamenity`,`idhotel`) VALUES(2,1);
INSERT INTO `provisio`.`hotelamenity`(`idamenity`,`idhotel`) VALUES(3,1);

INSERT INTO `provisio`.`hotelamenity`(`idamenity`,`idhotel`) VALUES(1,2);
INSERT INTO `provisio`.`hotelamenity`(`idamenity`,`idhotel`) VALUES(2,2);
INSERT INTO `provisio`.`hotelamenity`(`idamenity`,`idhotel`) VALUES(3,2);


INSERT INTO `provisio`.`size`(`idsize`,`description`,`cost`) values(1,'Double Full Beds', 110.00);
INSERT INTO `provisio`.`size`(`idsize`,`description`,`cost`) values(2,'Queen Bed', 125.00);
INSERT INTO `provisio`.`size`(`idsize`,`description`,`cost`) values(3,'Double Queen Beds', 150.00);
INSERT INTO `provisio`.`size`(`idsize`,`description`,`cost`) values(4,'King Bed', 165.00);

-- Las Vegas
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`)values(101, 1);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`)values(102, 1);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`)values(103, 1);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`) values(201, 1);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`) values(202, 1);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`) values(203, 1);

-- Seattle
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`)values(101, 2);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`)values(102, 2);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`)values(103, 2);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`) values(201, 2);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`) values(202, 2);
INSERT INTO `provisio`.`room`(`idroom`,`idhotel`) values(203, 2);

-- --------------------------------------------------------------------------------
-- Room Sizes
-- --------------------------------------------------------------------------------
-- Las Vegas
  -- double 
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(1,1,101); 

  -- queen
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(2,1,102);

  -- double queen
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(3,1,103);

  -- king
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(4,1,201);

  -- double queen
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(3,1,202);

  --  double 
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(1,1,203);
-- --------------------------------------------------------------------------------
-- Seattle
  -- double Full
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(1,2,101);

  -- queen
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(2,2,102);

  -- double queen
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(3,2,103);

  -- king
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(4,2,201);

  -- double queen
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(3,2,202);

  --  double full
INSERT INTO `provisio`.`roomsize`(`idsize`,`idhotel`,`idroom`) values(1,2,203);
-- --------------------------------------------------------------------------------



-- 1. program needs to generated salt
-- 2. program needs to generate hashed password and insert into saltedpass table
-- 3. pass hashed password and salt to this procedure

 Insert into `provisio`.`guest`(`username`,`password`,`name`,`email`,`phone`,`points`) values('antonia.kiser@gmail.com','b16094ba4dc03fd3565ff7c1192cdef5','Antonia Kiser','antonia.kiser@gmail.com',5425877122,150); -- SuperSecretPassword
 Insert into `provisio`.`guestsalt`(`username`,`salt`) values ('antonia.kiser@gmail.com','2cfb4bdeaef94d962ef7a99135d6865a');
 
Insert into `provisio`.`guest`(`username`,`password`,`name`,`email`,`phone`,`points`) values('odessa62@yahoo.com','8c3f9a4445fb34c72ed531ed52a51fbc','Levi Blaine','odessa62@yahoo.com',6235478125,450); -- Password
Insert into `provisio`.`guestsalt`(`username`,`salt`) values ('odessa62@yahoo.com','d6e6e202429fe291a17748a2d6a5a5cf');
 
Insert into `provisio`.`guest`(`username`,`password`,`name`,`email`,`phone`,`points`) values('wiseking@gmail.com','572eb653a38fd3c1e16c86cafbe37730','Jeff Solomon','wiseking@gmail.com',9205426841,150); -- pr3ttyWiz3guy44
Insert into `provisio`.`guestsalt`(`username`,`salt`) values ('wiseking@gmail.com','a0c1459ead815cc80a284b165df2d634');

Insert into `provisio`.`guest`(`username`,`password`,`name`,`email`,`phone`,`points`) values('thebaran95@gmail.com','378ec27609a2bb828ca98e2551f5b95a','Jace Baran','thebaran95@gmail.com',7142358456,0); -- Fhy4qA8R
Insert into `provisio`.`guestsalt`(`username`,`salt`) values ('thebaran95@gmail.com','e08b00c6ce6d3f82f54768d91dccf4f1');

Insert into `provisio`.`guest`(`username`,`password`,`name`,`email`,`phone`,`points`) values('mreckert23@yahoo.com','a723a02b003285e80633ac95123f985f','Jonathon Eckert','mreckert23@yahoo.com',4144144141,0); -- PF3HYunw
Insert into `provisio`.`guestsalt`(`username`,`salt`) values ('mreckert23@yahoo.com','a690d0ab16371dde970f9fee6d16b28e');
-- reservation
INSERT INTO `provisio`.`reservation`(`idguest`,`idroom`, `idhotel`,`checkin`,`checkout`,`numberofguests`,`total`,`guestName`,`points`) VALUES(1,101,1, '2023-08-11', '2023-8-12',1,151.97,'John Doe',150);
INSERT INTO `provisio`.`reservation`(`idguest`,`idroom`, `idhotel`,`checkin`,`checkout`,`numberofguests`,`total`,`guestName`,`points`) VALUES(2,201,2, '2023-10-16', '2023-10-19',2,507.99,'Mary Blaine',450);
INSERT INTO `provisio`.`reservation`(`idguest`,`idroom`, `idhotel`,`checkin`,`checkout`,`numberofguests`,`total`,`guestName`,`points`) VALUES(3,101,2, '2022-09-11', '2022-9-12',5,110.00,'First Last',150);
-- reservation amenity
Insert into `provisio`.`reservationamenity`(`idreservation`,`idamenity`) values (1,1);
Insert into `provisio`.`reservationamenity`(`idreservation`,`idamenity`) values (1,2); 
Insert into `provisio`.`reservationamenity`(`idreservation`,`idamenity`) values (1,3);

Insert into `provisio`.`reservationamenity`(`idreservation`,`idamenity`) values (2,1);


-- Select Statements
SELECT * FROM `provisio`.`amenity`;
SELECT * FROM  `provisio`.`guest`;
SELECT * FROM `provisio`.`guestsalt`;
SELECT * FROM `provisio`.`hotel`;
SELECT * FROM `provisio`.`hotelamenity`;
SELECT * FROM `provisio`.`reservation`;
SELECT * FROM `provisio`.`reservationamenity`;
SELECT * FROM `provisio`.`room`;
SELECT * FROM `provisio`.`roomsize`;
SELECT * FROM `provisio`.`size`;



