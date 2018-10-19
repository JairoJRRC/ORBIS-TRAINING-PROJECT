# Construir imagen de docker
```
docker build -t jairo1997/orbis-training-docker:0.1.0 .
```
# Push imagen a dockerhub
```
docker push jairo1997/orbis-training-docker:0.1.0
```
# Cambiar version del tag
```
docker tag jairo1997/orbis-training-docker:0.1.0 jairo1997/orbis-training-docker:0.2.0
```
# Correr la imagen

El primer puerto es el de nuestra máquina y el segundo puerto es el que expone el contenedor

```
docker run -it --rm -p 1080:80 jairo1997/orbis-training-docker:1.0.0
```

# Build con docker-compose
```
docker-compose build
```

# Run con docker-compose
```
docker-compose up
```

# Volumear container
```
docker run -it --rm --volume $PWD:/app jairo1997/orbis-training-docker:2.0.0 npm install
```

# Exponer puertos
```
docker run -it --rm -p 3030:1042 --volume $PWD:/app jairo1997/orbis-training-docker:2.0.0 npm start
```

# Ejecutar release
```
docker run -it --rm -p 3030:1042 --volume $PWD:/app jairo1997/orbis-training-docker:2.0.0 npm run release
```

# Conseguir network
```
docker inspect d1cc9c0441d5
```

# Conseguir IP del container
 - Bajo Networks

```
docker inspect d1cc9c0441d5 | grep "IPAddress"
```

# Ejecutar comando curl
```
docker run --network=orbis-training-project_default -it --rm node:10.10.0-slim curl http://172.24.0.2:1042
```

# Ejecutar archivo example.sh
```
docker run -it --entrypoint=/app/resources/example.sh --rm  --volume $PWD:/app jairo1997/orbis-training-docker:2.0.0
```

# Ejecutar archivo example.sh con una variable de entorno
```
 docker run -it --entrypoint=/app/resources/example.sh --rm --volume $PWD:/app -e NAME='Harry Potter' jairo1997/orbis-training-docker:2.0.0
 ```

