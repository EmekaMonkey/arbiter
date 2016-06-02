#!/usr/bin/python2.7
import os, sys, shutil, platform, time, os.path

# osx
if platform.system() == "Darwin":
    if os.path.isdir("./bin") == False :
        os.system("mkdir bin")
        os.system("./build/osx/build -o arbiter")
        os.system("mv arbiter.app bin/arbiter.app")
        os.system("clear")
    else :
        os.system("rm -rf bin/arbiter.app")
        os.system("./build/osx/build -o arbiter")
        os.system("mv arbiter.app bin/arbiter.app")
        os.system("clear")
"""
if platform.system() == "Linux":
    if os.path.isdir("./bin") == False :
        os.system("mkdir bin")
        os.system("./build/osx/build -o arbiter")
        os.system("mv arbiter.app bin/arbiter.app")
        os.system("clear")
    else :
        os.system("rm -rf bin/arbiter.app")
        os.system("./build/osx/build -o arbiter")
        os.system("mv arbiter.app bin/arbiter.app")
        os.system("clear")
"""
"""
if platform.system() == "Windows":
    if os.path.isdir("./bin") == False :
        os.system("mkdir bin")
        os.system("./build/osx/build -o arbiter")
        os.system("mv arbiter.app bin/arbiter.app")
        os.system("clear")
    else :
        os.system("rm -rf bin/arbiter.app")
        os.system("./build/osx/build -o arbiter")
        os.system("mv arbiter.app bin/arbiter.app")
        os.system("clear")
"""
