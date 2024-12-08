#!/usr/bin/python3

import csv
import sqlite3
import sys


def read_log(fname):
    data = []

    with open(fname) as fin:
        for user_id, user_time, bet, win in csv.reader(fin):
            if(bet != ''):
                bet = int(bet)
            else:
                bet = None
            if(win != ''):
                win = int(win)
            else:
                win = None

            data.append((user_id, user_time, bet, win))

    with sqlite3.connect('table.s3db') as conn:
        cur = conn.cursor()
        for user_id, user_time, bet, win in data:
            cur.execute('INSERT OR IGNORE INTO LOG1 (user_id, user_time, bet, win) VALUES (?, ?, ?, ?)',
                        (user_id, user_time, bet, win))
        conn.commit()

def read_users(fname):
    data = []

    with open(fname) as fin:
        for user_id, email, geo in csv.reader(fin, delimiter='\t'):
            data.append((None if user_id == '' else user_id,
                         None if email == '' else email,
                         None if geo == '' else geo))

    with sqlite3.connect('table.s3db') as conn:
        cur = conn.cursor()
        for user_id, email, geo in data:
            cur.execute('INSERT OR IGNORE INTO USERS (user_id, email, geo) VALUES (?, ?, ?)',
                        (user_id, email, geo))
        conn.commit()


if __name__ == '__main__':
    read_log("log1.csv")
    read_users("users1_utf.csv")
