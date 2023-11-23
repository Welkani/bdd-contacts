drop database if exists exo_contacts;
create database exo_contacts;

use exo_contacts;

create table pays(
    iso_3 char(3) primary key,
    nom varchar(70),
    iso_2 varchar(3),
    nationalite varchar(50)
);

create table contacts(
    id int primary key auto_increment,
    nom varchar(70),
    pays varchar(70),
    date_de_naissance DATE,
    sexe varchar(10),
    adresse text,
    cp varchar(10),
    ville varchar(70),
    pays_iso_3 char(3),
    foreign key (pays_iso_3) references pays(iso_3)
);



insert into pays(iso_2, iso_3, nom, nationalite) values
('AF', 'AFG', 'Afghanistan', 'Afghane'),
('AL', 'ALB', 'Albanie', 'Albanaise'),
('DZ', 'DZA', 'Algerie', 'Algérienne'),
('AD', 'AND', 'Andorre', 'Andorrane'),
('AO', 'AGO', 'Angola', 'Angolaise'),
('AG', 'ATG', 'Antigua-et-Barbuda', 'Antiguaise'),
('AR', 'ARG', 'Argentine', 'Argentine'),
('AM', 'ARM', 'Armenie', 'Arménienne'),
('AU', 'AUS', 'Australie', 'Australienne'),
('AT', 'AUT', 'Autriche', 'Autrichienne'),
('AZ', 'AZE', 'Azerbaïdjan', 'Azerbaïdjanaise'),
('BS', 'BHS', 'Bahamas', 'Bahaméenne'),
('BH', 'BHR', 'Bahreïn', 'Bahreïnienne'),
('BD', 'BGD', 'Bangladesh', 'Bangladaise'),
('BB', 'BRB', 'Barbade', 'Barbadienne'),
('BY', 'BLR', 'Biélorussie', 'Biélorusse'),
('BE', 'BEL', 'Belgique', 'Belge'),
('BZ', 'BLZ', 'Belize', 'Bélizienne'),
('BJ', 'BEN', 'Benin', 'Béninoise'),
('BT', 'BTN', 'Bhoutan', 'Bhoutanaise'),
('BO', 'BOL', 'Bolivie', 'Bolivienne'),
('BA', 'BIH', 'Bosnie-Herzegovine', 'Bosnienne'),
('BR', 'BRA', 'Bresil', 'Brésilienne'),
('BN', 'BRN', 'Brunei Darussalam', 'Brunéienne'),
('BG', 'BGR', 'Bulgarie', 'Bulgare'),
('BF', 'BFA', 'Burkina Faso', 'Burkinabée'),
('BI', 'BDI', 'Burundi', 'Burundaise'),
('CV', 'CPV', 'Cap-Vert', 'Cap-verdienne'),
('KH', 'KHM', 'Cambodge', 'Cambodgienne'),
('CM', 'CMR', 'Cameroun', 'Camerounaise'),
('CA', 'CAN', 'Canada', 'Canadienne'),
('CF', 'CAF', 'République centrafricaine', 'Centrafricaine'),
('TD', 'TCD', 'Tchad', 'Tchadienne'),
('CL', 'CHL', 'Chili', 'Chilienne'),
('CN', 'CHN', 'Chine', 'Chinoise'),
('CO', 'COL', 'Colombie', 'Colombienne'),
('KM', 'COM', 'Comores', 'Comorienne'),
('CG', 'COG', 'Congo', 'Congolaise'),
('CR', 'CRI', 'Costa Rica', 'Costaricaine'),
('HR', 'HRV', 'Croatie', 'Croate'),
('CU', 'CUB', 'Cuba', 'Cubaine'),
('CY', 'CYP', 'Chypre', 'Chypriote'),
('CZ', 'CZE', 'Republique tchèque', 'Tchèque'),
('DK', 'DNK', 'Danemark', 'Danoise'),
('DJ', 'DJI', 'Djibouti', 'Djiboutienne'),
('DM', 'DMA', 'Dominique', 'Dominiquaise'),
('DO', 'DOM', 'Republique dominicaine', 'Dominicaine'),
('EC', 'ECU', 'Equateur', 'Équatorienne'),
('EG', 'EGY', 'Egypte', 'Égyptienne'),
('SV', 'SLV', 'El Salvador', 'Salvadorienne'),
('GQ', 'GNQ', 'Guinee equatoriale', 'Équato-guinéenne'),
('ER', 'ERI', 'Erythree', 'Érythréenne'),
('EE', 'EST', 'Estonie', 'Estonienne'),
('SZ', 'SWZ', 'Eswatini', 'Eswatinienne'),
('ET', 'ETH', 'Éthiopie', 'Éthiopienne'),
('FJ', 'FJI', 'Fidji', 'Fidjienne'),
('FI', 'FIN', 'Finlande', 'Finlandaise'),
('FR', 'FRA', 'France', 'Française'),
('GA', 'GAB', 'Gabon', 'Gabonaise'),
('GM', 'GMB', 'Gambie', 'Gambienne'),
('GE', 'GEO', 'Georgie', 'Géorgienne'),
('DE', 'DEU', 'Allemagne', 'Allemande'),
('GH', 'GHA', 'Ghana', 'Ghanéenne'),
('GR', 'GRC', 'Grèce', 'Grecque'),
('GD', 'GRD', 'Grenade', 'Grenadienne'),
('GT', 'GTM', 'Guatemala', 'Guatémaltèque'),
('GN', 'GIN', 'Guinee', 'Guinéenne'),
('GW', 'GNB', 'Guinee-Bissau', 'Bissau-Guinéenne'),
('GY', 'GUY', 'Guyana', 'Guyanaise'),
('HT', 'HTI', 'Haiti', 'Haïtienne'),
('HN', 'HND', 'Honduras', 'Hondurienne'),
('HU', 'HUN', 'Hongrie', 'Hongroise'),
('IS', 'ISL', 'Islande', 'Islandaise'),
('IN', 'IND', 'Inde', 'Indienne'),
('ID', 'IDN', 'Indonesie', 'Indonésienne'),
('IR', 'IRN', 'Iran', 'Iranienne'),
('IQ', 'IRQ', 'Irak', 'Irakienne'),
('IE', 'IRL', 'Irlande', 'Irlandaise'),
('IL', 'ISR', 'Israel', 'Israélienne'),
('IT', 'ITA', 'Italie', 'Italienne'),
('JM', 'JAM', 'Jamaique', 'Jamaïcaine'),
('JP', 'JPN', 'Japon', 'Japonaise'),
('JO', 'JOR', 'Jordanie', 'Jordanienne'),
('KZ', 'KAZ', 'Kazakhstan', 'Kazakhe'),
('KE', 'KEN', 'Kenya', 'Kényane'),
('KI', 'KIR', 'Kiribati', 'Kiribatienne'),
('KP', 'PRK', 'Coree du Nord', 'Nord-coréenne'),
('KR', 'KOR', 'Coree du Sud', 'Sud-coréenne'),
('KW', 'KWT', 'Koweit', 'Koweïtienne'),
('KG', 'KGZ', 'Kirghizistan', 'Kirghize'),
('LA', 'LAO', 'Laos', 'Laotienne'),
('LV', 'LVA', 'Lettonie', 'Lettone'),
('LB', 'LBN', 'Liban', 'Libanaise'),
('LS', 'LSO', 'Lesotho', 'Lésothienne'),
('LR', 'LBR', 'Liberia', 'Libérienne'),
('LY', 'LBY', 'Libye', 'Libyenne'),
('LI', 'LIE', 'Liechtenstein', 'Liechtensteinoise'),
('LT', 'LTU', 'Lituanie', 'Lituanienne'),
('LU', 'LUX', 'Luxembourg', 'Luxembourgeoise'),
('MK', 'MKD', 'Macedoine du Nord', 'Macédonienne'),
('MG', 'MDG', 'Madagascar', 'Malgache'),
('MW', 'MWI', 'Malawi', 'Malawite'),
('MY', 'MYS', 'Malaisie', 'Malaisienne'),
('MV', 'MDV', 'Maldives', 'Maldivienne'),
('ML', 'MLI', 'Mali', 'Malienne'),
('MT', 'MLT', 'Malte', 'Maltaise'),
('MH', 'MHL', 'Iles Marshall', 'Marshallaise'),
('MR', 'MRT', 'Mauritanie', 'Mauritanienne'),
('MU', 'MUS', 'Maurice', 'Mauricienne'),
('MX', 'MEX', 'Mexique', 'Mexicaine'),
('FM', 'FSM', 'Micronesie', 'Micronésienne'),
('MD', 'MDA', 'Moldavie', 'Moldave'),
('MC', 'MCO', 'Monaco', 'Monégasque'),
('MN', 'MNG', 'Mongolie', 'Mongole'),
('ME', 'MNE', 'Montenegro', 'Monténégrine'),
('MA', 'MAR', 'Maroc', 'Marocaine'),
('MZ', 'MOZ', 'Mozambique', 'Mozambicaine'),
('MM', 'MMR', 'Myanmar', 'Myanmaraise'),
('NA', 'NAM', 'Namibie', 'Namibienne'),
('NR', 'NRU', 'Nauru', 'Nauruane'),
('NP', 'NPL', 'Nepal', 'Népalaise'),
('NL', 'NLD', 'Pays-Bas', 'Néerlandaise'),
('NZ', 'NZL', 'Nouvelle-Zelande', 'Néo-Zélandaise'),
('NI', 'NIC', 'Nicaragua', 'Nicaraguayenne'),
('NE', 'NER', 'Niger', 'Nigérienne'),
('NG', 'NGA', 'Nigeria', 'Nigériane'),
('NO', 'NOR', 'Norvège', 'Norvégienne'),
('OM', 'OMN', 'Oman', 'Omanaise'),
('PK', 'PAK', 'Pakistan', 'Pakistanaise'),
('PW', 'PLW', 'Palaos', 'Palaosienne'),
('PA', 'PAN', 'Panama', 'Panaméenne'),
('PG', 'PNG', 'Papouasie-Nouvelle-Guinee', 'Papouasienne'),
('PY', 'PRY', 'Paraguay', 'Paraguayenne'),
('PE', 'PER', 'Perou', 'Péruvienne'),
('PH', 'PHL', 'Philippines', 'Philippine'),
('PL', 'POL', 'Pologne', 'Polonaise'),
('PT', 'PRT', 'Portugal', 'Portugaise'),
('QA', 'QAT', 'Qatar', 'Qatarienne'),
('RO', 'ROU', 'Roumanie', 'Roumaine'),
('RU', 'RUS', 'Russie', 'Russe'),
('RW', 'RWA', 'Rwanda', 'Rwandaise'),
('KN', 'KNA', 'Saint-Christophe-et-Nieves', 'Saint-Kittsienne-et-Névicienne'),
('LC', 'LCA', 'Sainte-Lucie', 'Saint-Lucienne'),
('VC', 'VCT', 'Saint-Vincent-et-les-Grenadines', 'Saint-Vincentaise-et-Grenadine'),
('WS', 'WSM', 'Samoa', 'Samoane'),
('SM', 'SMR', 'Saint-Marin', 'Saint-Marinaise'),
('ST', 'STP', 'Sao Tome-et-Principe', 'Santoméenne-et-Princienne'),
('SA', 'SAU', 'Arabie saoudite', 'Saoudienne'),
('SN', 'SEN', 'Senegal', 'Sénégalaise'),
('RS', 'SRB', 'Serbie', 'Serbe'),
('SC', 'SYC', 'Seychelles', 'Seychelloise'),
('SL', 'SLE', 'Sierra Leone', 'Sierra-Léonaise'),
('SG', 'SGP', 'Singapour', 'Singapourienne'),
('SK', 'SVK', 'Slovaquie', 'Slovaque'),
('SI', 'SVN', 'Slovénie', 'Slovène'),
('SB', 'SLB', 'Iles Salomon', 'Salomonaise'),
('SO', 'SOM', 'Somalie', 'Somalienne'),
('ZA', 'ZAF', 'Afrique du Sud', 'Sud-Africaine'),
('SS', 'SSD', 'Soudan du Sud', 'Soudanaise du Sud'),
('ES', 'ESP', 'Espagne', 'Espagnole'),
('LK', 'LKA', 'Sri Lanka', 'Sri-Lankaise'),
('SD', 'SDN', 'Soudan', 'Soudanaise'),
('SR', 'SUR', 'Suriname', 'Surinamaise'),
('SE', 'SWE', 'Suede', 'Suédoise'),
('CH', 'CHE', 'Suisse', 'Suisse'),
('SY', 'SYR', 'Syrie', 'Syrienne'),
('TJ', 'TJK', 'Tadjikistan', 'Tadjike'),
('TZ', 'TZA', 'Tanzanie', 'Tanzanienne'),
('TH', 'THA', 'Thailande','Thailandaise'),
('TL', 'TLS', 'Timor oriental', 'Est-timoraise'),
('TG', 'TGO', 'Togo', 'Togolaise'),
('TO', 'TON', 'Tonga', 'Tongienne'),
('TT', 'TTO', 'Trinite-et-Tobago', 'Trinidadienne-et-Tobagonienne'),
('TN', 'TUN', 'Tunisie', 'Tunisienne'),
('TR', 'TUR', 'Turquie', 'Turque'),
('TM', 'TKM', 'Turkmenistan', 'Turkmène'),
('TV', 'TUV', 'Tuvalu', 'Tuvaluane'),
('UG', 'UGA', 'Ouganda', 'Ougandaise'),
('UA', 'UKR', 'Ukraine', 'Ukrainienne'),
('AE', 'ARE', 'Emirats arabes unis', 'Émirienne'),
('GB', 'GBR', 'Royaume-Uni', 'Britannique'),
('US', 'USA', 'États-Unis', 'Américaine'),
('UY', 'URY', 'Uruguay', 'Uruguayenne'),
('UZ', 'UZB', 'Ouzbekistan', 'Ouzbèke'),
('VU', 'VUT', 'Vanuatu', 'Vanuatuane'),
('VA', 'VAT', 'Vatican', 'Vaticane'),
('VE', 'VEN', 'Venezuela', 'Vénézuélienne'),
('VN', 'VNM', 'Vietnam', 'Vietnamienne'),
('YE', 'YEM', 'Yemen', 'Yéménite'),
('ZM', 'ZMB', 'Zambie', 'Zambienne'),
('ZW', 'ZWE', 'Zimbabwe', 'Zimbabwéenne');


create table telephone(

    id int primary key auto_increment,
    id_contact INT(250),
    numero VARCHAR(50),
    type ENUM('perso', 'pro'),
    foreign key (id_contact) references contacts(id)

);


