import os
import sys

from PyQt5.QtWidgets import QMainWindow, QApplication, QDialog
from PyQt5.uic import loadUi

from tables import Meniu

text = ""
produs = ""
cantitate = 0
pret = 0
sum_pret = 0
items = []

class UiMainWindow(QMainWindow):
    ROOT_DIR = os.path.dirname(os.path.abspath(__file__))

    def __init__(self):
        global produs, cantitate
        super(UiMainWindow, self).__init__()
        ui_path = os.path.join(self.ROOT_DIR, "mainWindow.ui")
        loadUi(ui_path, self)
        self.listWidget.hide()
        self.tableWidget.hide()
        self.btn_adauga.hide()
        self.list_view_selectii.hide()
        self.lbl_selectii.hide()
        self.btn_plaseaza_cmd.hide()
        self.lbl_total_plata.hide()
        self.lbl_succes.hide()

        self.meniu = Meniu()
        self.add_to_cart = UiPopUpAddToCart(self)

        self.btn_fel_principal.clicked.connect(lambda: self.load_and_display_data(1))
        self.btn_bauturi.clicked.connect(lambda: self.load_and_display_data(2))
        self.btn_desert.clicked.connect(lambda: self.load_and_display_data(3))
        self.listWidget.itemClicked.connect(
            lambda: Meniu.selection_changed(self.listWidget, self.tableWidget, self.btn_adauga, self.list_view_selectii,
                                            self.lbl_selectii, self.btn_plaseaza_cmd, self.lbl_total_plata))
        self.btn_adauga.clicked.connect(lambda: self.add_to_cart.show_pop_up(self.tableWidget, self.list_view_selectii, self.lbl_total_plata))

        self.btn_plaseaza_cmd.clicked.connect(lambda: self.meniu.plaseaza_comanda(items, self.lbl_succes))

    def load_and_display_data(self, nr_meniu):
        self.meniu.load_data(self.listWidget, nr_meniu)

    # def plaseaza_comanda(self, list_view_selectii):
    #     # verificare stoc ingrediente
    #     # verificare retete
    #     # inserare in tabela comenzi
    #     # inserare in tabela produse_comenzi
    #     items = [str(list_view_selectii.item(i).text()) for i in range(list_view_selectii.count())]
    #     for item in items:
    #         produs = item.split(",")[0]
    #         cantitate = item.split("buc.")[0].split(", ")[1]


class UiPopUpAddToCart(QDialog):
    ROOT_DIR = os.path.dirname(os.path.abspath(__file__))

    def __init__(self, parent):
        super().__init__(parent=parent)
        ui_path = os.path.join(self.ROOT_DIR, "AddToCartPopUp.ui")
        loadUi(ui_path, self)

    def show_pop_up(self, table_widget, list_view_selectii, lbl_total_plata):
        global produs, cantitate, pret
        r = table_widget.currentRow()
        produs = table_widget.item(r, 0).text()
        pret = table_widget.item(r, 1).text()
        self.show()
        self.txt_edit_product.setPlainText(str(produs))
        self.spin_box_cantitate.valueChanged.connect(lambda: self.cantitate_changed(list_view_selectii, lbl_total_plata))

    def cantitate_changed(self, list_view_selectii, lbl_total_plata):
        global cantitate
        cantitate = self.spin_box_cantitate.value()
        self.btn_adauga.clicked.connect(lambda: self.adauga_selectie(list_view_selectii, lbl_total_plata))
        self.btn_renunta.clicked.connect(lambda: self.hide())

    def adauga_selectie(self, list_view_selectii, lbl_total_plata):
        global text, pret, sum_pret
        pret_total = int(pret) * int(cantitate)
        text = str(produs) + ', ' + str(cantitate) + ' buc.' + '\t\t pret: ' + str(pret_total)
        sum_pret += pret_total
        if cantitate != 0:
            list_view_selectii.addItem(str(text))
            items.append(str(text))
            lbl_total_plata.setText(f"Total de plata: {str(sum_pret)}")
        self.hide()
        self.spin_box_cantitate.setValue(0)




if __name__ == "__main__":
    app = QApplication(sys.argv)
    ui = UiMainWindow()
    ui.show()
    ui.raise_()
    sys.exit(app.exec_())
