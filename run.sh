#!/bin/sh
set -e
./install.sh
echo "[INFO] Assessment environment is ready."
echo "------------------------------------------------------"
echo "Visit: http://localhost:3000/Products and http://localhost:3000/products"
echo "- Only /Products (with capital P) works initially."
echo "- Fix the router configuration so all case variants work!"
echo "------------------------------------------------------"
docker logs -f rr-case-sensitive-task