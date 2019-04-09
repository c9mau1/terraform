#!/bin/sh

CRE_FILE=${HOME}/$1

echo "create credentials. filename = ${CRE_FILE}"

echo "credentials \"app.terraform.io\" {" > ${CRE_FILE}
echo "  token = \"${token}\"" >> ${CRE_FILE}
echo "}" >> ${CRE_FILE}

exit 0
