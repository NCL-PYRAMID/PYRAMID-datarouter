#!/bin/bash

app_platform=${APP_PLATFORM:-$(echo $0)}
data_root=""
if test $app_platform = "docker"
then
    data_root="/data"
else
    data_root="data"
fi

data_inputs=$data_root"/inputs"
data_outputs=$data_root"/outputs"

echo "Reading from "$data_inputs
echo "Writing to "$data_outputs

#output_data_folder=${OUTPUT_DATA_FOLDER:-output_data_folder$RANDOM}
output_data_folder=${OUTPUT_DATA_FOLDER:-output_data_folder}

mkdir -p $data_outputs/$output_data_folder
cp -r $data_inputs/* $data_outputs/$output_data_folder
