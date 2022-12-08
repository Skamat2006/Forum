## **To run project forum via Docker file:**

  - Download & turn on the docker application on your local device<br>
  - Open **VS Code** terminal within the forum folder
  - In the terminal, run `docker build -t forum .`
  - then run `docker run -p 8080:8080 -it forum`
  - after above steps are completed, you should be able to access the forum at http://localhost:8080
  - Alternatively run `bash script.sh` in VS Code terminal and press `Y` when prompted.
  - To exit Docker type `exit` or press <ctrl-D> in VS Code terminal.
