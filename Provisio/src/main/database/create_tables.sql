drop table if exists reservationamenity;
drop table if exists reservation;
drop table if exists loyalty;
drop table if exists guestsalt;
drop table if exists guest;
drop table if exists hotelamenity;
drop table if exists amenity;
drop table if exists roomsize;
drop table if exists room;
drop table if exists size;
drop table if exists hotel;


CREATE TABLE `hotel` (
  `idhotel` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` VarChar(11) Default Null,
  PRIMARY KEY (`idhotel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `amenity` (
  `idamenity` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `cost` decimal(7,2) DEFAULT NULL,
  `flat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idamenity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `hotelamenity` (
  `idamenity` int(11) DEFAULT NULL,
  `idhotel` int(11) DEFAULT NULL,
  KEY `idamenity_idx` (`idamenity`,`idhotel`),
  KEY `FK_hotel_amenity_idx` (`idhotel`),
  CONSTRAINT `FK_Amenity_Hotel` FOREIGN KEY (`idamenity`) REFERENCES `amenity` (`idamenity`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Hotel_Amenity` FOREIGN KEY (`idhotel`) REFERENCES `hotel` (`idhotel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `guest` (
  `idguest` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` VarChar(11) Default Null,
  `password` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT 0,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `idguest_UNIQUE` (`idguest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `size` (
  `idsize` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `cost` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`idsize`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `room` (
  `idroom` int(11) NOT NULL,
  `idhotel` int(11) NOT NULL,
  PRIMARY KEY (`idroom`,`idhotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `roomsize` (
  `idroomsize` int(11) NOT NULL AUTO_INCREMENT,
  `idsize` int(11) DEFAULT NULL,
  `idhotel` int(11) DEFAULT NULL,
  `idroom` int(11) DEFAULT NULL,
  PRIMARY KEY (`idroomsize`),
  KEY `FK_Room_Roomsize_idx` (`idroom`),
  KEY `FK_Size_Roomsize_idx` (`idsize`),
  CONSTRAINT `FK_Room_Roomsize` FOREIGN KEY (`idroom`) REFERENCES `room` (`idroom`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Size_Roomsize` FOREIGN KEY (`idsize`) REFERENCES `size` (`idsize`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `reservation` (
  `idreservation` int(11) NOT NULL AUTO_INCREMENT,
  `idguest` int(11) DEFAULT NULL,
  `guestName` varchar(255) DEFAULT NULL,
  `idroom` int(11) DEFAULT NULL,
  `idhotel` int(11) DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `numberofguests` int(11) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `points` int(11) DEFAULT 0,
  PRIMARY KEY (`idreservation`),
  KEY `FK_Guest_Reservation_idx` (`idguest`),
  KEY `FK_Room_Reservation_idx` (`idroom`),
  KEY `FK_Hotel_Reservation_idx` (`idhotel`),
  CONSTRAINT `FK_Guest_Reservation` FOREIGN KEY (`idguest`) REFERENCES `guest` (`idguest`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Room_Reservation` FOREIGN KEY (`idroom`) REFERENCES `room` (`idroom`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Hotel_Reservation` FOREIGN KEY (`idhotel`) REFERENCES `hotel` (`idhotel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `reservationamenity` (
  `idreservation` int(11) NOT NULL,
  `idamenity` int(11) NOT NULL,
  PRIMARY KEY (`idreservation`,`idamenity`),
  KEY `FK_Amenity_ReservationAmenity_idx` (`idamenity`),
  CONSTRAINT `FK_Amenity_ReservationAmenity` FOREIGN KEY (`idamenity`) REFERENCES `amenity` (`idamenity`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Reservation_ReservationAmenity` FOREIGN KEY (`idreservation`) REFERENCES `reservation` (`idreservation`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `guestsalt` (
  `username` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  CONSTRAINT `FK_Guest_GuestSalt` FOREIGN KEY (`username`) REFERENCES `guest` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- get ids procedure
USE `provisio`;
DROP procedure IF EXISTS `get_ids`;

DELIMITER $$
USE `provisio`$$
CREATE PROCEDURE `get_ids` (
	IN guestname VARCHAR(255),
    OUT guestid INT(11),
    IN destinationchoice VARCHAR(45),
    OUT hotelid INT(11),
    IN roomchoice VARCHAR(100),
    OUT roomid INT(11)
    )
BEGIN
Select idhotel, idroom, idguest
into hotelid, roomid, guestid
from roomsize, guest
where (idroom) = (Select idroom from roomsize 
					where idsize = (Select idsize from size where UPPER(description) = UPPER(roomchoice)) 
                    and
                    idhotel = (Select idhotel from hotel where UPPER(name) = UPPER(destinationchoice))
                    limit 1
				)
and (idhotel) = (Select idhotel from hotel where UPPER(name) = UPPER(destinationchoice))
and (idguest) = (Select idguest from guest where UPPER(name) =  UPPER(guestname));
END$$

DELIMITER ;







