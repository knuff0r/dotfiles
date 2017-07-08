#!/usr/bin/python

import gi
import subprocess 


gi.require_version('Gtk', '3.0')

from gi.repository import Gtk

class MyWindow(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Choose Monitor layout")

        self.box = Gtk.Box(spacing=0)
        self.add(self.box)

        self.button_01 = Gtk.Button(label="0|1")
        self.button_01.connect("clicked", self.on_button_01_clicked)
        self.box.pack_start(self.button_01, True, True, 0)

        self.button_10 = Gtk.Button(label="1|0")
        self.button_10.connect("clicked", self.on_button_10_clicked)
        self.box.pack_start(self.button_10, True, True, 0)

        self.button_11 = Gtk.Button(label="1|1")
        self.button_11.connect("clicked", self.on_button_11_clicked)
        self.box.pack_start(self.button_11, True, True, 0)


    def on_button_01_clicked(self, widget):
        subprocess.Popen(
        "xrandr --output HDMI-A-0 --off --output DVI-D-0 --auto && $HOME/.config/polybar/launch.sh",
        shell=True)
        Gtk.main_quit()

    def on_button_10_clicked(self, widget):
        subprocess.Popen(
        "xrandr --output HDMI-A-0 --auto --output DVI-D-0 --off && $HOME/.config/polybar/launch.sh",
        shell=True)
        Gtk.main_quit()


    def on_button_11_clicked(self, widget):
        subprocess.Popen(
        "xrandr --output HDMI-A-0 --auto --left-of DVI-D-0 --output DVI-D-0 --auto && $HOME/.config/polybar/launch.sh",
        shell=True)
        Gtk.main_quit()

win = MyWindow()
win.connect("delete-event", Gtk.main_quit)
win.set_modal(True)
win.show_all()
Gtk.main()
