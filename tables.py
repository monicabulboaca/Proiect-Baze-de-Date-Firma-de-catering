import random
import sys
import cx_Oracle
from PyQt5.QtWidgets import QTableWidgetItem, QListWidgetItem

# This is the path to the ORACLE client files
lib_dir = r'C:\Users\monic\Desktop\AN III\BD\model_tema_de_casa\model_tema_de_casa\instantclient_21_3'
text = ''
produsul_indisponibil = ''

try:
    cx_Oracle.init_oracle_client(lib_dir=lib_dir)
except Exception as err:
    print("Error connecting: cx_Oracle.init_oracle_client()")
    print(err)
    sys.exit(1)

CONN_INFO = {
    'host': 'bd-dc.cs.tuiasi.ro',
    'port': 1539,
    'user': 'bd098',
    'psw': 'bd098',
    'service': 'orcl',
}
CONN_STR = '{user}/{psw}@{host}:{port}/{service}'.format(**CONN_INFO)
con = cx_Oracle.connect(CONN_STR)
results = con.cursor()


class DBConn:

    @staticmethod
    def load_data(list_widget_window, nr_meniu):
        list_widget_window.clear()
        list_widget_window.show()
        query = 'SELECT NUME_CATEGORIE FROM CATEGORII WHERE MENIURI_NR_MENIU=%s' % nr_meniu
        results = con.cursor()
        results.execute(query)
        for row_number, row_data in enumerate(results):
            for column_number, data in enumerate(row_data):
                list_widget_window.insertItem(row_number, QListWidgetItem(str(data)))

    @staticmethod
    def selection_changed(list_widget_window, table_widget_window, btn_adauga, list_widget_selectii, lbl_selectii,
                          btn_plaseaza_cmd, lbl_total_plata, btn_delete):
        global text
        table_widget_window.clear()
        table_widget_window.show()
        btn_adauga.show()
        list_widget_selectii.show()
        btn_delete.show()
        lbl_selectii.show()
        btn_plaseaza_cmd.show()
        lbl_total_plata.show()

        table_widget_window.setHorizontalHeaderLabels(["Produs", "Pret", "Ingrediente"])
        table_widget_window.setColumnWidth(0, 350)
        table_widget_window.setColumnWidth(1, 10)
        table_widget_window.setColumnWidth(2, 377)

        items_text_list = [str(list_widget_window.item(i).text()) for i in range(list_widget_window.count())]
        for item in items_text_list:
            if list_widget_window.currentItem().text() == item:
                # query = 'select p.nume_produs, p.pret from categorii_produse cp, produse p \
                # where cp.categorii_nr_categorie= (select id_categorie from categorii where \
                # nume_categorie=\'%s\') and cp.produse_nr_produs = p.id_produs and p.stare = \'ACTIV\'' % item

                query = 'select p.nume_produs, p.pret from categorii_produse cp, produse p \
                where cp.categorii_nr_categorie= (select id_categorie from categorii where \
                nume_categorie=\'%s\') and cp.produse_nr_produs = p.id_produs and p.stare = \'ACTIV\'' % item

                results.execute(query)
                r = results.fetchall()
                table_widget_window.setRowCount(0)

                row_number = 0
                for row_data in enumerate(r):
                    table_widget_window.insertRow(row_number)
                    table_widget_window.setItem(row_number, 0, QTableWidgetItem(str(row_data[1][0])))
                    table_widget_window.setItem(row_number, 1, QTableWidgetItem(str(row_data[1][1])))
                    nume_produs = str(row_data[1][0])
                    DBConn.get_ingredients(nume_produs)
                    table_widget_window.setItem(row_number, 2, QTableWidgetItem(text))
                    row_number += 1

    @staticmethod
    def get_ingredients(nume_produs):
        global text
        text = ''
        _query = 'select i.nume_ingredient from ingrediente i, produse p, retete r \
                                        where p.id_produs = r.produse_id_produs and \
                                        i.id_ingredient = r.ingrediente_id_ingr and p.nume_produs = \'%s\'' % nume_produs
        results.execute(_query)
        rr = results.fetchall()
        lista_ingr = []
        for _row_data in enumerate(rr):
            lista_ingr.append(str(_row_data[1][0]))
        for i in lista_ingr:
            if lista_ingr.index(i) != len(lista_ingr) - 1:
                text += str(i) + ', '
            else:
                text += str(i)
        return lista_ingr

    def place_order(self, items, lbl_succes):
        stari_produse_cos = []
        lbl_succes.hide()
        for item in items:
            produs = item.split(",")[0]
            amount = int(item.split("buc.")[0].split(", ")[1])
            nr_masa = random.randint(1, 5)

            # verific starea produsului
            stare = self.get_stare_produs(produs)
            stari_produse_cos.append(stare)
            if stare == 'ACTIV':
                query = f'INSERT INTO Comenzi(id_comanda, data_comanda, nr_masa) VALUES(NULL,SYSDATE,{nr_masa})'
                results.execute(query)

                # get tip produs
                tip_produs = self.get_tip_produs(produs)

                if tip_produs == 'preparat':
                    # ingredientele necesare pt produs
                    ingr = self.get_ingredients(produs)

                    # nr de produse disponibile pe baza ingredientelor
                    nr_prod_disponibile = self.nr_produse_disponibile(produs)

                    # verific stocul pentru fiecare ingredient
                    for i in ingr:
                        print()
                        print('INGREDIENT: ' + i)

                        stoc = self.get_stoc_ingredient(i)
                        if stoc == 0:
                            # update stare produs
                            self.update_stare_produs(produs)

                        print('STOC: ' + str(stoc))

                        amount_ingr = self.get_cantitate_ingredient(i, produs)
                        print('CANTITATE: ' + str(amount_ingr))


                        # verific daca cantitate ingr necesar > stoc ingredient
                        if amount_ingr > stoc or stoc == 0:
                            # self.update_stare_produs(produs)
                            lbl_succes.show()
                            lbl_succes.setText("Stoc insuficient pentru produsul %s " %
                                produs)
                            return
                else:
                    stoc_produs = self.get_stoc_produs(produs)
                    if stoc_produs == 0:
                        # update stare produs
                        self.update_stare_produs(produs)

                    # verific daca cantitatea de produs comandat e mai mare decat stocul
                    if amount > stoc_produs:
                        self.update_stare_produs(produs)
                        lbl_succes.show()
                        lbl_succes.setText(
                            "Stoc insuficient pentru produsul %s \n Stoc disponibil: %f" % (produs, stoc_produs))
                        return

            else:
                lbl_succes.show()
                lbl_succes.setText("Stoc insuficient pentru produsul %s" % produsul_indisponibil)
                return

            if tip_produs == 'preparat':
                self.insert_into_produse_comenzi(amount, produs)

                # update la ingrediente
                query = 'UPDATE Ingrediente i \
                        SET stoc_ingredient = stoc_ingredient - %d * (SELECT r.cantitate_ingr FROM Retete r WHERE r.Produse_id_produs = (SELECT id_produs FROM Produse WHERE nume_produs = \'%s\') and r.Ingrediente_id_ingr = i.id_ingredient) \
                        WHERE EXISTS (SELECT 1 FROM Retete r WHERE Produse_id_produs = (SELECT id_produs FROM Produse WHERE nume_produs = \'%s\') and r.Ingrediente_id_ingr = i.id_ingredient)' % (
                    amount, produs, produs)

                results.execute(query)
                results.execute("commit")

            if tip_produs == 'bautura':
                self.insert_into_produse_comenzi(amount, produs)

                # update stoc
                query = 'UPDATE stocuri_produs sp \
                            SET stoc_produs = stoc_produs - %d \
                            WHERE sp.Produse_id_produs = (SELECT id_produs FROM Produse WHERE nume_produs = \'%s\')' % (
                    amount, produs)
                results.execute(query)
                results.execute("commit")

        # verificare stari produse

        lbl_succes.show()
        lbl_succes.setText("Comanda plasata cu succes!")

    def get_stare_produs(self, produs):
        query = 'select stare from produse where nume_produs=\'%s\'' % produs
        results.execute(query)
        res = results.fetchall()
        stare = str(res[0][0])
        return stare

    def get_tip_produs(self, produs):
        query = 'select tip_produs from produse where nume_produs = \'%s\'' % produs
        results.execute(query)
        res = results.fetchall()
        tip_produs = str(res[0][0])
        return tip_produs

    def get_stoc_ingredient(self, ingredient):
        query = 'select stoc_ingredient from ingrediente where nume_ingredient=\'%s\'' % ingredient
        results.execute(query)
        res = results.fetchall()
        stoc = float(res[0][0])
        return stoc

    def get_cantitate_ingredient(self, ingredient, produs):
        query = 'select cantitate_ingr from retete where produse_id_produs = (select id_produs from produse where nume_produs = \'%s\') \
                                            and ingrediente_id_ingr= (select id_ingredient from ingrediente where nume_ingredient = \'%s\')' % (
            produs, ingredient)
        results.execute(query)
        res = results.fetchall()
        amount_ingr = float(res[0][0])
        return amount_ingr

    def get_stoc_produs(self, produs):
        query = 'select stoc_produs from stocuri_produs where produse_id_produs = (select id_produs from produse where nume_produs = \'%s\' )' % produs
        results.execute(query)
        res = results.fetchall()
        stoc_produs = float(res[0][0])
        return stoc_produs

    def update_stare_produs(self, produs):
        query = 'UPDATE Produse p\
        SET p.stare = \'INACTIV\' \
        WHERE p.id_produs = (SELECT id_produs FROM produse WHERE nume_produs = \'%s\')' % produs
        results.execute(query)
        results.execute("commit")

    def insert_into_produse_comenzi(self, amount, produs):
        query = 'INSERT INTO produse_comenzi(nr_produse_comandate, produse_nr_produs, comenzi_id_comanda) \
                                            VALUES (%d, (SELECT id_produs from produse where nume_produs=\'%s\' ), (SELECT max(id_comanda) from comenzi))' % (
            amount, produs)
        results.execute(query)
        results.execute("commit")

    def nr_produse_disponibile(self, produs):
        query = 'SELECT MIN(FLOOR((SELECT i.stoc_ingredient/r.cantitate_ingr FROM DUAL))) as nr_preparate_disponibile \
                                                           FROM Produse p, Retete r, Ingrediente i \
                                                           WHERE p.id_produs = r.Produse_id_produs and i.id_ingredient = r.Ingrediente_id_ingr and p.nume_produs=\'%s\' \
                                                           GROUP BY p.nume_produs' % produs
        results.execute(query)
        res = results.fetchall()
        print('Preparate disponibile pentru produsul %s: %d' % (produs, res[0][0]))
        return int(res[0][0])
