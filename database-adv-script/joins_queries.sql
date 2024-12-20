-- Query 1: Retrieve all bookings and the respective users who made those bookings
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    User.user_id,
    User.first_name,
    User.last_name
FROM 
    Booking
INNER JOIN 
    User ON Booking.user_id = User.user_id
ORDER BY 
    Booking.start_date ASC;  -- Order by start date

-- Query 2: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    Property.property_id,
    Property.name,
    Property.description,
    Review.review_id,
    Review.rating,
    Review.comment
FROM 
    Property
LEFT JOIN 
    Review ON Property.property_id = Review.property_id
ORDER BY 
    Property.name ASC;  -- Order by property name

-- Query 3: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
SELECT 
    User.user_id,
    User.first_name,
    User.last_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price
FROM 
    User
FULL OUTER JOIN 
    Booking ON User.user_id = Booking.user_id
ORDER BY 
    User.last_name ASC, Booking.start_date ASC;  -- Order by user last name and booking start date