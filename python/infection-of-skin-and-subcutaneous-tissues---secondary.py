# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B85","system":"icd10"},{"code":"B40.3","system":"icd10"},{"code":"B42.1","system":"icd10"},{"code":"A36.3","system":"icd10"},{"code":"A21.0","system":"icd10"},{"code":"B38.3","system":"icd10"},{"code":"A20.1","system":"icd10"},{"code":"B78.1","system":"icd10"},{"code":"B43.0","system":"icd10"},{"code":"B55.1","system":"icd10"},{"code":"A43.1","system":"icd10"},{"code":"B46.3","system":"icd10"},{"code":"L00","system":"icd10"},{"code":"A26.0","system":"icd10"},{"code":"A06.7","system":"icd10"},{"code":"P38","system":"icd10"},{"code":"B00.0","system":"icd10"},{"code":"B37.2","system":"icd10"},{"code":"P39.4","system":"icd10"},{"code":"A18.4","system":"icd10"},{"code":"A32.0","system":"icd10"},{"code":"A31.1","system":"icd10"},{"code":"A22.0","system":"icd10"},{"code":"B45.2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('infection-of-skin-and-subcutaneous-tissues-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["infection-of-skin-and-subcutaneous-tissues---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["infection-of-skin-and-subcutaneous-tissues---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["infection-of-skin-and-subcutaneous-tissues---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
