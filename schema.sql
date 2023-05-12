CREATE TABLE Device (
  id SERIAL PRIMARY KEY,
  type VARCHAR(255),
  dtype VARCHAR(255),
  name VARCHAR(255),
  serial VARCHAR(255),
  pivot_length VARCHAR(255),
  endgun_length VARCHAR(255),
  pivot_runtime VARCHAR(255),
  gpm VARCHAR(255),
  eg_gpm VARCHAR(255),
  min_angle VARCHAR(255),
  max_angle VARCHAR(255),
  min_pressure INT,
  max_pressure INT,
  lateral INT,
  num_readings INT
);

CREATE TABLE Reading (
  id SERIAL PRIMARY KEY,
  date VARCHAR(255),
  unit_date VARCHAR(255),
  zone_offset INT,
  battery VARCHAR(255),
  pnl_volts VARCHAR(255),
  sigstr VARCHAR(255),
  gpsfix VARCHAR(255),
  power VARCHAR(255),
  behind INT,
  direction VARCHAR(255),
  angle VARCHAR(255),
  endgun VARCHAR(255),
  endgun2 VARCHAR(255),
  aux1_in VARCHAR(255),
  aux1_out VARCHAR(255),
  aux2_in VARCHAR(255),
  aux2_out VARCHAR(255),
  speed VARCHAR(255),
  depth VARCHAR(255),
  pressure VARCHAR(255),
  water VARCHAR(255),
  temp1 VARCHAR(255),
  rain1 VARCHAR(255),
  flow2 VARCHAR(255),
  device_id INT,
  FOREIGN KEY (device_id) REFERENCES Device (id)
);

CREATE TABLE LatitudeLongitude (
  id SERIAL PRIMARY KEY,
  latitude FLOAT,
  longitude FLOAT
);

CREATE TABLE User (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  device_id INT,
  FOREIGN KEY (device_id) REFERENCES Device (id)
);