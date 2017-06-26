ext="_dbr.psv"
for n in {01..05};
do
   sed -i '1d' /home/ec2-user/$n$ext;
   aws s3 cp /home/ec2-user/$n$ext s3://dsc-dbr/psv_test/$n$ext;
   rm /home/ec2-user/268879989552-aws-billing-detailed-line-items-2017-$n.csv;
done