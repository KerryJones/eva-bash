##
# Generate MD5 Hash
##

# Generate based off date
md5=$(date | md5sum | head -c32)

cat << EOF

$md5
EOF