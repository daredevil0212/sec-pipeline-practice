import sqlite3
import subprocess

def get_user(conn, name):
    cur = conn.cursor()
    cur.execute("SELECT * FROM users WHERE name = '" + name + "'")  # SQL injection
    return cur.fetchall()
# this is run function
def run(cmd):
    subprocess.call(cmd, shell=True)  # command injection
