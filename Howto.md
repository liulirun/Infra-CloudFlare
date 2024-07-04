## meeting
1. determine what clouflare part need backup
1. determine api token access scope ( for example , record)

## How to import
1. use cf-terraforming generate the config for different part, this is for visible ( though this repo generated GENERATED_TF_FILE, but is this needed?  can we just use import? )
2. use `cf-terraforming import` for the ids
3. at thie point, GENERATED_TF_FILE must be in root foler!!
4. use `terraform import` to import to .tfstate file one by one ( do we need the imported file?)
5. move the GENERATED_TF_FILE to correct module, then run `terraform plan` to verify if imported successfully

determine the api token access 
1. use cloud 