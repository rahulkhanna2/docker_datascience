# Docker Images for Data Science

This is a docker file that gets you a up and ready data science environment with access to the Jupyter Notebook and Jupyterlab. You can easily add and remove libraries in your docker image as per your needs.

### Installation

1. Install docker if not alread installed. For instructions look [here](https://docs.docker.com/engine/install/) 

2. Change the password by updating the`c.NotebookApp.password` in jupyter_notebook_config.py. To Generate Password:
    ```bash
    In [1]: from notebook.auth import passwd
    In [2]: passwd()
    Enter password:
    Verify password:
    Out[2]: 'sha1:67c9e60bb8b6:9ffede0825894254b2e042ea597d771089e11aed'
    ```
    > By Default the password is set to `demo`
    
3. Make the run.sh script executable
    ```bash
    chmod +x run.sh
    ```
4. Run the script using
    ```bash
    ./run.sh
    ```
    It will build the docker images and will run the container with a ready data science libraries
5. Verify the deployment by navigating to your server address in your preferred browser.
    ```bash
    localhost:8888
    ```

### Ports 

Every container exposes Jupyter Notebook and Jupyter Lab on ports

| Application | Port |
| ------ | ------ |
| Jupyter Notebook | 8888 |
| Jupyter Lab | 3000 |

