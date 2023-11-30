# devbox-jupyter
## Description
This project provides a Dockerfile and a docker-compose file to easily spin up a Docker container running Jupyter Notebook. Jupyter Notebook is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations, and narrative text.
## Prerequisites
- Docker: Make sure you have Docker installed on your machine. You can download and install Docker from the official website: [https://www.docker.com/](https://www.docker.com/)
## Installation
1. Clone this repository to your local machine:
```bash
git clone https://github.com/gpt-partners/devbox-jupyter.git
```
2. Navigate to the project directory:
```bash
cd devbox-jupyter
```
## Usage
To spin up the Docker container running Jupyter Notebook, follow these steps:
1. Build the Docker image using the provided Dockerfile:
```bash
docker build -t devbox-jupyter .
```
2. Start the Docker container using docker-compose:
```bash
docker-compose up
```
3. Once the container is up and running, you will see logs indicating the Jupyter Notebook server is running. It will display a URL with a token. Copy the URL and paste it into your web browser.
4. You will be redirected to the Jupyter Notebook interface in your browser. From here, you can create, edit, and run Jupyter notebooks.
5. To stop the Docker container, press `Ctrl + C` in the terminal where the container is running. This will gracefully stop the container and shut down the Jupyter Notebook server.
## Configuration
The Docker container is configured to mount the current directory as a volume inside the container. This allows you to access and modify files from your local machine within the Jupyter Notebook environment.
If you want to change the port on which the Jupyter Notebook server is running, you can modify the `docker-compose.yml` file. Look for the `ports` section under the `jupyter` service and update the port mapping as desired.
## Customization
If you need to install additional Python packages or libraries, you can modify the `Dockerfile` to include the necessary `pip` or `conda` commands. Add the required packages to the `requirements.txt` file or use the package manager of your choice.
You can also customize the Jupyter Notebook environment by modifying the `jupyter_notebook_config.py` file. This file allows you to configure various settings such as password authentication, default notebook directory, and more.
## Contributing
If you would like to contribute to this project, feel free to fork the repository and submit a pull request with your changes. Contributions are always welcome!
## License
This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the code as per the terms of the license.
