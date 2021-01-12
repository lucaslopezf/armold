/***CREATING ALL TABLES*/

CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_deleted` timestamp NULL DEFAULT NULL,
  `iso_2` longtext,
  `iso_3` longtext,
  `name` longtext,
  PRIMARY KEY (`id`)
);

CREATE TABLE `state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_deleted` timestamp NULL DEFAULT NULL,
  `name` longtext NOT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_States_CountryId` (`country_id`)
);

CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_deleted` timestamp NULL DEFAULT NULL,
  `name` longtext NOT NULL,
  `state_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Cities_StateId` (`state_id`)
);

CREATE TABLE `locality` (
  `id` int NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_deleted` datetime(6) DEFAULT NULL,
  `description` longtext,
  `city_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Localities_CityId` (`city_id`)
);

/***INSERT COUNTRY*/

INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:01.0',NULL,'TW','TWN','Taiwan')
,('2020-04-27 22:29:05.0',NULL,'NE','NER','Niger')
,('2020-04-27 22:29:05.0',NULL,'NG','NGA','Nigeria')
,('2020-04-27 22:29:05.0',NULL,'NU','NIU','Niue')
,('2020-04-27 22:29:05.0',NULL,'NF','NFK','Norfolk Island')
,('2020-04-27 22:29:05.0',NULL,'MP','MNP','Northern Mariana Islands')
,('2020-04-27 22:29:05.0',NULL,'NO','NOR','Norway')
,('2020-04-27 22:29:05.0',NULL,'OM','OMN','Oman')
,('2020-04-27 22:29:05.0',NULL,'PK','PAK','Pakistan')
,('2020-04-27 22:29:05.0',NULL,'PW','PLW','Palau')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'PA','PAN','Panama')
,('2020-04-27 22:29:05.0',NULL,'PG','PNG','Papua New Guinea')
,('2020-04-27 22:29:05.0',NULL,'PY','PRY','Paraguay')
,('2020-04-27 22:29:05.0',NULL,'PE','PER','Peru')
,('2020-04-27 22:29:05.0',NULL,'PH','PHL','Philippines')
,('2020-04-27 22:29:05.0',NULL,'PN','PCN','Pitcairn Islands')
,('2020-04-27 22:29:05.0',NULL,'PL','POL','Poland')
,('2020-04-27 22:29:05.0',NULL,'PT','PRT','Portugal')
,('2020-04-27 22:29:05.0',NULL,'PR','PRI','Puerto Rico')
,('2020-04-27 22:29:05.0',NULL,'QA','QAT','Qatar')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'KR','KOR','South Korea')
,('2020-04-27 22:29:05.0',NULL,'MD','MDA','Moldova')
,('2020-04-27 22:29:05.0',NULL,'RO','ROU','Romania')
,('2020-04-27 22:29:05.0',NULL,'RU','RUS','Russia')
,('2020-04-27 22:29:05.0',NULL,'RW','RWA','Rwanda')
,('2020-04-27 22:29:05.0',NULL,'RE','REU','Réunion')
,('2020-04-27 22:29:05.0',NULL,'BL','BLM','St. Barthélemy')
,('2020-04-27 22:29:05.0',NULL,'SH','SHN','St. Helena')
,('2020-04-27 22:29:05.0',NULL,'NI','NIC','Nicaragua')
,('2020-04-27 22:29:05.0',NULL,'KN','KNA','St. Kitts & Nevis')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'NZ','NZL','New Zealand')
,('2020-04-27 22:29:05.0',NULL,'NL','NLD','Netherlands')
,('2020-04-27 22:29:05.0',NULL,'LY','LBY','Libya')
,('2020-04-27 22:29:05.0',NULL,'LI','LIE','Liechtenstein')
,('2020-04-27 22:29:05.0',NULL,'LT','LTU','Lithuania')
,('2020-04-27 22:29:05.0',NULL,'LU','LUX','Luxembourg')
,('2020-04-27 22:29:05.0',NULL,'MG','MDG','Madagascar')
,('2020-04-27 22:29:05.0',NULL,'MW','MWI','Malawi')
,('2020-04-27 22:29:05.0',NULL,'MY','MYS','Malaysia')
,('2020-04-27 22:29:05.0',NULL,'MV','MDV','Maldives')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'ML','MLI','Mali')
,('2020-04-27 22:29:05.0',NULL,'MT','MLT','Malta')
,('2020-04-27 22:29:05.0',NULL,'MH','MHL','Marshall Islands')
,('2020-04-27 22:29:05.0',NULL,'MQ','MTQ','Martinique')
,('2020-04-27 22:29:05.0',NULL,'MR','MRT','Mauritania')
,('2020-04-27 22:29:05.0',NULL,'MU','MUS','Mauritius')
,('2020-04-27 22:29:05.0',NULL,'YT','MYT','Mayotte')
,('2020-04-27 22:29:05.0',NULL,'MX','MEX','Mexico')
,('2020-04-27 22:29:05.0',NULL,'FM','FSM','Micronesia')
,('2020-04-27 22:29:05.0',NULL,'MC','MCO','Monaco')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'MN','MNG','Mongolia')
,('2020-04-27 22:29:05.0',NULL,'ME','MNE','Montenegro')
,('2020-04-27 22:29:05.0',NULL,'MS','MSR','Montserrat')
,('2020-04-27 22:29:05.0',NULL,'MA','MAR','Morocco')
,('2020-04-27 22:29:05.0',NULL,'MZ','MOZ','Mozambique')
,('2020-04-27 22:29:05.0',NULL,'MM','MMR','Myanmar')
,('2020-04-27 22:29:05.0',NULL,'NA','NAM','Namibia')
,('2020-04-27 22:29:05.0',NULL,'NR','NRU','Nauru')
,('2020-04-27 22:29:05.0',NULL,'NP','NPL','Nepal')
,('2020-04-27 22:29:05.0',NULL,'NC','NCL','New Caledonia')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'LC','LCA','St. Lucia')
,('2020-04-27 22:29:05.0',NULL,'MF','MAF','St. Martin')
,('2020-04-27 22:29:05.0',NULL,'PM','SPM','St. Pierre & Miquelon')
,('2020-04-27 22:29:05.0',NULL,'TL','TLS','Timor-Leste')
,('2020-04-27 22:29:05.0',NULL,'TG','TGO','Togo')
,('2020-04-27 22:29:05.0',NULL,'TK','TKL','Tokelau')
,('2020-04-27 22:29:05.0',NULL,'TO','TON','Tonga')
,('2020-04-27 22:29:05.0',NULL,'TT','TTO','Trinidad & Tobago')
,('2020-04-27 22:29:05.0',NULL,'TN','TUN','Tunisia')
,('2020-04-27 22:29:05.0',NULL,'TR','TUR','Turkey')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'TM','TKM','Turkmenistan')
,('2020-04-27 22:29:05.0',NULL,'TC','TCA','Turks & Caicos Islands')
,('2020-04-27 22:29:05.0',NULL,'TV','TUV','Tuvalu')
,('2020-04-27 22:29:05.0',NULL,'UG','UGA','Uganda')
,('2020-04-27 22:29:05.0',NULL,'UA','UKR','Ukraine')
,('2020-04-27 22:29:05.0',NULL,'AE','ARE','United Arab Emirates')
,('2020-04-27 22:29:05.0',NULL,'GB','GBR','UK')
,('2020-04-27 22:29:05.0',NULL,'TZ','TZA','Tanzania')
,('2020-04-27 22:29:05.0',NULL,'UM','UMI','U.S. Outlying Islands')
,('2020-04-27 22:29:05.0',NULL,'VI','VIR','U.S. Virgin Islands')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'US','USA','US')
,('2020-04-27 22:29:05.0',NULL,'UY','URY','Uruguay')
,('2020-04-27 22:29:05.0',NULL,'UZ','UZB','Uzbekistan')
,('2020-04-27 22:29:05.0',NULL,'VU','VUT','Vanuatu')
,('2020-04-27 22:29:05.0',NULL,'VE','VEN','Venezuela')
,('2020-04-27 22:29:05.0',NULL,'VN','VNM','Vietnam')
,('2020-04-27 22:29:05.0',NULL,'WF','WLF','Wallis & Futuna')
,('2020-04-27 22:29:05.0',NULL,'EH','ESH','Western Sahara')
,('2020-04-27 22:29:05.0',NULL,'YE','YEM','Yemen')
,('2020-04-27 22:29:05.0',NULL,'ZM','ZMB','Zambia')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'MK','MKD','Macedonia')
,('2020-04-27 22:29:05.0',NULL,'TH','THA','Thailand')
,('2020-04-27 22:29:05.0',NULL,'TJ','TJK','Tajikistan')
,('2020-04-27 22:29:05.0',NULL,'SY','SYR','Syria')
,('2020-04-27 22:29:05.0',NULL,'VC','VCT','St. Vincent & Grenadines')
,('2020-04-27 22:29:05.0',NULL,'WS','WSM','Samoa')
,('2020-04-27 22:29:05.0',NULL,'SM','SMR','San Marino')
,('2020-04-27 22:29:05.0',NULL,'ST','STP','São Tomé & Príncipe')
,('2020-04-27 22:29:05.0',NULL,NULL,NULL,NULL)
,('2020-04-27 22:29:05.0',NULL,'SA','SAU','Saudi Arabia')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'SN','SEN','Senegal')
,('2020-04-27 22:29:05.0',NULL,'RS','SRB','Serbia')
,('2020-04-27 22:29:05.0',NULL,'SC','SYC','Seychelles')
,('2020-04-27 22:29:05.0',NULL,'SL','SLE','Sierra Leone')
,('2020-04-27 22:29:05.0',NULL,'SG','SGP','Singapore')
,('2020-04-27 22:29:05.0',NULL,'SX','SXM','Sint Maarten')
,('2020-04-27 22:29:05.0',NULL,'SK','SVK','Slovakia')
,('2020-04-27 22:29:05.0',NULL,'LR','LBR','Liberia')
,('2020-04-27 22:29:05.0',NULL,'SI','SVN','Slovenia')
,('2020-04-27 22:29:05.0',NULL,'SO','SOM','Somalia')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'ZA','ZAF','South Africa')
,('2020-04-27 22:29:05.0',NULL,'GS','SGS','South Georgia & South Sandwich Islands')
,('2020-04-27 22:29:05.0',NULL,'SS','SSD','South Sudan')
,('2020-04-27 22:29:05.0',NULL,'ES','ESP','Spain')
,('2020-04-27 22:29:05.0',NULL,'LK','LKA','Sri Lanka')
,('2020-04-27 22:29:05.0',NULL,'PS','PSE','Palestine')
,('2020-04-27 22:29:05.0',NULL,'SD','SDN','Sudan')
,('2020-04-27 22:29:05.0',NULL,'SR','SUR','Suriname')
,('2020-04-27 22:29:05.0',NULL,'SJ','SJM','Svalbard & Jan Mayen')
,('2020-04-27 22:29:05.0',NULL,'SZ','SWZ','Swaziland')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'SE','SWE','Sweden')
,('2020-04-27 22:29:05.0',NULL,'CH','CHE','Switzerland')
,('2020-04-27 22:29:05.0',NULL,'SB','SLB','Solomon Islands')
,('2020-04-27 22:29:05.0',NULL,'LS','LSO','Lesotho')
,('2020-04-27 22:29:05.0',NULL,'LB','LBN','Lebanon')
,('2020-04-27 22:29:05.0',NULL,'LV','LVA','Latvia')
,('2020-04-27 22:29:05.0',NULL,'VG','VGB','British Virgin Islands')
,('2020-04-27 22:29:05.0',NULL,'BN','BRN','Brunei')
,('2020-04-27 22:29:05.0',NULL,'BG','BGR','Bulgaria')
,('2020-04-27 22:29:05.0',NULL,'BF','BFA','Burkina Faso')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'BI','BDI','Burundi')
,('2020-04-27 22:29:05.0',NULL,'CV','CPV','Cape Verde')
,('2020-04-27 22:29:05.0',NULL,'KH','KHM','Cambodia')
,('2020-04-27 22:29:05.0',NULL,'CM','CMR','Cameroon')
,('2020-04-27 22:29:05.0',NULL,'CA','CAN','Canada')
,('2020-04-27 22:29:05.0',NULL,'KY','CYM','Cayman Islands')
,('2020-04-27 22:29:05.0',NULL,'CF','CAF','Central African Republic')
,('2020-04-27 22:29:05.0',NULL,'TD','TCD','Chad')
,('2020-04-27 22:29:05.0',NULL,'CL','CHL','Chile')
,('2020-04-27 22:29:05.0',NULL,'CN','CHN','China')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'HK','HKG','Hong Kong')
,('2020-04-27 22:29:05.0',NULL,'MO','MAC','Macau')
,('2020-04-27 22:29:05.0',NULL,'CX','CXR','Christmas Island')
,('2020-04-27 22:29:05.0',NULL,'CC','CCK','Cocos (Keeling) Islands')
,('2020-04-27 22:29:05.0',NULL,'CO','COL','Colombia')
,('2020-04-27 22:29:05.0',NULL,'KM','COM','Comoros')
,('2020-04-27 22:29:05.0',NULL,'CG','COG','Congo - Brazzaville')
,('2020-04-27 22:29:05.0',NULL,'CK','COK','Cook Islands')
,('2020-04-27 22:29:05.0',NULL,'CR','CRI','Costa Rica')
,('2020-04-27 22:29:05.0',NULL,'HR','HRV','Croatia')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'CU','CUB','Cuba')
,('2020-04-27 22:29:05.0',NULL,'CW','CUW','Curaçao')
,('2020-04-27 22:29:05.0',NULL,'CY','CYP','Cyprus')
,('2020-04-27 22:29:05.0',NULL,'IO','IOT','British Indian Ocean Territory')
,('2020-04-27 22:29:05.0',NULL,'BR','BRA','Brazil')
,('2020-04-27 22:29:05.0',NULL,'BV','BVT','Bouvet Island')
,('2020-04-27 22:29:05.0',NULL,'BW','BWA','Botswana')
,('2020-04-27 22:29:05.0',NULL,'AF','AFG','Afghanistan')
,('2020-04-27 22:29:05.0',NULL,'AL','ALB','Albania')
,('2020-04-27 22:29:05.0',NULL,'DZ','DZA','Algeria')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'AS','ASM','American Samoa')
,('2020-04-27 22:29:05.0',NULL,'AD','AND','Andorra')
,('2020-04-27 22:29:05.0',NULL,'AO','AGO','Angola')
,('2020-04-27 22:29:05.0',NULL,'AI','AIA','Anguilla')
,('2020-04-27 22:29:05.0',NULL,'AQ','ATA','Antarctica')
,('2020-04-27 22:29:05.0',NULL,'AG','ATG','Antigua & Barbuda')
,('2020-04-27 22:29:05.0',NULL,'AM','ARM','Armenia')
,('2020-04-27 22:29:05.0',NULL,'AW','ABW','Aruba')
,('2020-04-27 22:29:05.0',NULL,'AU','AUS','Australia')
,('2020-04-27 22:29:05.0',NULL,'CZ','CZE','Czechia')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'AT','AUT','Austria')
,('2020-04-27 22:29:05.0',NULL,'BS','BHS','Bahamas')
,('2020-04-27 22:29:05.0',NULL,'BH','BHR','Bahrain')
,('2020-04-27 22:29:05.0',NULL,'BD','BGD','Bangladesh')
,('2020-04-27 22:29:05.0',NULL,'BB','BRB','Barbados')
,('2020-04-27 22:29:05.0',NULL,'BY','BLR','Belarus')
,('2020-04-27 22:29:05.0',NULL,'BE','BEL','Belgium')
,('2020-04-27 22:29:05.0',NULL,'BZ','BLZ','Belize')
,('2020-04-27 22:29:05.0',NULL,'BJ','BEN','Benin')
,('2020-04-27 22:29:05.0',NULL,'BM','BMU','Bermuda')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'BT','BTN','Bhutan')
,('2020-04-27 22:29:05.0',NULL,'BO','BOL','Bolivia')
,('2020-04-27 22:29:05.0',NULL,'BQ','BES','Caribbean Netherlands')
,('2020-04-27 22:29:05.0',NULL,'BA','BIH','Bosnia')
,('2020-04-27 22:29:05.0',NULL,'AZ','AZE','Azerbaijan')
,('2020-04-27 22:29:05.0',NULL,'ZW','ZWE','Zimbabwe')
,('2020-04-27 22:29:05.0',NULL,'CI','CIV','Côte d’Ivoire')
,('2020-04-27 22:29:05.0',NULL,'CD','COD','Congo - Kinshasa')
,('2020-04-27 22:29:05.0',NULL,'GN','GIN','Guinea')
,('2020-04-27 22:29:05.0',NULL,'GW','GNB','Guinea-Bissau')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'GY','GUY','Guyana')
,('2020-04-27 22:29:05.0',NULL,'HT','HTI','Haiti')
,('2020-04-27 22:29:05.0',NULL,'HM','HMD','Heard & McDonald Islands')
,('2020-04-27 22:29:05.0',NULL,'VA','VAT','Vatican City')
,('2020-04-27 22:29:05.0',NULL,'HN','HND','Honduras')
,('2020-04-27 22:29:05.0',NULL,'HU','HUN','Hungary')
,('2020-04-27 22:29:05.0',NULL,'IS','ISL','Iceland')
,('2020-04-27 22:29:05.0',NULL,'IN','IND','India')
,('2020-04-27 22:29:05.0',NULL,'ID','IDN','Indonesia')
,('2020-04-27 22:29:05.0',NULL,'IR','IRN','Iran')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'IQ','IRQ','Iraq')
,('2020-04-27 22:29:05.0',NULL,'IE','IRL','Ireland')
,('2020-04-27 22:29:05.0',NULL,'IM','IMN','Isle of Man')
,('2020-04-27 22:29:05.0',NULL,'IL','ISR','Israel')
,('2020-04-27 22:29:05.0',NULL,'IT','ITA','Italy')
,('2020-04-27 22:29:05.0',NULL,'JM','JAM','Jamaica')
,('2020-04-27 22:29:05.0',NULL,'JP','JPN','Japan')
,('2020-04-27 22:29:05.0',NULL,'JE','JEY','Jersey')
,('2020-04-27 22:29:05.0',NULL,'JO','JOR','Jordan')
,('2020-04-27 22:29:05.0',NULL,'KZ','KAZ','Kazakhstan')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'KE','KEN','Kenya')
,('2020-04-27 22:29:05.0',NULL,'KI','KIR','Kiribati')
,('2020-04-27 22:29:05.0',NULL,'KW','KWT','Kuwait')
,('2020-04-27 22:29:05.0',NULL,'KG','KGZ','Kyrgyzstan')
,('2020-04-27 22:29:05.0',NULL,'LA','LAO','Laos')
,('2020-04-27 22:29:05.0',NULL,'GG','GGY','Guernsey')
,('2020-04-27 22:29:05.0',NULL,'GT','GTM','Guatemala')
,('2020-04-27 22:29:05.0',NULL,'GU','GUM','Guam')
,('2020-04-27 22:29:05.0',NULL,'GP','GLP','Guadeloupe')
,('2020-04-27 22:29:05.0',NULL,'DK','DNK','Denmark')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'DJ','DJI','Djibouti')
,('2020-04-27 22:29:05.0',NULL,'DM','DMA','Dominica')
,('2020-04-27 22:29:05.0',NULL,'DO','DOM','Dominican Republic')
,('2020-04-27 22:29:05.0',NULL,'EC','ECU','Ecuador')
,('2020-04-27 22:29:05.0',NULL,'EG','EGY','Egypt')
,('2020-04-27 22:29:05.0',NULL,'SV','SLV','El Salvador')
,('2020-04-27 22:29:05.0',NULL,'GQ','GNQ','Equatorial Guinea')
,('2020-04-27 22:29:05.0',NULL,'ER','ERI','Eritrea')
,('2020-04-27 22:29:05.0',NULL,'EE','EST','Estonia')
,('2020-04-27 22:29:05.0',NULL,'ET','ETH','Ethiopia')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'FK','FLK','Falkland Islands')
,('2020-04-27 22:29:05.0',NULL,'FO','FRO','Faroe Islands')
,('2020-04-27 22:29:05.0',NULL,'KP','PRK','North Korea')
,('2020-04-27 22:29:05.0',NULL,'FJ','FJI','Fiji')
,('2020-04-27 22:29:05.0',NULL,'FR','FRA','France')
,('2020-04-27 22:29:05.0',NULL,'GF','GUF','French Guiana')
,('2020-04-27 22:29:05.0',NULL,'PF','PYF','French Polynesia')
,('2020-04-27 22:29:05.0',NULL,'TF','ATF','French Southern Territories')
,('2020-04-27 22:29:05.0',NULL,'GA','GAB','Gabon')
,('2020-04-27 22:29:05.0',NULL,'GM','GMB','Gambia')
;
INSERT INTO country (date_created,date_deleted,iso_2,iso_3,name) VALUES 
('2020-04-27 22:29:05.0',NULL,'GE','GEO','Georgia')
,('2020-04-27 22:29:05.0',NULL,'DE','DEU','Germany')
,('2020-04-27 22:29:05.0',NULL,'GH','GHA','Ghana')
,('2020-04-27 22:29:05.0',NULL,'GI','GIB','Gibraltar')
,('2020-04-27 22:29:05.0',NULL,'GR','GRC','Greece')
,('2020-04-27 22:29:05.0',NULL,'GL','GRL','Greenland')
,('2020-04-27 22:29:05.0',NULL,'GD','GRD','Grenada')
,('2020-04-27 22:29:05.0',NULL,'FI','FIN','Finland')
,('2020-04-27 22:29:05.0',NULL,'AX','ALA','Åland Islands')
,('2020-04-27 22:39:53.0',NULL,'AR','ARG','Argentina')
;

/*INSERT STATE*/

INSERT INTO state (date_created,date_deleted,name,country_id) VALUES 
('2020-10-04 22:54:06.0',NULL,'Buenos Aires',252)
,('2020-10-04 22:54:25.0',NULL,'Buenos Aires F.D.',252)
,('2020-10-04 22:54:25.0',NULL,'Catamarca',252)
,('2020-10-04 22:54:25.0',NULL,'Chaco',252)
,('2020-10-04 22:54:25.0',NULL,'Chubut',252)
,('2020-10-04 22:54:25.0',NULL,'Cordoba',252)
,('2020-10-04 22:54:25.0',NULL,'Corrientes',252)
,('2020-10-04 22:54:25.0',NULL,'Entre Rios',252)
,('2020-10-04 22:54:26.0',NULL,'Formosa',252)
,('2020-10-04 22:54:26.0',NULL,'Jujuy',252)
;
INSERT INTO state (date_created,date_deleted,name,country_id) VALUES 
('2020-10-04 22:54:26.0',NULL,'La Pampa',252)
,('2020-10-04 22:54:26.0',NULL,'La Rioja',252)
,('2020-10-04 22:54:26.0',NULL,'Mendoza',252)
,('2020-10-04 22:54:26.0',NULL,'Misiones',252)
,('2020-10-04 22:54:26.0',NULL,'Neuquen',252)
,('2020-10-04 22:54:26.0',NULL,'Rio Negro',252)
,('2020-10-04 22:54:26.0',NULL,'Salta',252)
,('2020-10-04 22:54:26.0',NULL,'San Juan',252)
,('2020-10-04 22:54:26.0',NULL,'San Luis',252)
,('2020-10-04 22:54:26.0',NULL,'Santa Cruz',252)
;
INSERT INTO state (date_created,date_deleted,name,country_id) VALUES 
('2020-10-04 22:54:27.0',NULL,'Santa Fe',252)
,('2020-10-04 22:54:27.0',NULL,'Santiago del Estero',252)
,('2020-10-04 22:54:27.0',NULL,'Tierra del Fuego',252)
,('2020-10-04 22:54:27.0',NULL,'Tucuman',252)
;

/*INSERT CITY*/

INSERT INTO city (date_created,date_deleted,name,state_id) VALUES 
('2020-10-04 23:06:04.0',NULL,'Adolfo Alsina',16)
,('2020-10-04 23:06:04.0',NULL,'Bariloche',16)
,('2020-10-04 23:06:03.0',NULL,'Biedma',5)
,('2020-10-04 23:06:04.0',NULL,'Chilecito',12)
,('2020-10-04 23:06:03.0',NULL,'Comandante Fernandez',4)
,('2020-10-04 23:06:04.0',NULL,'Confluencia',15)
,('2020-10-04 23:06:03.0',NULL,'Doctor Manuel Belgrano',10)
,('2020-10-04 23:06:03.0',NULL,'Formosa',9)
,('2020-10-04 23:06:03.0',NULL,'Futaleufu',5)
,('2020-10-04 23:06:03.0',NULL,'General San Martin',6)
;
INSERT INTO city (date_created,date_deleted,name,state_id) VALUES 
('2020-10-04 23:06:04.0',NULL,'Guaymallen',13)
,('2020-10-04 23:06:04.0',NULL,'Gueer Aike',20)
,('2020-10-04 23:06:04.0',NULL,'Iguazu',14)
,('2020-10-04 23:06:04.0',NULL,'La Capital',21)
,('2020-10-04 23:06:04.0',NULL,'Malarguee',13)
,('2020-10-04 23:06:03.0',NULL,'Parana',8)
,('2020-10-04 23:06:03.0',NULL,'Rawson',5)
,('2020-10-04 23:06:04.0',NULL,'San Rafael',13)
,('2020-10-04 23:06:03.0',NULL,'Uruguay',8)
,('2020-10-04 23:06:05.0',NULL,'Ushuaia',23)
;
INSERT INTO city (date_created,date_deleted,name,state_id) VALUES 
('2020-10-04 23:06:04.0',NULL,'Juan Martin de Pueyrredon',19)
,('2020-10-04 23:06:01.0',NULL,'Almirante Brown',1)
,('2020-10-04 23:06:01.0',NULL,'Ayacucho',1)
,('2020-10-04 23:06:01.0',NULL,'Bahia Blanca',1)
,('2020-10-04 23:06:01.0',NULL,'Berazategui',1)
,('2020-10-04 23:06:01.0',NULL,'Chascomus',1)
,('2020-10-04 23:06:01.0',NULL,'Ezeiza',1)
,('2020-10-04 23:06:01.0',NULL,'Florencio Varela',1)
,('2020-10-04 23:06:01.0',NULL,'General Pueyrredon',1)
,('2020-10-04 23:06:01.0',NULL,'Junin',1)
;
INSERT INTO city (date_created,date_deleted,name,state_id) VALUES 
('2020-10-04 23:06:01.0',NULL,'La Plata',1)
,('2020-10-04 23:06:02.0',NULL,'Lanus',1)
,('2020-10-04 23:06:02.0',NULL,'Lomas de Zamora',1)
,('2020-10-04 23:06:02.0',NULL,'Lujan',1)
,('2020-10-04 23:06:02.0',NULL,'Moron',1)
,('2020-10-04 23:06:02.0',NULL,'Quilmes',1)
,('2020-10-04 23:06:02.0',NULL,'San Isidro',1)
,('2020-10-04 23:06:02.0',NULL,'Tandil',1)
,('2020-10-04 23:06:02.0',NULL,'Tigre',1)
,('2020-10-04 23:06:03.0',NULL,'Tres de Febrero',1)
;
INSERT INTO city (date_created,date_deleted,name,state_id) VALUES 
('2020-10-04 23:06:03.0',NULL,'Vicente Lopez',1)
,('2020-10-04 23:06:04.0',NULL,'Rosario',21)
,('2020-10-04 23:06:03.0',NULL,'Buenos Aires F.D.',2)
,('2020-10-04 23:06:05.0',NULL,'Capital',3)
,('2020-10-04 23:06:05.0',NULL,'Capital',6)
,('2020-10-04 23:06:05.0',NULL,'Capital',7)
,('2020-10-04 23:06:05.0',NULL,'Capital',11)
,('2020-10-04 23:06:05.0',NULL,'Capital',12)
,('2020-10-04 23:06:05.0',NULL,'Capital',14)
,('2020-10-04 23:06:05.0',NULL,'Capital',17)
;
INSERT INTO city (date_created,date_deleted,name,state_id) VALUES 
('2020-10-04 23:06:05.0',NULL,'Capital',18)
,('2020-10-04 23:06:05.0',NULL,'Capital',22)
,('2020-10-04 23:06:05.0',NULL,'Capital',24)
;

/*INSERT LOCALITY*/

INSERT INTO locality (id,date_created,date_deleted,description,city_id) VALUES 
(1,'2020-10-04 23:07:34.0',NULL,'Adrogué',24)
,(2,'2020-10-04 23:07:34.0',NULL,'Ayacucho',25)
,(3,'2020-10-04 23:07:34.0',NULL,'Bahí­a Blanca',26)
,(4,'2020-10-04 23:07:34.0',NULL,'Berazategui',27)
,(5,'2020-10-04 23:07:34.0',NULL,'Chascomús',28)
,(6,'2020-10-04 23:07:34.0',NULL,'José María Ezeiza',29)
,(7,'2020-10-04 23:07:35.0',NULL,'Florencio Varela',30)
,(8,'2020-10-04 23:07:35.0',NULL,'Mar del Plata',31)
,(9,'2020-10-04 23:07:35.0',NULL,'Junín',32)
,(10,'2020-10-04 23:07:35.0',NULL,'La Plata',33)
;
INSERT INTO locality (id,date_created,date_deleted,description,city_id) VALUES 
(11,'2020-10-04 23:07:35.0',NULL,'Lanús',34)
,(12,'2020-10-04 23:07:35.0',NULL,'Lomas de Zamora',35)
,(13,'2020-10-04 23:07:35.0',NULL,'Luján',36)
,(14,'2020-10-04 23:07:35.0',NULL,'Morón',37)
,(15,'2020-10-04 23:07:35.0',NULL,'Bernal',38)
,(16,'2020-10-04 23:07:35.0',NULL,'San Isidro',39)
,(17,'2020-10-04 23:07:35.0',NULL,'Tandil',40)
,(18,'2020-10-04 23:07:35.0',NULL,'Tigre',41)
,(19,'2020-10-04 23:07:36.0',NULL,'Caseros',42)
,(20,'2020-10-04 23:07:36.0',NULL,'Olivos',43)
;
INSERT INTO locality (id,date_created,date_deleted,description,city_id) VALUES 
(21,'2020-10-04 23:07:36.0',NULL,'Buenos Aires',45)
,(22,'2020-10-04 23:07:36.0',NULL,'San Fernando del Valle de Catamarca',46)
,(23,'2020-10-04 23:07:36.0',NULL,'Presidencia Roque Sáenz Peña',7)
,(24,'2020-10-04 23:07:36.0',NULL,'Puerto Madryn',4)
,(25,'2020-10-04 23:07:36.0',NULL,'Esquel',11)
,(26,'2020-10-04 23:07:36.0',NULL,'Trelew',19)
,(27,'2020-10-04 23:07:36.0',NULL,'Córdoba',47)
,(28,'2020-10-04 23:07:36.0',NULL,'Villa María',12)
,(29,'2020-10-04 23:07:36.0',NULL,'Corrientes',48)
,(30,'2020-10-04 23:07:36.0',NULL,'Paraná',18)
;
INSERT INTO locality (id,date_created,date_deleted,description,city_id) VALUES 
(31,'2020-10-04 23:07:37.0',NULL,'Concepción del Uruguay',21)
,(32,'2020-10-04 23:07:37.0',NULL,'Formosa',10)
,(33,'2020-10-04 23:07:37.0',NULL,'San Salvador de Jujuy',9)
,(34,'2020-10-04 23:07:37.0',NULL,'Santa Rosa',49)
,(35,'2020-10-04 23:07:37.0',NULL,'La Rioja',50)
,(36,'2020-10-04 23:07:37.0',NULL,'Chilecito',6)
,(37,'2020-10-04 23:07:37.0',NULL,'Mendoza',13)
,(38,'2020-10-04 23:07:37.0',NULL,'Malargue',17)
,(39,'2020-10-04 23:07:37.0',NULL,'San Rafael',20)
,(40,'2020-10-04 23:07:37.0',NULL,'Posadas',51)
;
INSERT INTO locality (id,date_created,date_deleted,description,city_id) VALUES 
(41,'2020-10-04 23:07:37.0',NULL,'Puerto Iguazú',15)
,(42,'2020-10-04 23:07:37.0',NULL,'Neuquén',8)
,(43,'2020-10-04 23:07:38.0',NULL,'Viedma',2)
,(44,'2020-10-04 23:07:38.0',NULL,'Bariloche',3)
,(45,'2020-10-04 23:07:38.0',NULL,'Salta',52)
,(46,'2020-10-04 23:07:38.0',NULL,'San Juan',53)
,(47,'2020-10-04 23:07:38.0',NULL,'San Luis',23)
,(48,'2020-10-04 23:07:38.0',NULL,'Río Gallegos',14)
,(49,'2020-10-04 23:07:38.0',NULL,'Santa Fe',16)
,(50,'2020-10-04 23:07:38.0',NULL,'Rosario',44)
;
INSERT INTO locality (id,date_created,date_deleted,description,city_id) VALUES 
(51,'2020-10-04 23:07:38.0',NULL,'Santiago del Estero',54)
,(52,'2020-10-04 23:07:38.0',NULL,'Ushuaia',22)
,(53,'2020-10-04 23:07:38.0',NULL,'San Miguel de Tucumán',55)
;