(for url in \
  $(grep 'https://${S3Bucket}' failover.yaml | \
    sed 's/^.*\(https.*yaml\).*$/\1/' | \
    sed -e 's/${S3Bucket}/f5-cft-v2/' \
        -e 's/${S3Region}/us-east-1/' \
        -e 's#${artifactLocation}#f5-aws-cloudformation-v2/v3.6.0.0/examples/#');
  do echo $url ; done) | tee urls.txt
