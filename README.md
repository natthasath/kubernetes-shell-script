# 🎉 Kubernetes

Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. It provides a robust framework for running distributed systems resiliently, ensuring efficient resource utilization and high availability.

![version](https://img.shields.io/badge/version-1.0-blue)
![rating](https://img.shields.io/badge/rating-★★★★★-yellow)
![uptime](https://img.shields.io/badge/uptime-100%25-brightgreen)

### ✅ Requirements

- [Kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)

### 🏆 Run

- [http://localhost:8000/](http://localhost:8000/) username : `admin` password : `admin`

```shell
kubectl create -f pod.yaml
```

### 🦄 Deploy Production

- Cache Config

```
php artisan config:cache
php artisan event:cache
php artisan route:cache
php artisan view:cache
```

- Build Package

```
npm run build
```

- Pull Code Server

```shell
git pull
```

- Check File Environment

```
cp .env.production .env
```

- Build Image

```
docker-compose up -d --build
```

### 📝 Notes

```
php artisan make:controller NameController
php artisan make:model Name
php artisan make:migration create_name_table
php artisan make:seeder NameSeeder
php artisan make:rule NameRule

php artisan about
php artisan config:show database
```

- Encrypt Env

```
php artisan env:encrypt --key=3UVsEgGVK36XN82KKeyLFMhvosbZN1aF
php artisan env:decrypt --key=3UVsEgGVK36XN82KKeyLFMhvosbZN1aF
```

- Clear Config

```
php artisan config:clear
php artisan event:clear
php artisan route:clear
php artisan view:clear
```

- Maintenance Mode

```
php artisan down --render="errors::503"
php artisan down --redirect=/
php artisan up
test
```
