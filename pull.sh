for n in {01..05};
do 
   aws s3 cp s3://dscpayer-billingbucket/268879989552-aws-billing-detailed-line-items-2017-$n.csv.zip /home/ec2-user;
   unzip 268879989552-aws-billing-detailed-line-items-2017-$n.csv.zip;
   rm 268879989552-aws-billing-detailed-line-items-2017-$n.csv.zip;
done
