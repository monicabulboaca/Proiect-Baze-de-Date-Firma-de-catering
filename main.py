import os
import sys

import PyQt5.QtWidgets
from PyQt5.QtWidgets import QMainWindow, QApplication
from PyQt5.uic import loadUi

from tables import Meniu


class Ui_MainWindow(QMainWindow):
    ROOT_DIR = os.path.dirname(os.path.abspath(__file__))

    def __init__(self):
        super(Ui_MainWindow, self).__init__()
        ui_path = os.path.join(self.ROOT_DIR, "mainWindow.ui")
        loadUi(ui_path, self)
        self.meniu = Meniu()
        self.btn_fel_principal.clicked.connect(lambda: self.load_and_display_data(1))
        self.btn_bauturi.clicked.connect(lambda: self.load_and_display_data(2))
        self.tableWidget.setColumnWidth(0, 200)
        self.tableWidget.setColumnWidth(1, 100)
        self.tableWidget.setColumnWidth(2, 100)
        self.tableWidget.setColumnWidth(3, 50)
        self.tableWidget.setHorizontalHeaderLabels(["Produs", "Pret", "Ingrediente"])
        self.listWidget.itemClicked.connect(lambda: Meniu.selection_changed(self.listWidget, self.tableWidget))
        header = self.tableWidget.horizontalHeader()
        header.setSectionResizeMode(0, PyQt5.QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(1, PyQt5.QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(2, PyQt5.QtWidgets.QHeaderView.ResizeToContents)

    def load_and_display_data(self, nr_meniu):
        self.meniu.loadData(self.listWidget, nr_meniu)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    ui = Ui_MainWindow()
    ui.show()
    ui.raise_()
    sys.exit(app.exec_())
