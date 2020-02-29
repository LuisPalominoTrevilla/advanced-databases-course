CREATE KEYSPACE premier_league_matches
WITH REPLICATION = {
    'class' : 'SimpleStrategy', 'replication_factor': 1
};

use premier_league_matches;

CREATE TABLE premier_league_matches.result_by_home_team (
    home_team text,
    away_team text,
    date_discrete text,
    goals_home int,
    goals_away int,
    winner int,
    PRIMARY KEY (home_team, date_discrete)
) WITH comment='records match result by home team';

CREATE TABLE premier_league_matches.result_by_home_score (
    home_team text,
    away_team text,
    date_discrete text,
    goals_home int,
    goals_away int,
    winner int,
    PRIMARY KEY (date_discrete, goals_home, home_team)
) WITH comment='records match result by home team score';

CREATE TABLE premier_league_matches.result_by_away_score (
    home_team text,
    away_team text,
    date_discrete text,
    goals_home int,
    goals_away int,
    winner int,
    PRIMARY KEY (date_discrete, goals_away, away_team)
) WITH comment='records match result by away team score';

CREATE TABLE premier_league_matches.result_by_date_discrete (
    home_team text,
    away_team text,
    date_discrete text,
    goals_home int,
    goals_away int,
    winner int,
    PRIMARY KEY (date_discrete, home_team, away_team)
) WITH comment='records match result by date';

CREATE TABLE premier_league_matches.result_by_winner (
    home_team text,
    away_team text,
    date_discrete text,
    goals_home int,
    goals_away int,
    winner int,
    PRIMARY KEY (winner, date_discrete, home_team, away_team)
) WITH comment='records match result by winner';

# insert queries into result_by_home_team
INSERT INTO premier_league_matches.result_by_home_team (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Manchester City', 'Feb 12', 2, 0, 1);
INSERT INTO premier_league_matches.result_by_home_team (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Arsenal', 'Feb 12', 0, 0, 0);
INSERT INTO premier_league_matches.result_by_home_team (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Leicester City', 'Feb 12', 1, 3, 2);

INSERT INTO premier_league_matches.result_by_home_team (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Leicester City', 'Liverpool', 'Feb 20', 1, 6, 2);
INSERT INTO premier_league_matches.result_by_home_team (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester City', 'Manchester United', 'Feb 20', 2, 1, 1);
INSERT INTO premier_league_matches.result_by_home_team (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Arsenal', 'Chelsea', 'Feb 20', 2, 2, 0);

INSERT INTO premier_league_matches.result_by_home_team (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Leicester City', 'Feb 27', 3, 0, 1);
INSERT INTO premier_league_matches.result_by_home_team (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Arsenal', 'Feb 27', 5, 2, 1);
INSERT INTO premier_league_matches.result_by_home_team (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Manchester City', 'Feb 27', 0, 2, 2);

# insert queries into result_by_home_score
INSERT INTO premier_league_matches.result_by_home_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Manchester City', 'Feb 12', 2, 0, 1);
INSERT INTO premier_league_matches.result_by_home_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Arsenal', 'Feb 12', 0, 0, 0);
INSERT INTO premier_league_matches.result_by_home_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Leicester City', 'Feb 12', 1, 3, 2);

INSERT INTO premier_league_matches.result_by_home_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Leicester City', 'Liverpool', 'Feb 20', 1, 6, 2);
INSERT INTO premier_league_matches.result_by_home_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester City', 'Manchester United', 'Feb 20', 2, 1, 1);
INSERT INTO premier_league_matches.result_by_home_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Arsenal', 'Chelsea', 'Feb 20', 2, 2, 0);

INSERT INTO premier_league_matches.result_by_home_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Leicester City', 'Feb 27', 3, 0, 1);
INSERT INTO premier_league_matches.result_by_home_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Arsenal', 'Feb 27', 5, 2, 1);
INSERT INTO premier_league_matches.result_by_home_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Manchester City', 'Feb 27', 0, 2, 2);

# insert queries into result_by_away_score
INSERT INTO premier_league_matches.result_by_away_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Manchester City', 'Feb 12', 2, 0, 1);
INSERT INTO premier_league_matches.result_by_away_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Arsenal', 'Feb 12', 0, 0, 0);
INSERT INTO premier_league_matches.result_by_away_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Leicester City', 'Feb 12', 1, 3, 2);

INSERT INTO premier_league_matches.result_by_away_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Leicester City', 'Liverpool', 'Feb 20', 1, 6, 2);
INSERT INTO premier_league_matches.result_by_away_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester City', 'Manchester United', 'Feb 20', 2, 1, 1);
INSERT INTO premier_league_matches.result_by_away_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Arsenal', 'Chelsea', 'Feb 20', 2, 2, 0);

INSERT INTO premier_league_matches.result_by_away_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Leicester City', 'Feb 27', 3, 0, 1);
INSERT INTO premier_league_matches.result_by_away_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Arsenal', 'Feb 27', 5, 2, 1);
INSERT INTO premier_league_matches.result_by_away_score (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Manchester City', 'Feb 27', 0, 2, 2);

# insert queries into result_by_date_discrete
INSERT INTO premier_league_matches.result_by_date_discrete (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Manchester City', 'Feb 12', 2, 0, 1);
INSERT INTO premier_league_matches.result_by_date_discrete (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Arsenal', 'Feb 12', 0, 0, 0);
INSERT INTO premier_league_matches.result_by_date_discrete (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Leicester City', 'Feb 12', 1, 3, 2);

INSERT INTO premier_league_matches.result_by_date_discrete (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Leicester City', 'Liverpool', 'Feb 20', 1, 6, 2);
INSERT INTO premier_league_matches.result_by_date_discrete (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester City', 'Manchester United', 'Feb 20', 2, 1, 1);
INSERT INTO premier_league_matches.result_by_date_discrete (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Arsenal', 'Chelsea', 'Feb 20', 2, 2, 0);

INSERT INTO premier_league_matches.result_by_date_discrete (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Leicester City', 'Feb 27', 3, 0, 1);
INSERT INTO premier_league_matches.result_by_date_discrete (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Arsenal', 'Feb 27', 5, 2, 1);
INSERT INTO premier_league_matches.result_by_date_discrete (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Manchester City', 'Feb 27', 0, 2, 2);

# insert queries into result_by_winner
INSERT INTO premier_league_matches.result_by_winner (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Manchester City', 'Feb 12', 2, 0, 1);
INSERT INTO premier_league_matches.result_by_winner (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Arsenal', 'Feb 12', 0, 0, 0);
INSERT INTO premier_league_matches.result_by_winner (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Leicester City', 'Feb 12', 1, 3, 2);

INSERT INTO premier_league_matches.result_by_winner (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Leicester City', 'Liverpool', 'Feb 20', 1, 6, 2);
INSERT INTO premier_league_matches.result_by_winner (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester City', 'Manchester United', 'Feb 20', 2, 1, 1);
INSERT INTO premier_league_matches.result_by_winner (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Arsenal', 'Chelsea', 'Feb 20', 2, 2, 0);

INSERT INTO premier_league_matches.result_by_winner (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Manchester United', 'Leicester City', 'Feb 27', 3, 0, 1);
INSERT INTO premier_league_matches.result_by_winner (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Liverpool', 'Arsenal', 'Feb 27', 5, 2, 1);
INSERT INTO premier_league_matches.result_by_winner (home_team, away_team, date_discrete, goals_home, goals_away, winner)
VALUES ('Chelsea', 'Manchester City', 'Feb 27', 0, 2, 2);

# queries

## Get all matches with Leicester City as home team
SELECT * FROM result_by_home_team WHERE home_team = 'Leicester City';
## Get all matches with Manchester United as home team
SELECT * FROM result_by_home_team WHERE home_team = 'Manchester United';

## Get matches where any team scored more than 2 goals as home and away on Feb 20
SELECT * FROM result_by_home_score WHERE date_discrete = 'Feb 12' AND goals_home > 2;
SELECT * FROM result_by_away_score WHERE date_discrete = 'Feb 12' AND goals_away > 2;

## Get matches where any team scored more than 3 goals as home on Feb 20
SELECT * FROM result_by_home_score WHERE date_discrete = 'Feb 20' AND goals_home > 3;
SELECT * FROM result_by_away_score WHERE date_discrete = 'Feb 20' AND goals_away > 3;

## Get matches where any team scored more than 3 goals as away on Feb 27
SELECT * FROM result_by_home_score WHERE date_discrete = 'Feb 27' AND goals_home > 3;
SELECT * FROM result_by_away_score WHERE date_discrete = 'Feb 27' AND goals_away > 3;

## Get all matches played on Feb 27
SELECT * FROM result_by_date_discrete WHERE date_discrete = 'Feb 27';
## Get all matches played on Feb 20
SELECT * FROM result_by_date_discrete WHERE date_discrete = 'Feb 20';

## Get all matches where home team won
SELECT * FROM result_by_winner WHERE winner = 1;
## Get all matches on Feb 12 where home team won
SELECT * FROM result_by_winner WHERE winner = 1 AND date_discrete = 'Feb 12';

## Get all matches where away team won
SELECT * FROM result_by_winner WHERE winner = 2;
## Get all matches on Feb 12 where away team won
SELECT * FROM result_by_winner WHERE winner = 2 AND date_discrete = 'Feb 12';

## Get all matches where both teams tied
SELECT * FROM result_by_winner WHERE winner = 0;
