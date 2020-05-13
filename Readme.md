# Docker Images for Data Science

This is a docker file that gets you a up and ready data science environment with access to two fav editors Jupyter Notebooks and VS Code Server. You can easily add and remove libraries in your docker image as per your needs.

### Installation

1. Install docker if not alread installed. For instructions look [here](https://docs.docker.com/engine/install/) 

2. Change the password of Notebook by updating the`c.NotebookApp.password` in jupyter_notebook_config.py. To Generate Password:
    ```bash
    In [1]: from notebook.auth import passwd
    In [2]: passwd()
    Enter password:
    Verify password:
    Out[2]: 'sha1:67c9e60bb8b6:9ffede0825894254b2e042ea597d771089e11aed'
    ```
3. To change the password of the VS Code-Server, open the Dockerfile and update line `ENV PASSWORD` with correct password you want to use.

   > By Default the password is set to `demo`. To install additional libraries refer to internal readme of the docker file
    
4. Make the run.sh script executable
    ```bash
    chmod +x run.sh
    ```
5. Run the script using
    ```bash
    ./run.sh
    ```
    It will build the docker images and will run the container with a ready data science libraries
6. Verify the deployment by navigating to your server address in your preferred browser.
    ```bash
    localhost:8888
    ```

### Ports 

Every container exposes Jupyter Notebook and Jupyter Lab on ports

| Application | Port |
| ------ | ------ |
| Jupyter Notebook | 8888 |
| VS Code Server | 8989 |

