import re
import os
import subprocess

from flask import Flask, request
app = Flask(__name__)


@app.route("/command1")
def command_injection1():
    files = request.args.get('files', '')
    # Don't let files be `; rm -rf /`
    os.system("ls " + files) # $result=BAD


@app.route("/command2")
def command_injection2():
    files = request.args.get('files', '')
    # Don't let files be `; rm -rf /`
    subprocess.Popen("ls " + files, shell=True) # $result=BAD


@app.route("/path-exists-not-sanitizer")
def path_exists_not_sanitizer():
    """os.path.exists is not a sanitizer

    This small example is inspired by real world code. Initially, it seems like a good
    sanitizer. However, if you are able to create files, you can make the
    `os.path.exists` check succeed, and still be able to run commands. An example is
    using the filename `not-there || echo pwned`.
    """
    path = request.args.get('path', '')
    if os.path.exists(path):
        os.system("ls " + path) # $result=BAD
