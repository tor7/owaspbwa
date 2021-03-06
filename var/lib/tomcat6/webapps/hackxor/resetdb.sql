DROP DATABASE citizens;
DROP DATABASE wraithlogin;
DROP DATABASE HEX;
DROP DATABASE PROXY;
DROP DATABASE ISP;
DROP DATABASE rentnet;
DROP USER 'citizens'@'localhost'
DROP USER 'wraith'@'localhost'
DROP USER 'hex'@'localhost'
DROP USER 'webmaster'@'localhost'
DROP USER 'kbloom'@'localhost'
DROP USER 'sendmail'@'localhost'
DROP USER 'undertaker'@'localhost'
DROP USER 'stealth'@'localhost'

CREATE DATABASE citizens;
CREATE DATABASE wraithlogin;
CREATE DATABASE HEX;
CREATE DATABASE PROXY;
CREATE DATABASE ISP;
CREATE DATABASE rentnet;



use citizens;
CREATE TABLE logins
(
email varchar(255),
site varchar(255),
username varchar(255),
password varchar(255)
);
insert into logins values ("thursday@wraithmail.net", "wraithmail:80/index.jsp", "thursday", "87lkUv13Y");
insert into logins values ("thursday@wraithmail.net", "GGHB:80/ISP.jsp", "gen8827", "9f3a81aK");
insert into logins values ("thursday@wraithmail.net", "cloaknet:80/index.jsp", "thursday", "hydrazine");
insert into logins values ("kbloom@wraithmail.net", "GGHB:80/ISP.jsp", "admin", "682az");
insert into logins values ("jacobson@wraithmail.net", "hub71:80/botlogin.jsp", "jacobson", "timed");
insert into logins values ("jacobson@wraithmail.net", "hub71:80/botlogin2.jsp", "jacobson", "timed");
insert into logins values ("kruger@wraithmail.net", "wraithmail:80/index.jsp", "kruger", "irrelevantBAT");
insert into logins values ("blu@wraithmail.net", "wraithmail:80/index.jsp", "blu", "rosebud");
insert into logins values ("blu@wraithmail.net", "cloaknet:80/index.jsp", "blu", "rosebud");


use wraithlogin;

create table stealth ( score int );
insert into stealth values (10);

CREATE TABLE users
(
user varchar(255),
password varchar(255),
fails varchar(50)
);

insert into users values ("algo", "smurf", "0");
insert into users values ("kbloom", "682az", "0");
insert into users values ("thursday", "87lkUv13Y", "0");
insert into users values ("kruger", "irrelevantBAT", "0");
insert into users values ("blu", "rosebud", "0");
insert into users values ("ice", "coupdetat", "0");

CREATE TABLE mail
(
mid varchar(255),
toad varchar(255),
fromad varchar(255),
subject varchar(255),
body varchar(2000)
);

INSERT INTO mail VALUES ("9660695031371369539", "algo@wraithmail.net", "overseer@wraithmail.net", "trace job", "Get me the name and address of the hacker behind the following attack:<br><br>
GET http://utrack/cat.jsp?id=1 union select null,load_file('/dev/random'),null,2000 into outfile '/a'<br>
Host: www.utrack.info<br>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3<br>
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8<br>
Accept-Language: en-us,en;q=0.5<br>
Accept-Encoding: gzip,deflate<br>
Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7<br>
Keep-Alive: 115<br>
Proxy-Connection: keep-alive<br>
Referer: http://wraithbox:80/htmlisland.jsp?messageid=2849902671918618960<br><br>

The perpetrators (and most people in this scene) use TOR so their IP won't be much use and they won't be loading images, flash, java applets etc.<br>
If you aren't using one already, you'll probably need some kind of intercepting proxy. I'd recommend <a href='http://portswigger.net/burp/proxy.html'>BURP</a>, <a href='http://www.owasp.org/index.php/Category:OWASP_WebScarab_Project'>Webscarab</a> or <a href='http://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'>ZAP</a>. You could use the firefox addon TamperData instead if you're a masochist. NoScript might be of use since if you get tracked you might find some attacks coming your way.
");

INSERT INTO mail VALUES ("2849902671918618960", "hkoch@wraithmail.net", "rwilson@wraithmail.net", "Check this out!", "<br><br>I finally uploaded those pictures of you from the other night: <a href='http://utrack/cat.jsp?id=1 union select null,load_file(%27/dev/random%27),null,2000 into outfile %27/a%27'>http://www.photobucket.com?id=321085</a>");
INSERT INTO mail VALUES ("11534931781825989401", "kbloom@wraithmail.net", "ihateu", "", "STOP THROTTLING ME!!!!!");
INSERT INTO mail VALUES ("18986235651453264895", "kruger@wraithmail.net", "kbloom@wraithmail.net", "Re: CSRF vulnerability in your site ", "Do not worry about hackers. We have a Firewall");
INSERT INTO mail VALUES ("17881952481646770828", "thursday@wraithmail.net", "", "Re: tripwire", "Isn't that a little paranoid?");
INSERT INTO mail VALUES ("3945573531292994030", "blu@wraithmail.net", "", "Re: base64 encoding", "Yeah, me too.");
INSERT INTO mail VALUES ("1658383631929608861", "thursday@wraithmail.net", "overseer@wraithmail.net", "Re: Done", "Good. Now eliminate the site utrack using cloaknet.");
INSERT INTO mail VALUES ("5617985071009432495", "thursday@wraithmail.net", "watchman@cloaknet", "[Watchman] Activity alert on cloaknet", "New activity logged to http://127.0.0.3:16729/6624817.pcap<br>Brought to you by Watchman. Every hacker's dream, every sysadmin's nightmare.");
INSERT INTO mail VALUES ("7517719721724459307", "algo@wraithmail.net", "noreply@wraithmail.net", "Welcome", "Welcome to wraithmail! We hope you enjoy your clandestine stay.");















USE HEX;
CREATE TABLE loginhistory
(
userid varchar(255),
date varchar(255),
IP varchar(255),
useragent varchar(255),
successful varchar(255),
abuse varchar(255)
);

INSERT INTO loginhistory VALUES ("rwilson", "09/07/01", "70.86.70.33", "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.13) Gecko/20101209 Fedora/3.6.13-1.fc13 Firefox/3.6.13", "Yes", "<a href='http://cloaknet:80'>abuse@cloaknet</a>");
INSERT INTO loginhistory VALUES ("7221", "13/07/01", "43.161.90.58", "Links (2.2; Linux 2.6.33.8-149.fc13.x86_64 x86_64; 236x57)", "Yes", "<a href='http://aol.com'>abuse@aol.com</a>");
INSERT INTO loginhistory VALUES ("algo", "13/07/01", "43.161.90.58", "Links (2.2; Linux 2.6.33.8-149.fc13.x86_64 x86_64; 236x57)", "Yes", "<a href='http://virginmedia.com'>abuse@viginmedia.com</a>");



USE PROXY;
CREATE TABLE users
(
user varchar(255),
password varchar(255),
id int
);

insert into users 
values ("blu", "rosebud", 72133);
insert into users 
values ("thursday", "hydrazine", 13134);
insert into users 
values ("demo", "demo", 71934);

CREATE TABLE logs
(
userid varchar(255),
source varchar(255),
target varchar(255),
timestamp varchar(255)
);

insert into logs
values ("72133", "<a href='http://gghb:80'>86.5.223.129@GGHB</a>", "26.12.273.89", "13/6/01");
insert into logs
values ("13134", "<a href='http://gghb:80'>86.5.223.42@GGHB</a>", "wraithmail:80/send.jsp", "09/7/01");
insert into logs
values ("71934", "137.40.29.72", "wraithmail:80", "13/7/01");










USE ISP;
CREATE TABLE users
(
user varchar(255),
password varchar(255),
email varchar(255),
userid varchar(255),
logname varchar(255),
fails varchar(50)
);


insert into users values ("blu", "rosebud", "blu@waxed.net", "28442", "AducQ6SL9exC", "0" );
insert into users values ("gen8827", "9f3a81aK", "thursday@wraithmail.net", 12284, "8KHfbwTnCpY", "0");
insert into users values ("urp", "legume", "cyberpunk", "18273", "CRwo0GHGwPPx", "0");
insert into users values ("admin", "682az", "kbloom@wraithmail.net", "11", "2tceVviMzJGL", "0");







use rentnet;
create table logins
(
email varchar(255),
username varchar(255),
passhash varchar(255),
phone varchar(255),
hash varchar(255),
img varchar(255),
text varchar(255),
sound varchar(255),
fails varchar(50)
);
insert into logins values ("ice@wraithmail.net", "ice", "940802416f93fe879527ad5a2e943159", "", "", "", "", "", "0");
insert into logins values ("jacobson@wraithmail.net", "jacobson", "6c86eb53ee544db77a473265058cffbe", "", "", "", "", "", "0"); 








CREATE USER 'citizens'@'localhost' IDENTIFIED BY '35DAS2aj^27sxSLFDHaaf';
GRANT SELECT, INSERT, UPDATE ON citizens.* TO 'citizens'@'localhost'
WITH GRANT OPTION;

CREATE USER 'wraith'@'localhost' IDENTIFIED BY '5Z1aZfs%&zaA!6597';
GRANT SELECT, INSERT, UPDATE ON wraithlogin.* TO 'wraith'@'localhost'
WITH GRANT OPTION;

CREATE USER 'hex'@'localhost' IDENTIFIED BY 'tryCAKE4ever';
GRANT SELECT, INSERT, UPDATE ON HEX.* TO 'hex'@'localhost'
WITH GRANT OPTION;

CREATE USER 'webmaster'@'localhost' IDENTIFIED BY 'disCON1991';
GRANT SELECT, INSERT, UPDATE ON PROXY.* TO 'webmaster'@'localhost'
WITH GRANT OPTION;

CREATE USER 'kbloom'@'localhost' IDENTIFIED BY '741lkz';
GRANT SELECT, INSERT, UPDATE ON ISP.* TO 'kbloom'@'localhost'
WITH GRANT OPTION;

CREATE USER 'sendmail'@'localhost' IDENTIFIED BY 'awv8ja';
GRANT INSERT ON wraithlogin.mail TO 'sendmail'@'localhost'
WITH GRANT OPTION;

CREATE USER 'undertaker'@'localhost' IDENTIFIED BY 'atw8VZr9$41K';
GRANT SELECT, INSERT, UPDATE ON rentnet.* TO 'undertaker'@'localhost'
WITH GRANT OPTION;

CREATE USER 'stealth'@'localhost' IDENTIFIED BY 'je984zx';
GRANT SELECT, INSERT, UPDATE ON wraithlogin.stealth TO 'stealth'@'localhost'
WITH GRANT OPTION;