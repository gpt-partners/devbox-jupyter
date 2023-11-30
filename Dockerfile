# Use the latest Python image as the base
FROM python:3.11
# Set the working directory inside the container
WORKDIR /root/app
# Install Jupyter Notebook
RUN pip install --upgrade pip
RUN pip install jupyter jupyter_ai openai langchain
# Expose the default Jupyter Notebook port
EXPOSE 8888
# Start Jupyter Notebook when the container is run
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
