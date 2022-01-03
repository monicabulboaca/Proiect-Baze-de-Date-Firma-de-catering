import sys
import cx_Oracle
from PyQt5.QtWidgets import QTableWidgetItem, QListWidgetItem

# This is the path to the ORACLE client files
lib_dir = r'C:\Users\monic\Desktop\AN III\BD\model_tema_de_casa\model_tema_de_casa\instantclient_21_3'
text = ''
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


class Meniu:

    def __init__(self):
        self.display_window = None
        self.dialog_box = None
        self.listWidget_wnd = None
        self.tableWidget_wnd = None

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
    def selection_changed(list_widget_window, table_widget_window, btn_adauga, list_view_selectii, lbl_selectii, btn_plaseaza_cmd):

        table_widget_window.clear()
        table_widget_window.show()
        btn_adauga.show()
        list_view_selectii.show()
        lbl_selectii.show()
        btn_plaseaza_cmd.show()

        table_widget_window.setHorizontalHeaderLabels(["Produs", "Pret", "Ingrediente"])
        header = table_widget_window.horizontalHeader()
        #header.setSectionResizeMode(0, PyQt5.QtWidgets.QHeaderView.ResizeToContents)
        table_widget_window.setColumnWidth(0, 350)
        table_widget_window.setColumnWidth(1, 10)
        table_widget_window.setColumnWidth(2, 377)
        #header.setSectionResizeMode(2, PyQt5.QtWidgets.QHeaderView.ResizeToContents)
        global text
        items_text_list = [str(list_widget_window.item(i).text()) for i in range(list_widget_window.count())]
        for item in items_text_list:
            if list_widget_window.currentItem().text() == item:
                query = 'select p.nume_produs, p.pret from categorii_produse cp, produse p \
                where cp.categorii_nr_categorie= (select id_categorie from categorii where \
                nume_categorie=\'%s\') and cp.produse_nr_produs = p.id_produs' % item
                results.execute(query)
                r = results.fetchall()
                table_widget_window.setRowCount(0)

                row_number = 0
                for row_data in enumerate(r):
                    table_widget_window.insertRow(row_number)
                    table_widget_window.setItem(row_number, 0, QTableWidgetItem(str(row_data[1][0])))
                    table_widget_window.setItem(row_number, 1, QTableWidgetItem(str(row_data[1][1])))
                    nume_produs = str(row_data[1][0])
                    Meniu.get_ingredients(nume_produs)
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
