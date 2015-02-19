import csv
with open('build/G008.csv', 'rU') as f:
    with open('build/G008new.csv', 'w+') as fp:
        reader = csv.reader(f, delimiter=",", quotechar='"')
        a = csv.writer(fp, delimiter=",")

        for row in reader:
            row.append(row[7] + " "+row[16])
            a.writerow(row)
