#!/usr/bin/python
#
# Basic usage
# - Create directory /storage/powerButton
# - Copy these two files in it
# - Create,enable,activate powerButton.service
# - have fun
#
# pylint: disable=import-error
import sys
sys.path.append('/storage/.kodi/addons/virtual.rpi-tools/lib')

import RPi.GPIO as GPIO
import subprocess

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(4, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.wait_for_edge(4, GPIO.FALLING)

subprocess.call(['shutdown', '-h', 'now'], shell=False)
