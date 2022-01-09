import os
import sys
from PyQt5.QtWidgets import QMainWindow, QApplication, QDialog
from PyQt5.uic import loadUi
from tables import DBConn

# global variables
text = ""
current_item = ""
amount = 0
price = 0
sum_price = 0
items = []


class UiMainWindow(QMainWindow):
    ROOT_DIR = os.path.dirname(os.path.abspath(__file__))

    def __init__(self):
        global current_item, amount
        super(UiMainWindow, self).__init__()
        ui_path = os.path.join(self.ROOT_DIR, "mainWindow.ui")
        loadUi(ui_path, self)

        self.hide_widgets()

        self.db = DBConn()
        self.add_to_cart = UiPopUpAddToCart(self)
        self.error = UIPopUpError(self)

        # buttons connexions
        self.btn_fel_principal.clicked.connect(lambda: self.load_and_display_data(1))
        self.btn_bauturi.clicked.connect(lambda: self.load_and_display_data(2))
        self.btn_desert.clicked.connect(lambda: self.load_and_display_data(3))
        self.listWidget.itemClicked.connect(
            lambda: DBConn.selection_changed(self.listWidget, self.tableWidget, self.btn_adauga,
                                             self.list_widget_selectii,
                                             self.lbl_selectii, self.btn_plaseaza_cmd, self.lbl_total_pay,
                                             self.btn_delete))

        self.btn_adauga.clicked.connect(
            lambda: self.add_to_cart.show_pop_up(self.tableWidget, self.list_widget_selectii, self.lbl_total_pay))

        self.btn_plaseaza_cmd.clicked.connect(lambda: self.db.place_order(items, self.lbl_succes))
        self.btn_delete.clicked.connect(lambda: self.delete_selection(self.list_widget_selectii, self.lbl_total_pay))

    def hide_widgets(self):
        self.listWidget.hide()
        self.tableWidget.hide()
        self.btn_adauga.hide()
        self.list_widget_selectii.hide()
        self.lbl_selectii.hide()
        self.btn_plaseaza_cmd.hide()
        self.btn_delete.hide()
        self.lbl_total_pay.hide()
        self.lbl_succes.hide()

    def load_and_display_data(self, nr_meniu):
        self.db.load_data(self.listWidget, nr_meniu)

    def delete_selection(self, list_widget_selectii, lbl_total_pay):
        global sum_price
        prices = []
        for i in range(len(items)):
            prices.append(items[i].split(":")[1].strip())
        try:
            curr_row = list_widget_selectii.currentRow()
            items.pop(curr_row)
            print(items)
            sum_price -= float(prices[curr_row])
            list_widget_selectii.takeItem(int(curr_row))
            self.update_lbl_total_topay(lbl_total_pay)
        except:
            self.error.show()

    def update_lbl_total_topay(self, lbl_total_pay):
        lbl_total_pay.setText(f"Total de plata: {str(sum_price)} lei")


class UIPopUpError(QDialog):
    ROOT_DIR = os.path.dirname(os.path.abspath(__file__))

    def __init__(self, parent):
        super().__init__(parent=parent)
        ui_path = os.path.join(self.ROOT_DIR, "ErrorPopUp.ui")
        loadUi(ui_path, self)
        self.setWindowTitle("Eroare")
        self.btn_ok.clicked.connect(self.hide)


class UiPopUpAddToCart(QDialog):
    ROOT_DIR = os.path.dirname(os.path.abspath(__file__))

    def __init__(self, parent):
        super().__init__(parent=parent)
        ui_path = os.path.join(self.ROOT_DIR, "AddToCartPopUp.ui")
        loadUi(ui_path, self)
        self.setWindowTitle("Adauga in cos")
        self.error = UIPopUpError(self)

    def show_pop_up(self, table_widget, list_widget_selectii, lbl_total_pay):
        global current_item, amount, price
        r = table_widget.currentRow()
        try:
            current_item = table_widget.item(r, 0).text()
            price = table_widget.item(r, 1).text()
            self.show()
            self.txt_edit_product.setPlainText(str(current_item))
            self.spin_box_amount.valueChanged.connect(
                lambda: self.amount_changed(list_widget_selectii, lbl_total_pay))
        except:
            self.error.show()

    def amount_changed(self, list_widget_selectii, lbl_total_pay):
        global amount
        amount = self.spin_box_amount.value()
        self.btn_adauga.clicked.connect(lambda: self.add_selection(list_widget_selectii, lbl_total_pay))
        self.btn_renunta.clicked.connect(lambda: self.hide())

    def add_selection(self, list_widget_selectii, lbl_total_pay):
        global text, price, sum_price
        total_price = float(price) * float(amount)
        text = str(current_item) + ', ' + str(amount) + ' buc.' + ', pret: ' + str(total_price)
        sum_price += total_price
        if amount != 0:
            list_widget_selectii.addItem(str(text))
            items.append(str(text))
            lbl_total_pay.setText(f"Total de plata: {str(sum_price)} lei")
        self.hide()
        self.spin_box_amount.setValue(0)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    ui = UiMainWindow()
    ui.show()
    ui.setWindowTitle("Firma de catering")
    ui.raise_()
    sys.exit(app.exec_())
