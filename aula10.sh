#!/bin/bash
docker run -d -p 5000:5000 --name registry registry:2

docker build -t sistema_aluno .

docker tag sistema_aluno localhost:5000/sistema_aluno

