#!/bin/bash
PROJECT_ID=$TF_VAR_project_id
REGION_ID=$TF_VAR_region_name
#cd ./terraform/
sed -e "s/<PROJECT_ID>/$PROJECT_ID/g; s/<REGION_ID>/$REGION_ID/g" ./scripts/templates/provider.tf.tmpl > ./terraform//stage/provider.tf
sed -e "s/<PROJECT_ID>/$PROJECT_ID/g; s/<REGION_ID>/$REGION_ID/g" ./scripts/templates/tf_state.tf.tmpl > ./terraform/stage/provider.tf