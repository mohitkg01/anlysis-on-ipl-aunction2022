SELECT * FROM ipl.ipl_auction_2022_fulllist;

#total no of player participated
select count(players)as Total_no_of_players from ipl.ipl_auction_2022_fulllist;

#total no of sold and unsold players
select count(players) as Sold_players from ipl.ipl_auction_2022_fulllist where team !='unsold';
select count(players) as Unsold_players from ipl.ipl_auction_2022_fulllist where team ='unsold';

#Diffrent country  players participated
select distinct(country) from ipl.ipl_auction_2022_fulllist;

#No of Players from diffrent country
select country,count(country) as no_of_players from ipl.ipl_auction_2022_fulllist
 group by country order by no_of_players desc;

#total capped player
select count(CaUcAs) as Capped_player from ipl.ipl_auction_2022_fulllist where CaUcAs  like 'capped%';

#Batsman,wicketkeeper,Bolwer and All-rounder those are sold
select * from ipl.ipl_auction_2022_fulllist where specialism='batsman' and team !='unsold';
select * from ipl.ipl_auction_2022_fulllist where specialism='Bowler' and team !='unsold';
select * from ipl.ipl_auction_2022_fulllist where specialism='All-Rounder' and team !='unsold';
select * from ipl.ipl_auction_2022_fulllist where specialism='Wicketkeeper' and team !='unsold';
select * from ipl.ipl_auction_2022_fulllist where Specialism in ('bowler','All-rounder') and
bowlingstyle like '%spin' and team!='unsold';

#Most ipl played by player
select * from ipl.ipl_auction_2022_fulllist order by ipl desc limit 1;
# most ipl played by batsman
select * from ipl.ipl_auction_2022_fulllist  where specialism='batsman' order by ipl desc limit 1;

#Players in each team 
select  team,count(team) as no_of_plyers from ipl.ipl_auction_2022_fulllist group by team order by 2;

#Most expensive player in Auction
select * from ipl.ipl_auction_2022_fulllist order by pricepaid desc limit 1;
#5th most expensive player
select * from ipl.ipl_auction_2022_fulllist order by pricepaid desc limit 1 offset 4;

#Players other than india
select * from ipl.ipl_auction_2022_fulllist where country !='India' order by age desc;

#Most experienced player T20 and Ipl
select * from ipl.ipl_auction_2022_fulllist order by T20caps desc,IPl desc;

#Players those are capped but got unsold
select * from ipl.ipl_auction_2022_fulllist where  CaUcAs='Capped' and team='unsold';
