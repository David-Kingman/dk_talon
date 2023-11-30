from talon import Module
import os

mod = Module()

@mod.action_class
class Actions:
    def launch_skynet():
        "Log into remote desktop"
        path = r"C:\Users\dkingman\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Hmt-uks-skynetwvd121023 (RD) (David.Kingman@hmtreasury.gov.uk)\Skynet Production 121023 (Hmt-uks-skynetwvd121023) (David.Kingman@hmtreasury.gov.uk).lnk"
        os.startfile(path)
    