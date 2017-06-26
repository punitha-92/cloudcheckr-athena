import csv

file = "/home/ec2-user/268879989552-aws-billing-detailed-line-items-2017-"
month =["01", "02", "03", "04", "05"]
fileextension = ".csv"
psv = "_dbr.psv"
for m in month:
        with open(file+m+fileextension, 'rU') as infile, open(m+psv, 'w') as outfile:
            reader = csv.reader(infile)
            writer = csv.writer(outfile, delimiter='|')
            writer.writerows(reader)
                                