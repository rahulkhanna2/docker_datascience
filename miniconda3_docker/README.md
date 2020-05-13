### Updating Libraries
To update the libraries in the env, 
1. If the library you want to add is present in coda-forge add it under `dependencies` in `environment.yml` 
2. If the library you want to add is sepcifically from PyPI then add it under `pip` in `environment.yml`
3. Run `./run.sh` to build image again

Note: For now miniconda docker does not give you vs code.
