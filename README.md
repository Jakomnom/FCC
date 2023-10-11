# FCC

## CELESTIAL README

Database Dump README
This README provides a plain and simple explanation of the CELESTIAL DATABASE.SQL

### Overview
This database dump contains information about celestial objects such as asteroids, galaxies, moons, planets, and stars. It appears to be structured for educational or informational purposes.

#### Database Details
Database Name: universe
Database Version: PostgreSQL 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
Dumped by: pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

### Tables

The database contains several tables, each storing different types of celestial objects:

Asteroid: Information about asteroids, including their names, mass, and velocity.

Galaxy: Data about galaxies, including their names, size, age, and whether they have a black hole.

Moon: Details about moons, including their names, diameters, whether they are tidally locked, and the planet they belong to.

Planet: Information about planets, including their names, distances from stars, orbital periods, whether they support life, and descriptions.

Star: Data about stars, including their names, temperatures, masses, whether they are supernovae, and the galaxy they belong to.

Data
The dump includes sample data for these tables. Here are some examples:

#### Asteroid
###### Cares: Mass 9, Velocity 18
###### Vesta: Mass 3, Velocity 19
###### Pallas: Mass 2, Velocity 17

#### Galaxy
###### Milky Way: Size 100,000, Age 13,000, Has a black hole
###### Andromeda: Size 120,000, Age 10,000, No black hole

#### Moon
###### Luna: Diameter 3,474, Tidally locked to Planet 3
###### Phobos: Diameter 22, Tidally locked to Planet 4
###### Deimos: Diameter 12, Tidally locked to Planet 4

#### Planet
###### Earth: Distance from Star 1, Orbital Period 365, Supports life
###### Jupiter: Distance from Star 5.2, Orbital Period 4,333, No life support

#### Star
###### Sun: Temperature 5,778, Mass 1,989,000, Not a supernova, in Galaxy 1
###### Betelgeuse: Temperature 3,500, Mass 220,000, Supernova, in Galaxy 1
###### Proxima Centauri: Temperature 3,050, Mass 12,300, Not a supernova, in Galaxy 1

#### Data Relationships
###### The "moon" table has a foreign key relationship with the "planet" table, connecting moons to their respective planets.
###### The "planet" table has a foreign key relationship with the "star" table, connecting planets to their parent stars.
###### The "star" table has a foreign key relationship with the "galaxy" table, linking stars to the galaxies they belong to.

#### Unique Constraints
The data has unique constraints to ensure that object names are unique within their respective tables (e.g., asteroid names, galaxy names).
Please note that this is a sample database dump and may not represent real-world data. You can use this data for educational or informational purposes related to celestial objects and their characteristics.
