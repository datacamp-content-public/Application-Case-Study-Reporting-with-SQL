CREATE DATABASE trips;
USE trips;

CREATE TABLE 
  YellowTripData (
    ID INT, 
    VendorID INT, 
    PickupDate DATETIME2, 
    DropoffDate DATETIME2, 
    PassengerCount INT, 
    TripDistance FLOAT, 
    RateCodeID INT, 
    StoreFwdFlag CHAR(1), 
    PULocationID INT, 
    DOLocationID INT, 
    PaymentType INT, 
    FareAmount FLOAT, 
    FareExtra FLOAT, 
    MTATax FLOAT, 
    TipAmount FLOAT, 
    TollAmount FLOAT, 
    ImproveSurcharge FLOAT, 
    TotalAmount FLOAT);

#Upload the file to teach editor and replace Tripdata_sample-pipe.csv with the name of the table.
BULK INSERT 
  YellowTripData FROM '/home/repl/Tripdata_sample-pipe.csv' WITH(FIELDTERMINATOR =',', ROWTERMINATOR = '|');
