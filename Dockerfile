# Use the latest Python image as the base
FROM python:3.11

# Set the working directory inside the container
WORKDIR /root/app

# Install helper tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    tmux \
    zsh \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Install nvim
COPY ./install-nvim.sh /root/app
RUN chmod +x install-nvim.sh
RUN ./install-nvim.sh

# Install Jupyter Notebook
RUN pip install --upgrade pip
RUN pip install jupyter jupyter_ai ipykernel jupyterlab-code-formatter black isort voila jedi flake8 yapf ipywidgets jupyterlab_vim jupyterlab_sql theme-darcula openai langchain python-dotenv jupyterlab-lsp jupyter-lsp 'python-lsp-server[all]'
RUN python3 -m ipykernel install --user

# Copy dotfiles
COPY gitconfig /root/.gitconfig
COPY tmux.conf /root/.tmux.conf
COPY zshrc /root/.zshrc
COPY profile /root/.profile

# Expose the default Jupyter Notebook port
EXPOSE 8888
EXPOSE 8866

# Start Jupyter Notebook when the container is run
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
