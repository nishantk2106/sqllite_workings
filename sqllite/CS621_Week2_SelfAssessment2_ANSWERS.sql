select * from cs621hotel;

SELECT * from cs621hotel WHERE guestname like 'A%';
SELECT * from cs621hotel WHERE guestname like 'A%a';
SELECT * FROM CS621HOTEL where payment = 'Credit Card' and (booking = 'AirB&B');
SELECT BookingID from CS621Hotel where bookingID like '%3' or bookingID like '%7';
select checkin,checkout from cs621hotel where checkin = '2017-12-25';
SELECT * from cs621hotel WHERE guestname like '%ee%';
SELECT * from cs621hotel WHERE guestname like '% %ee%' and (guests > 2);
SELECT * From cs621hotel where (bookingID like '%DK%') and ((GUESTNAME like '%D%') OR (GUESTNAME like '%K%')); 