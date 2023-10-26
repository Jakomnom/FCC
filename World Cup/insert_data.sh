#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams;")

# Read data from games.csv and insert it into the database
tail -n +2 games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS; do
  # Insert unique teams into the "teams" table
  $($PSQL "INSERT INTO teams (name) SELECT '$WINNER' WHERE NOT EXISTS (SELECT 1 FROM teams WHERE name = '$WINNER');")
  $($PSQL "INSERT INTO teams (name) SELECT '$OPPONENT' WHERE NOT EXISTS (SELECT 1 FROM teams WHERE name = '$OPPONENT');")

  # Retrieve team_id values for winner and opponent
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER';")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT';")

  # Insert the game data into the "games" table
  $PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);"
done





