-- Inserare in tabela MENIURI
INSERT INTO Meniuri(nume_meniu) VALUES('Meniu preparate');
INSERT INTO Meniuri(nume_meniu) VALUES('Meniu bauturi');
INSERT INTO Meniuri(nume_meniu) VALUES('Meniu desert');

-- Inserare in tabela CATEGORII
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Salate', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu preparate'));
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Pizza', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu preparate'));
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Paste', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu preparate'));
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Supe si ciorbe', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu preparate'));
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Preparate din carne', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu preparate'));
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Preparate din peste', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu preparate'));

INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Bauturi alcoolice', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu bauturi'));
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Bauturi non-alcoolice', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu bauturi'));

INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Torturi si prajituri', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu desert'));
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Prajituri de post', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu desert'));


-- Inserare in tabela TIPURI_ALIMENT
INSERT INTO tipuri_aliment(nume_tip) VALUES('post');
INSERT INTO tipuri_aliment(nume_tip) VALUES('carne');
INSERT INTO tipuri_aliment(nume_tip) VALUES('peste');
INSERT INTO tipuri_aliment(nume_tip) VALUES('lactat');
INSERT INTO tipuri_aliment(nume_tip) VALUES('salata');
INSERT INTO tipuri_aliment(nume_tip) VALUES('paste');
INSERT INTO tipuri_aliment(nume_tip) VALUES('lichid');
INSERT INTO tipuri_aliment(nume_tip) VALUES('supa');
INSERT INTO tipuri_aliment(nume_tip) VALUES('ciorba');
INSERT INTO tipuri_aliment(nume_tip) VALUES('fructe');
INSERT INTO tipuri_aliment(nume_tip) VALUES('legume');
INSERT INTO tipuri_aliment(nume_tip) VALUES('dulce');
INSERT INTO tipuri_aliment(nume_tip) VALUES('cereale');
INSERT INTO tipuri_aliment(nume_tip) VALUES('alcoolic');
INSERT INTO tipuri_aliment(nume_tip) VALUES('non-alcoolic');
INSERT INTO tipuri_aliment(nume_tip) VALUES('pizza');
INSERT INTO tipuri_aliment(nume_tip) VALUES('condimente');
INSERT INTO tipuri_aliment(nume_tip) VALUES('altele');


-- Inserare in tabela PRODUSE
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Supa cu legume', 'preparat', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'supa'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Supa cu taitei', 'preparat', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'supa'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Ciorba de vita cu legume', 'preparat', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'ciorba'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Ciorba de burta', 'preparat', 18, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'ciorba'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Ciorba de perisoare', 'preparat', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'ciorba'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Paste carbonara', 'preparat', 35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Paste tagliatelle cu ciuperci', 'preparat', 34, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Paste bolognese', 'preparat', 35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pizza cu piept de pui', 'preparat', 18, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pizza de post', 'preparat', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pizza Carbonara', 'preparat', 32, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pizza Cinque Formaggi', 'preparat', 35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Hot Cheese Pizza', 'preparat', 34, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pizza Quattro Stagioni', 'preparat', 34, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pizza Diavola', 'preparat', 33, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pizza Capriciosa', 'preparat', 34, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Cotlet de porc la gratar', 'preparat', 22, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Friptura de vita cu legume', 'preparat', 22, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Piept de pui la gratar cu cartofi', 'preparat', 18, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Ceafa de porc la gratar', 'preparat', 12, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Cotlet de porc la gratar', 'preparat', 22, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Mititei', 'preparat', 4, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pulpe de pui dezosate la gratar', 'preparat', 12, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Carnaciori afumati la gratar', 'preparat', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Carnati proaspeti la gratar', 'preparat', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pastrav la gratar cu legume', 'preparat', 35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Somon afumat', 'preparat', 23, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Macrou la gratar cu mamaliguta si usturoi', 'preparat', 16, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('File de pastrav la gratar cu lamaie', 'preparat', 18, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata de rosii si castraveti', 'preparat', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata de spanac cu pui', 'preparat', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata de vara', 'preparat', 8, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata casei', 'preparat', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata Bulgareasca', 'preparat', 7, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata asortata', 'preparat', 8, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata castraveti murati', 'preparat', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata verde', 'preparat', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Gogosari la otet', 'preparat', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata de sfecla si hrean', 'preparat', 7, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Timisoreana 330 ml', 'bautura', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'alcoolic'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Ursus 330 ml', 'bautura', 6, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'alcoolic'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Apa plata 0.5 l', 'bautura', 4, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'non-alcoolic'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Suc portocale 330 ml', 'bautura', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'non-alcoolic'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Limonada 330 ml', 'bautura', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'non-alcoolic'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Fanta 330 ml', 'bautura', 4, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'non-alcoolic'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pepsi 330 ml', 'bautura', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'non-alcoolic'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Tort profiterol', 'preparat', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Tort diplomat', 'preparat', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Amandina', 'preparat', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Prajitura Alba ca Zapada', 'preparat', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Clatite cu ciocolata', 'preparat', 8, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Clatite cu dulceata', 'preparat', 8, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Clatite cu inghetata', 'preparat', 12, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Papanasi cu branza', 'preparat', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Inghetata', 'preparat', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Prajitura cu morcov si mere', 'preparat', 18, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'post'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Negresa de post', 'preparat', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'post'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Tarta cu mere', 'preparat', 17, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'post'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Sorin', 'preparat', 17, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));

-- Inserare in tabela CATEGORII_PRODUSE
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Supe si ciorbe' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Supa cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Supe si ciorbe' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Supa cu taitei'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Supe si ciorbe' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Supe si ciorbe' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de burta'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Supe si ciorbe' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de perisoare'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Sorin'));


commit;
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Paste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Paste carbonara'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Paste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Paste bolognese'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Paste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Paste tagliatelle cu ciuperci'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza de post'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Carbonara'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Cinque Formaggi'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Hot Cheese Pizza'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Quattro Stagioni'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Diavola'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Capriciosa'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Cotlet de porc la gratar'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Ceafa de porc la gratar'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Mititei'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pulpe de pui dezosate la gratar'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Carnaciori afumati la gratar'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Carnati proaspeti la gratar'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din peste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din peste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Somon afumat'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din peste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Macrou la gratar cu mamaliguta si usturoi'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din peste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'File de pastrav la gratar cu lamaie'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de spanac cu pui'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de vara'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata Bulgareasca'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata asortata'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata castraveti murati'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata verde'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Gogosari la otet'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de sfecla si hrean'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Apa plata 0.5 l'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Suc portocale 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Limonada 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Fanta 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pepsi 330 ml'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Timisoreana 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Ursus 330 ml'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Tort profiterol'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Tort diplomat'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Amandina'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Prajitura Alba ca Zapada'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu ciocolata'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu dulceata'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu inghetata'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Papanasi cu branza'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Inghetata'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Prajituri de post' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Prajitura cu morcov si mere'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Prajituri de post' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Negresa de post'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Prajituri de post' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Tarta cu mere'));


-- Inserare in tabela INGREDIENTE
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('somn', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('pastrav', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('macrou', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('somon', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('cotlet de porc', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('bucati carne de vita', 60, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('piept de pui', 35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('salam de porc', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('salam de vita', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('bacon', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ceafa de porc', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('salam crud uscat', 40, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('sunca de praga', 40, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('burta vita', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('salam picant', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('prosciutto', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('carnaciori afumati', 40, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('carnati proaspeti', 40, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('bucati carne de vita', 40, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('carne tocata de vita si porc', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('amestec de carne', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('pulpe de pui', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('muschi file', 45, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));


INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('cascaval', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('branza de vaca', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('smantana', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ou', 150, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('mozzarella', 70, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('cascaval vegetal', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('emmentaler', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('gorgonzola', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('parmigiano', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('pecorino', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('cedar', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('telemea', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('parmezan', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('smantana pentru gatit', 26, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('rucola', 11, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('lapte', 60, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('frisca', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));


INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('rosii', 70, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('castraveti', 120, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('amestec de legume', 75, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('cartofi', 120, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ardei', 60, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ceapa', 100, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('morcov', 90, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('patrunjel', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('pastarnac', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('sfecla', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('hrean', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ciuperci', 100, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ardei iute', 60, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('anghinare', 8, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('spanac', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('salata verde', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('usturoi', 40, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));


INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('spaghetti', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('penne', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('tagliatelle', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('pachet taitei', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('fusilli', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ravioli', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('tortellini', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('capricci', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('lamaie', 40, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'fructe'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('portocala', 55, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'fructe'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('amestec de fructe', 55, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'fructe'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('fructe de padure', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'fructe'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('capsuni', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'fructe'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('mere', 70, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'fructe'));


INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('amandina', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('tort de ciocolata', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('frisca', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ciocolata', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('sare', 55, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'condiment'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('piper', 55, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'condiment'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('boia dulce', 55, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'condiment'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('boia iute', 55, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'condiment'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('rozmarin', 55, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'condiment'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('oregano', 45, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'condiment'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('busuioc', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'condiment'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('bicarbonat', 3, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'condiment'));


INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('bors', 10, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('sos bolognez', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('sos ', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('aluat ', 40, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('masline kalamata', 80 , (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('sos rosii ', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('malai', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ulei de masline', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('castraveti murati',28, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('gogosari la otet', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('blat insiropat cu ciocolata', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('ganache de ciocolata', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('dulceata', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('inghetata', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'altele'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('crap', 0.25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('porumb', 0.35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));

-- Inserare in tabela RETETE
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Sorin'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'crap'), 0.15);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Sorin'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'porumb'), 0.15);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Sorin'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'masline kalamata'), 8);


INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Supa cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume'), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Supa cu taitei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'pachet taitei' ), 0.5);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bucati carne de vita' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' ), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de burta'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'burta vita'), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de burta'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume'), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de burta'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ou'), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de burta'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'smantana'), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de perisoare'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'carne tocata de vita si porc'), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de perisoare'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume'), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de perisoare'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bors'), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de perisoare'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'patrunjel'), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'penne' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bacon'),4);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'smantana' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ou' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'parmezan' ), 0.3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste tagliatelle cu ciuperci'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ciuperci' ), 6);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste tagliatelle cu ciuperci'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'tagliatelle' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste tagliatelle cu ciuperci'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ceapa' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste tagliatelle cu ciuperci'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'usturoi' ), 3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste bolognese'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'spaghetti' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste bolognese'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'sos bolognez' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Paste bolognese'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'parmezan' ), 0.3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piept de pui' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'mozzarella' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'sos' ), 0.2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'masline kalamata' ), 8);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza de post'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza de post'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'cascaval vegetal' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza de post'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'sos' ), 0.2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza de post'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza de post'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'masline kalamata' ), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'smanatana pentru gatit' ), 0.2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'mozzarella' ), 0.15);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bacon' ), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Carbonara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' ), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Cinque Formaggi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'mozzarella' ), 0.3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Cinque Formaggi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Cinque Formaggi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'emmentaler' ), 0.3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Cinque Formaggi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'gorgonzola' ), 0.3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Cinque Formaggi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'parmigiano' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Cinque Formaggi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'pecorino' ), 2);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Hot Cheese Pizza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'cedar' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Hot Cheese Pizza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'telemea' ), 0.2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Hot Cheese Pizza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'rosii' ), 4);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Hot Cheese Pizza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ardei iute' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Hot Cheese Pizza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'oregano' ), 4);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Quattro Stagioni'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Quattro Stagioni'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'sos rosii' ), 0.2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Quattro Stagioni'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'mozzarella' ), 0.3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Quattro Stagioni'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'salam crud uscat' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Quattro Stagioni'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'sunca de praga' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Quattro Stagioni'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ciuperci' ), 4);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Diavola'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Diavola'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'salam picant' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Diavola'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'sos de rosii' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Diavola'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ciuperci' ), 4);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Diavola'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ardei iute' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Diavola'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'mozzarella' ), 0.4);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Diavola'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'masline' ), 4);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Capriciosa'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Capriciosa'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'sos' ), 0.3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Capriciosa'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'mozzarella' ), 0.3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Capriciosa'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'anghinare' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Capriciosa'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ciuperci' ), 4);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Capriciosa'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'prosciutto' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza Capriciosa'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'busuioc' ), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Cotlet de porc la gratar'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'cotlet de porc' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Cotlet de porc la gratar'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piper' ), 2);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bucati carne de vita' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' ), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piept de pui' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'cartofi' ), 4);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ceafa de porc la gratar'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ceafa de porc' ), 2);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Mititei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de carne' ), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pulpe de pui dezosate la gratar'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'pulpe de pui' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Carnaciori afumati la gratar'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'carnaciori afumati' ), 4);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Carnati proaspeti la gratar'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'carnati proaspeti' ), 2);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume'), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'pastrav'), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Somon afumat'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'somon' ), 2);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Macrou la gratar cu mamaliguta si usturoi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'macrou' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Macrou la gratar cu mamaliguta si usturoi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'malai' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Macrou la gratar cu mamaliguta si usturoi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'usturoi' ), 3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'File de pastrav la gratar cu lamaie'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'pastrav' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'File de pastrav la gratar cu lamaie'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lamaie' ), 2);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'rosii' ), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'castraveti' ), 3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de spanac cu pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piept de pui' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de spanac cu pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'spanac' ), 1);


INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de vara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'rosii' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de vara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'rucola' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de vara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'mozzarella' ), 0.2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de vara'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lamaie' ), 0.3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'rosii' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'salata verde' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'muschi file' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'telemea' ), 0.3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'masline' ), 5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'castraveti' ), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ardei' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ulei de masline' ), 0.1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lamaie' ), 0.3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata Bulgareasca'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'rosii' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata Bulgareasca'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'telemea' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata Bulgareasca'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ceapa' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata Bulgareasca'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'masline' ), 5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata Bulgareasca'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ulei de masline' ), 0.1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata asortata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'rosii' ), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata asortata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'castraveti' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata asortata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ceapa' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata asortata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ardei' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata asortata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ulei de masline' ), 0.1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata castraveti murati'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'castraveti murati' ), 4);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata verde'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'salata verde ' ), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Gogosari la otet'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'gogosari la otet' ), 3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de sfecla si hrean'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'sfecla' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de sfecla si hrean'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'hrean' ), 0.5);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Suc portocale 330 ml'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'portocala' ), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Limonada 330 ml'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lamaie' ), 2);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tort profiterol'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lapte' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tort profiterol'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'blat' ), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tort profiterol'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'oua' ), 5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tort profiterol'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ciocolata' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tort profiterol'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'frisca' ), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tort diplomat'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'frisca' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tort diplomat'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de fructe' ), 5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tort diplomat'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'blat' ), 3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Amandina'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'blat insiropat cu ciocolata' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Amandina'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ganache de ciocolata' ), 1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu ciocolata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ou' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu ciocolata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'faina' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu ciocolata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lapte' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu ciocolata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ciocolata' ), 0.3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu dulceata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ou' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu dulceata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'faina' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu dulceata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lapte' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu dulceata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'dulceata' ), 0.3);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu inghetata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ou' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu inghetata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'faina' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu inghetata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lapte' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Clatite cu inghetata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'inghetata' ), 0.5);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Papanasi cu branza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ou' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Papanasi cu branza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'faina' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Papanasi cu branza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'branza de vaci' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Papanasi cu branza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'dulceata' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Papanasi cu branza'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bicarbonat' ), 0.1);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Inghetata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ciocolata' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Inghetata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'vanilie' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Inghetata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'fructe de padure' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Inghetata'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'capsuni' ), 0.5);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tarta cu mere'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'mere' ), 7);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Tarta cu mere'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 2);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Negresa de post'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Negresa de post'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'dulceata' ), 2);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Prajitura cu morcov si mere'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'mere' ), 8);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Prajitura cu morcov si mere'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'morcov' ), 5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Prajitura cu morcov si mere'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 5);

INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Prajitura Alba ca Zapada'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'aluat' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Prajitura Alba ca Zapada'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'ou' ), 6);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Prajitura Alba ca Zapada'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'frisca' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Prajitura Alba ca Zapada'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lapte' ), 0.5);



commit;

-----Inserare in tabela STOCURI---------

INSERT INTO stocuri_produs(stoc_produs, Produse_id_produs) VALUES(30, (SELECT id_produs FROM Produse WHERE nume_produs = 'Timisoreana 330 ml'));
INSERT INTO stocuri_produs(stoc_produs, Produse_id_produs) VALUES(25, (SELECT id_produs FROM Produse WHERE nume_produs = 'Ursus 330 ml'));
INSERT INTO stocuri_produs(stoc_produs, Produse_id_produs) VALUES(50, (SELECT id_produs FROM Produse WHERE nume_produs = 'Apa plata 0.5 l'));
INSERT INTO stocuri_produs(stoc_produs, Produse_id_produs) VALUES(25, (SELECT id_produs FROM Produse WHERE nume_produs = 'Fanta 330 ml'));
INSERT INTO stocuri_produs(stoc_produs, Produse_id_produs) VALUES(20, (SELECT id_produs FROM Produse WHERE nume_produs = 'Pepsi 330 ml'));


update ingrediente 
    set stoc_ingredient = 20 where nume_ingredient = 'cascaval vegetal';
    
update ingrediente 
    set stoc_ingredient = 10 where nume_ingredient = 'bacon';

update ingrediente 
    set stoc_ingredient = 8 where nume_ingredient = 'masline kalamata';
 
update ingrediente 
    set stoc_ingredient = 0.35 where nume_ingredient = 'crap';

update ingrediente 
    set stoc_ingredient = 0.35 where nume_ingredient = 'porumb';

update produse
    set stare = 'ACTIV' where nume_produs='Sorin';
commit;