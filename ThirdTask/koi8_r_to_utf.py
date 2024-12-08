import csv

# Чтение файла с кодировкой KOI8-R и запись его в новый файл с кодировкой UTF-8
with open('users1.csv', 'r', encoding='koi8-r') as infile:
    with open('users1_utf.csv', 'w', encoding='utf-8', newline='') as outfile:
        reader = csv.reader(infile)
        writer = csv.writer(outfile)
        
        for row in reader:
            writer.writerow(row)