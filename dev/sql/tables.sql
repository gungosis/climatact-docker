create table City (
  ciID INTEGER,
  name varchar (255) NOT NULL,
  latitude NUMERIC NOT NULL,
  longitude NUMERIC NOT NULL,
  elevation NUMERIC NOT NULL,
  coID integer NOT NULL,
  PRIMARY KEY (ciID)
);
​
create table CityElevationAboveGMSL (
  ciID INTEGER,
  edate date NOT NULL,
  elevation NUMERIC NOT NULL,
  PRIMARY KEY (ciID)
);


create table Country (
  coID INTEGER,
  name varchar (255),
  PRIMARY KEY (coID)
);

create table Disaster (
  dID INTEGER,
  year integer NOT NULL,
  disaster_type varchar (255) NOT NULL,
  subtype varchar (255),
  disaster_group varchar (255) NOT NULL,
  disaster_country varchar (255) NOT NULL,
  coID integer NOT NULL,
  PRIMARY KEY (dID)
);


create table GlobalMeanSeaLevel (
  gmID INTEGER,
  change_date date NOT NULL,
  GMSL NUMERIC NOT NULL,
  sea_uncertainty NUMERIC,
  PRIMARY KEY (gmID)
);

create table RegionalTemperature (
  rtID INTEGER NOT NULL,
  recordDate DATE NOT NULL,
  temp NUMBER NOT NULL,
  uncertainty NUMBER,
  temp_country varchar (255) NOT NULL,
  PRIMARY KEY (rtId)
);

-- Can easily get milliseconds ( epoch time ) from timestamps
create table USPrecipitation (
  pID INTEGER,
  ptype varchar (255) NOT NULL,
  start_time timestamp NOT NULL,
  end_time timestamp NOT NULL,
  duration_in_milliseconds number CHECK(duration_in_milliseconds >= 0), 
  timezone varchar (255) NOT NULL,
  severity varchar (255),
  precipitation NUMERIC NOT NULL,
  latitude NUMERIC NOT NULL,
  longitude NUMERIC NOT NULL,
  ciID integer NOT NULL,
  PRIMARY KEY (pID)
);