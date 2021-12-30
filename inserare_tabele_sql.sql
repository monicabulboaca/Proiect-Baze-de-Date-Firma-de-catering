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

INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Torturi', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu desert'));
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Prajituri cu caramel', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu desert'));
INSERT INTO Categorii(nume_categorie, meniuri_nr_meniu) VALUES('Prajituri cu ciocolata', (SELECT id_meniu FROM meniuri where nume_meniu = 'Meniu desert'));
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


-- Inserare in tabela PRODUSE
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Supa cu legume', 'preparat', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'supa'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Supa cu taitei', 'preparat', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'supa'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Ciorba de vita cu legume', 'preparat', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'ciorba'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Paste carbonara', 'preparat', 35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Paste tagliatelle cu ciuperci', 'preparat', 34, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Paste bolognese', 'preparat', 35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pizza cu piept de pui', 'preparat', 18, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pizza de post', 'preparat', 15, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'pizza'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Cotlet de porc la gratar', 'preparat', 22, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Friptura de vita cu legume', 'preparat', 22, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Piept de pui la gratar cu cartofi', 'preparat', 18, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Pastrav la gratar cu legume', 'preparat', 35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Somon afumat', 'preparat', 23, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata de rosii si castraveti', 'preparat', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_id_tip) VALUES('Salata de spanac cu pui', 'preparat', 25, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'salata'));

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

-- Inserare in tabela CATEGORII_PRODUSE
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Supe si ciorbe' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Supa cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Supe si ciorbe' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Supa cu taitei'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Supe si ciorbe' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Paste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Paste carbonara'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Paste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Paste bolognese'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Paste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Paste tagliatelle cu ciuperci'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza de post'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Cotlet de porc la gratar'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din peste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Preparate din peste' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Somon afumat'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu preparate')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de spanac cu pui'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Apa plata 0.5 l'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Suc portocale 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Limonada 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Fanta 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Pepsi 330 ml'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Timisoreana 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Bauturi alcoolice' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu bauturi')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Ursus 330 ml'));

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Tort profiterol'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT id_categorie FROM Categorii WHERE nume_categorie = 'Torturi' and meniuri_nr_meniu = (SELECT id_meniu FROM Meniuri WHERE nume_meniu = 'Meniu desert')), (SELECT id_produs FROM Produse WHERE nume_produs = 'Tort diplomat'));

-- Inserare in tabela INGREDIENTE
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('somn', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('pastrav', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'peste'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('cotlet de porc', 50, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('bucati carne de vita', 60, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('piept de pui', 35, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('salam de porc', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('salam de vita', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('bacon', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'carne'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('cascaval', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('branza de vaca', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('smantana', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'lactat'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('rosii', 70, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('castraveti', 120, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('amestec de legume', 75, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('cartofi', 120, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'legume'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('spaghetti', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('penne', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('tagliatelle', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('pachet taitei', 30, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'paste'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('lamaie', 40, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'fructe'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('portocala', 55, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'fructe'));

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('amandina', 20, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, tipuri_aliment_id_tip) VALUES('tort de ciocolata', 5, (SELECT id_tip FROM tipuri_aliment WHERE nume_tip = 'dulce'));


-- Inserare in tabela RETETE
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Supa cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume'), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Supa cu taitei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'pachet taitei' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bucati carne de vita' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'pastrav' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lamaie'), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Somon afumat'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'file de somon' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Cotlet de porc la gratar'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'cotlet de porc' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bucati carne de vita' ), 2);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piept de pui' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'cartofi' ), 4);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piept de pui' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'rosii' ), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'castraveti' ), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Pizza de post'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' ), 1);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Salata de spanac cu pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piept de pui' ), 0.5);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Suc portocale 330 ml'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'portocala' ), 3);
INSERT INTO Retete (Produse_id_produs, Ingrediente_id_ingr, cantitate_ingr) VALUES((SELECT id_produs FROM Produse WHERE nume_produs = 'Limonada 330 ml'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lamaie' ), 2);


commit;