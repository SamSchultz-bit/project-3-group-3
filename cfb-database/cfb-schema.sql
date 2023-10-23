create table "cfb-years" (

    "year" integer NOT NULL,
    "national_champion" varchar(30) NOT NULL,
    "biletnikoff_winner" varchar(45) NOT NULL,
    constraint "pk_cfb-years" PRIMARY KEY (
        "year")
);

create table "2018-receiving-summary" (

    "year" integer NOT NULL,
    "player" varchar(40) NOT NULL,
    "player_id" integer PRIMARY KEY,
    "position" varchar(30) NOT NULL,
    "team_name" varchar(70) NOT NULL,
    "player_game_count" integer NOT NULL,
    "avg_depth_of_target" decimal NOT NULL,
    "avoided_tackles" integer NOT NULL,
    "caught_percent" decimal NOT NULL,
    "contested_catch_rate" decimal NOT NULL,
    "contested_receptions" integer NOT NULL,
    "contested_targets" integer NOT NULL,
    "declined_penalties" integer NOT NULL,
    "drop_rate" decimal NOT NULL,
    "drops" integer NOT NULL,
    "first_downs" integer NOT NULL,
    "franchise_id" integer NOT NULL,
    "fumbles" integer NOT NULL,
    "grades_hands_drop" decimal NOT NULL,
    "grades_hands_fumble" decimal NOT NULL,
    "grades_offense" decimal NOT NULL,
    "grades_pass_route" decimal NOT NULL,
    "interceptions" integer NOT NULL,
    "longest" integer NOT NULL,
    "pass_block_rate" decimal NOT NULL,
    "pass_blocks" integer NOT NULL,
    "pass_plays" integer NOT NULL,
    "penalties" integer NOT NULL,
    "receptions" integer NOT NULL,
    "route_rate" decimal NOT NULL,
    "routes" integer NOT NULL,
    "slot_rate" decimal NOT NULL,
    "slot_snaps" decimal NOT NULL,
    "targeted_qb_rating" decimal NOT NULL,
    "targets" integer NOT NULL,
    "touchdowns" integer NOT NULL,
    "wide_rate" decimal NOT NULL,
    "wide_snaps" integer NOT NULL,
    "yards" integer NOT NULL,
    "yards_after_catch" integer NOT NULL,
    "yards_after_catch_per_reception" decimal NOT NULL,
    "yards_per_reception" decimal NOT NULL,
    "yprr" decimal NOT NULL
--     CONSTRAINT "pk_2018-receiving-summary" PRIMARY KEY (
--         "player_id")
);
create table "2019-receiving-summary" (

    "year" integer NOT NULL,
    "player" varchar(40) NOT NULL,
    "player_id" integer NOT NULL,
    "position" varchar(30) NOT NULL,
    "team_name" varchar(70) NOT NULL,
    "player_game_count" integer NOT NULL,
    "avg_depth_of_target" decimal NOT NULL,
    "avoided_tackles" integer NOT NULL,
    "caught_percent" decimal NOT NULL,
    "contested_catch_rate" decimal NOT NULL,
    "contested_receptions" integer NOT NULL,
    "contested_targets" integer NOT NULL,
    "declined_penalties" integer NOT NULL,
    "drop_rate" decimal NOT NULL,
    "drops" integer NOT NULL,
    "first_downs" integer NOT NULL,
    "franchise_id" integer NOT NULL,
    "fumbles" integer NOT NULL,
    "grades_hands_drop" decimal NOT NULL,
    "grades_hands_fumble" decimal NOT NULL,
    "grades_offense" decimal NOT NULL,
    "grades_pass_route" decimal NOT NULL,
    "interceptions" integer NOT NULL,
    "longest" integer NOT NULL,
    "pass_block_rate" decimal NOT NULL,
    "pass_blocks" integer NOT NULL,
    "pass_plays" integer NOT NULL,
    "penalties" integer NOT NULL,
    "receptions" integer NOT NULL,
    "route_rate" decimal NOT NULL,
    "routes" integer NOT NULL,
    "slot_rate" decimal NOT NULL,
    "slot_snaps" decimal NOT NULL,
    "targeted_qb_rating" decimal NOT NULL,
    "targets" integer NOT NULL,
    "touchdowns" integer NOT NULL,
    "wide_rate" decimal NOT NULL,
    "wide_snaps" integer NOT NULL,
    "yards" integer NOT NULL,
    "yards_after_catch" integer NOT NULL,
    "yards_after_catch_per_reception" decimal NOT NULL,
    "yards_per_reception" decimal NOT NULL,
    "yprr" decimal NOT NULL,
    CONSTRAINT "pk_2019-receiving-summary" PRIMARY KEY (
        "player_id")
);

create table "2020-receiving-summary" (

    "year" integer NOT NULL,
    "player" varchar(40) NOT NULL,
    "player_id" integer NOT NULL,
    "position" varchar(30) NOT NULL,
    "team_name" varchar(70) NOT NULL,
    "player_game_count" integer NOT NULL,
    "avg_depth_of_target" decimal NOT NULL,
    "avoided_tackles" integer NOT NULL,
    "caught_percent" decimal NOT NULL,
    "contested_catch_rate" decimal NOT NULL,
    "contested_receptions" integer NOT NULL,
    "contested_targets" integer NOT NULL,
    "declined_penalties" integer NOT NULL,
    "drop_rate" decimal NOT NULL,
    "drops" integer NOT NULL,
    "first_downs" integer NOT NULL,
    "franchise_id" integer NOT NULL,
    "fumbles" integer NOT NULL,
    "grades_hands_drop" decimal NOT NULL,
    "grades_hands_fumble" decimal NOT NULL,
    "grades_offense" decimal NOT NULL,
    "grades_pass_route" decimal NOT NULL,
    "interceptions" integer NOT NULL,
    "longest" integer NOT NULL,
    "pass_block_rate" decimal NOT NULL,
    "pass_blocks" integer NOT NULL,
    "pass_plays" integer NOT NULL,
    "penalties" integer NOT NULL,
    "receptions" integer NOT NULL,
    "route_rate" decimal NOT NULL,
    "routes" integer NOT NULL,
    "slot_rate" decimal NOT NULL,
    "slot_snaps" decimal NOT NULL,
    "targeted_qb_rating" decimal NOT NULL,
    "targets" integer NOT NULL,
    "touchdowns" integer NOT NULL,
    "wide_rate" decimal NOT NULL,
    "wide_snaps" integer NOT NULL,
    "yards" integer NOT NULL,
    "yards_after_catch" integer NOT NULL,
    "yards_after_catch_per_reception" decimal NOT NULL,
    "yards_per_reception" decimal NOT NULL,
    "yprr" decimal NOT NULL,
    CONSTRAINT "pk_2020-receiving-summary" PRIMARY KEY (
        "player_id")
);
create table "2021-receiving-summary" (

    "year" integer NOT NULL,
    "player" varchar(40) NOT NULL,
    "player_id" integer NOT NULL,
    "position" varchar(30) NOT NULL,
    "team_name" varchar(70) NOT NULL,
    "player_game_count" integer NOT NULL,
    "avg_depth_of_target" decimal NOT NULL,
    "avoided_tackles" integer NOT NULL,
    "caught_percent" decimal NOT NULL,
    "contested_catch_rate" decimal NOT NULL,
    "contested_receptions" integer NOT NULL,
    "contested_targets" integer NOT NULL,
    "declined_penalties" integer NOT NULL,
    "drop_rate" decimal NOT NULL,
    "drops" integer NOT NULL,
    "first_downs" integer NOT NULL,
    "franchise_id" integer NOT NULL,
    "fumbles" integer NOT NULL,
    "grades_hands_drop" decimal NOT NULL,
    "grades_hands_fumble" decimal NOT NULL,
    "grades_offense" decimal NOT NULL,
    "grades_pass_route" decimal NOT NULL,
    "interceptions" integer NOT NULL,
    "longest" integer NOT NULL,
    "pass_block_rate" decimal NOT NULL,
    "pass_blocks" integer NOT NULL,
    "pass_plays" integer NOT NULL,
    "penalties" integer NOT NULL,
    "receptions" integer NOT NULL,
    "route_rate" decimal NOT NULL,
    "routes" integer NOT NULL,
    "slot_rate" decimal NOT NULL,
    "slot_snaps" decimal NOT NULL,
    "targeted_qb_rating" decimal NOT NULL,
    "targets" integer NOT NULL,
    "touchdowns" integer NOT NULL,
    "wide_rate" decimal NOT NULL,
    "wide_snaps" integer NOT NULL,
    "yards" integer NOT NULL,
    "yards_after_catch" integer NOT NULL,
    "yards_after_catch_per_reception" decimal NOT NULL,
    "yards_per_reception" decimal NOT NULL,
    "yprr" decimal NOT NULL,
    CONSTRAINT "pk_2021-receiving-summary" PRIMARY KEY (
        "player_id")
);

create table "2022-receiving-summary" (

    "year" integer NOT NULL,
    "player" varchar(40) NOT NULL,
    "player_id" integer NOT NULL,
    "position" varchar(30) NOT NULL,
    "team_name" varchar(70) NOT NULL,
    "player_game_count" integer NOT NULL,
    "avg_depth_of_target" decimal NOT NULL,
    "avoided_tackles" integer NOT NULL,
    "caught_percent" decimal NOT NULL,
    "contested_catch_rate" decimal NOT NULL,
    "contested_receptions" integer NOT NULL,
    "contested_targets" integer NOT NULL,
    "declined_penalties" integer NOT NULL,
    "drop_rate" decimal NOT NULL,
    "drops" integer NOT NULL,
    "first_downs" integer NOT NULL,
    "franchise_id" integer NOT NULL,
    "fumbles" integer NOT NULL,
    "grades_hands_drop" decimal NOT NULL,
    "grades_hands_fumble" decimal NOT NULL,
    "grades_offense" decimal NOT NULL,
    "grades_pass_route" decimal NOT NULL,
    "interceptions" integer NOT NULL,
    "longest" integer NOT NULL,
    "pass_block_rate" decimal NOT NULL,
    "pass_blocks" integer NOT NULL,
    "pass_plays" integer NOT NULL,
    "penalties" integer NOT NULL,
    "receptions" integer NOT NULL,
    "route_rate" decimal NOT NULL,
    "routes" integer NOT NULL,
    "slot_rate" decimal NOT NULL,
    "slot_snaps" decimal NOT NULL,
    "targeted_qb_rating" decimal NOT NULL,
    "targets" integer NOT NULL,
    "touchdowns" integer NOT NULL,
    "wide_rate" decimal NOT NULL,
    "wide_snaps" integer NOT NULL,
    "yards" integer NOT NULL,
    "yards_after_catch" integer NOT NULL,
    "yards_after_catch_per_reception" decimal NOT NULL,
    "yards_per_reception" decimal NOT NULL,
    "yprr" decimal NOT NULL,
    CONSTRAINT "pk_2022-receiving-summary" PRIMARY KEY (
        "player_id")
);

create table "2018-team-success" (

    "year" integer NOT NULL,
    "team_name" varchar(40) PRIMARY KEY,
    "team_grade" decimal NOT NULL
--     CONSTRAINT "pk_2018-team-success" PRIMARY KEY (
--         "team_name"
--     )
);

create table "2019-team-success" (

    "year" integer NOT NULL,
    "team_name" varchar(40) NOT NULL,
    "team_grade" decimal NOT NULL,
    CONSTRAINT "pk_2019-team-success" PRIMARY KEY (
        "team_name"
    )
);

create table "2020-team-success" (

    "year" integer NOT NULL,
    "team_name" varchar(40) NOT NULL,
    "team_grade" decimal NOT NULL,
    CONSTRAINT "pk_2020-team-success" PRIMARY KEY (
        "team_name"
    )
);

create table "2021-team-success" (

    "year" integer NOT NULL,
    "team_name" varchar(40) NOT NULL,
    "team_grade" decimal NOT NULL,
    CONSTRAINT "pk_2021-team-success" PRIMARY KEY (
        "team_name"
    )
);

create table "2022-team-success" (

    "year" integer NOT NULL,
    "team_name" varchar(40) NOT NULL,
    "team_grade" decimal NOT NULL,
    CONSTRAINT "pk_2022-team-success" PRIMARY KEY (
        "team_name"
    )
);

ALTER TABLE "2018-receiving-summary" ADD CONSTRAINT "fk_year" FOREIGN KEY("year")
REFERENCES "cfb-years" ("year");

ALTER TABLE "2019-receiving-summary" ADD CONSTRAINT "fk_year" FOREIGN KEY("year")
REFERENCES "cfb-years" ("year");

ALTER TABLE "2020-receiving-summary" ADD CONSTRAINT "fk_year" FOREIGN KEY("year")
REFERENCES "cfb-years" ("year");

ALTER TABLE "2021-receiving-summary" ADD CONSTRAINT "fk_year" FOREIGN KEY("year")
REFERENCES "cfb-years" ("year");

ALTER TABLE "2022-receiving-summary" ADD CONSTRAINT "fk_year" FOREIGN KEY("year")
REFERENCES "cfb-years" ("year");

ALTER TABLE "2018-receiving-summary" ADD CONSTRAINT "fk_team_name" FOREIGN KEY("team_name")
REFERENCES "2018-team-success" ("team_name");

ALTER TABLE "2019-receiving-summary" ADD CONSTRAINT "fk_team_name" FOREIGN KEY("team_name")
REFERENCES "2019-team-success" ("team_name");

ALTER TABLE "2020-receiving-summary" ADD CONSTRAINT "fk_team_name" FOREIGN KEY("team_name")
REFERENCES "2020-team-success" ("team_name");

ALTER TABLE "2021-receiving-summary" ADD CONSTRAINT "fk_team_name" FOREIGN KEY("team_name")
REFERENCES "2021-team-success" ("team_name");

ALTER TABLE "2022-receiving-summary" ADD CONSTRAINT "fk_team_name" FOREIGN KEY("team_name")
REFERENCES "2022-team-success" ("team_name");
