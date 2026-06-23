sudo update
sudo apt update
sudo apt install git -y
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
git clone https://github.com/Hieuduong2509/devOps_in_t1.git
cd web_app
ls
cd task1
cd devOps_in_t1
ls
cd web_app
docker-compose up -d --build
sudo docker-compose up -d --build
sudo docker compose up -d --build
sudo reboot
df -h
sudo reboot
df -h
sudo docker compose up -d --build
cd devOps_in_t1
cd web_app
sudo docker compose up -d --build
sudo reboot
ls
cd devOps_in_t1
cd web_app
docker compose up -d --build
sudo docker compose up -d --build
df -h
sudo growpart /dev/nvme0n1 1
lsblk
sudo reboot
cd devOps_in_t1/web_app
docker ps -a
sudo docker ps -a
cat nginx/nginx.config
lss
ls
cd nginx
ls
nano nginx.conf
cd ..
nano docker-compose.yml
sudo docker compose up -d --build
sudo apt update
sudo apt install certbot -y
sudo docker compose down
cd devOps_in_t1\
cd devOps_in_t1
cd web_app
sudo docker compose up -d -build
sudo docker compose up -d --build
docker ps
sudo docker ps
cd devOps_in_t1/web_app
sudo docker compose down
sudo apt update
sudo apt install certbot -y
sudo certbot certonly --standalone -d tenmiencuaban.com
sudo certbot certonly --standalone -d https://devoops.shop/
sudo certbot certonly --standalone -d devoops.shop
nano docker-compose.yml
ls
cd devOps_in_t1/web_app
nano docker-compose.yml
nano nginx/nginx.conf
sudo docker compose up -d
nano docker-compose.yml
nano nginx/nginx.conf
sudo docker compose down
sudo docker compose up -d
sudo docker compose down
sudo docker compose up -d --build
nano nginx/nginx.conf
nano docker-compose.yml
nano nginx/nginx.conf
sudo docker compose restart nginx
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
free -h
sudo docker compose restart
sudo docker logs promtail --tail 50
sudo docker compose restart loki promtail
nano docker-compose.yml
nano observability/tempo.yaml
sudo docker compose up -d
nano observability/tempo.yaml
nano docker-compose.yml
sudo docker compose up -d
sudo docker ps
opentelemetry-distro
opentelemetry-exporter-otlp
ls
cd observability
ls
cd ..
ls
cd node_api
ls
cd ..
sudo docker ps
cd ~/devOps_in_t1/web_app/node_api
nano requirements.txt
nano Dockerfile
cd ~/devOps_in_t1/web_app
nano docker-compose.yml
sudo docker compose up -d --build api
sudo docker logs my_nginx --tail 20
sudo docker ps -a
sudo docker compose restart nginx
sudo docker logs my_node_api --tail 50
nano node_api/main.py
nano docker-compose.yml
sudo docker compose up -d --build api
nano docker-compose.yml
sudo docker compose up -d --build api
sudo docker logs my_node_api --tail 50
nano node_api/Dockerfile
nano docker-compose.yml
sudo docker compose up -d --build api
sudo docker logs my_node_api --tail 100
: "2026-06-21T14:47:54.059179Z",
nano docker-compose.yml
sudo docker compose up -d --build api
sudo docker logs my_node_api --tail 100
nao docker-compose.yml
nano docker-compose.yml
nano node_api/main.py
INFO:     Started server process [1]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:3000 (Press CTRL+C to quit)
[INFO] GET request tới /api/jobs lúc 2026-06-21T14:54:14.427109Z
INFO:     172.18.0.2:46928 - "GET /api/jobs HTTP/1.1" 200 OK
[INFO] GET request tới /api/jobs lúc 2026-06-21T14:54:15.384450Z
INFO:     172.18.0.2:46938 - "GET /api/jobs HTTP/1.1" 200 OK
[INFO] GET request tới /api/jobs lúc 2026-06-21T14:54:16.115941Z
INFO:     172.18.0.2:46940 - "GET /api/jobs HTTP/1.1" 200 OK
[INFO] GET request tới /api/jobs lúc 2026-06-21T14:54:16.681269Z
INFO:     172.18.0.2:46950 - "GET /api/jobs HTTP/1.1" 200 OK
[INFO] GET request tới /api/jobs lúc 2026-06-21T14:54:17.067159Z
INFO:     172.18.0.2:46960 - "GET /api/jobs HTTP/1.1" 200 OK\
sudo docker logs tempo --tail 20
nano docker-compose.yml
sudo docker compose up -d --build api
sudo docker logs my_node_api --tail 50
opentelemetry
nano observability/tempo.yaml
nano docker-compose.yml
sudo docker compose restart tempo && sudo docker compose up -d --build api
nano docker-compose.yml
nano observability/tempo.yaml
nano docker-compose.yml
# 1. Thêm khóa GPG bảo mật của K6
sudo gpg --no-default-keyring --keyring /usr/share/keyrings/k6-archivekeyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69
# 2. Thêm K6 vào danh sách nguồn tải APT
echo "deb [signed-by=/usr/share/keyrings/k6-archivekeyring.gpg] https://dl.k6.io/deb stable main" | sudo tee /etc/apt/sources.list.d/k6.list
# 3. Cập nhật lại danh sách gói và cài đặt K6
sudo apt-get update
sudo apt-get install k6
k6 version
sudo rm -f /usr/share/keyrings/k6-archivekeyring.gpg
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC5AD17C747E3415A3642D57D77C6C491D6AC1D69" | sudo gpg --dearmor -o /usr/share/keyrings/k6-archivekeyring.gpg
sudo chmod 644 /usr/share/keyrings/k6-archivekeyring.gpg
sudo apt-get update
sudo apt-get install -y k6
nano load_test.js
k6 run load_test.js
nano docker-compose
nano docker-compose.yml
ls
cd devOps_in_t1/web_app
cat node_api/main.py
cat Dockerfile
cat node_api/Dockerfile
ls
cat/observability/requirement.txt
cd /observability
cd observability
ls
cd ..
cd nginx
ls
cd .
cd ..
cd node_api 
ls
cat requirement.txt
cat requirements.txt
git add .
git init
git status
git -v
git remote -v
git remote add https://github.com/Hieuduong2509/devOps_in_t1.git
git remote add origin https://github.com/Hieuduong2509/devOps_in_t1.git
git add .
cd ~/devOps_in_t1
git status
git add .
git commit -m "F2"
git push origin main
Hieuduong2509
git push origin main
cleaar
clear
sudo docker compose up -d --build
cd web_app
sudo docker compose up -d --build
sudo docker compose down
curl -sfL https://get.k3s.io | sh -
sudo kubernetcl get pods
sudo kubectl  get pod
sudo kubectl get nodes
nano api-deploy.yaml
sudo kubectl apply -f api-deploy.yaml
sudo kubectl get pods
docker ps
sudo docker ps
sudo kubectl get pods -A
sudo git clone https://github.com/kubernetes/kube-state-metrics.git
sudo kubectl apply -k kube-state-metrics/examples/standard
nano prometheus.yml
ls
nano observability/prometheus.yml
sudo docker compose restart prometheus
sudo docker compose up -d --build
sudo docker ps
sudo kubectl get pods -A
sudo docker compose up -d --remove-orphans
nano observability/prometheus.yml
ls
nano api-deploy.yaml
sudo kubectl apply -f api-deploy.yaml
nano api-deploy.yaml
sudo docker compose down
sudo systemctl restart k3s
sudo kubectl apply -f api-deploy.yaml
sudo kubectl get pods
sudo docker save devops_in_t1-api:latest -o api-image.tar
sudo docker save web_app-api:latest -o api-image.tar
sudo k3s ctr images import api-image.tar
nano api-deploy.yaml
sudo docker save web_app-api:latest -o api-image.tar
sudo k3s ctr images import api-image.tar
sudo kubectl apply -f api-deploy.yaml
sudo docker compose up -d my_nginx prometheus grafana
sudo docker compose up -d nginx prometheus grafana
sudo kubectl -v
sudo kubectl get pods
curl -sfL https://get.k3s.io | sh -s - --disable traefik
git clone [200~https://github.com/Hieuduong2509/devOps_in_t1.git~
git clone https://github.com/Hieuduong2509/devOps_in_t1.git
cd devOps_in_t1
cd web_app
sudo docker build -t web_app-api:latest .
sudo docker save web_app-api:latest -o api-image.tar
cd node_api
sudo docker build -t web_app-api:latest .
sudo docker save web_app-api:latest -o api-image.tar
sudo k3s ctr images import api-image.tar
sudo kubectl apply -f api-deploy.yaml
cd ..
sudo kubectl apply -f api-deploy.yaml
sudo kubectl get pods
curl -I http://localhost:30000/api/jobs
sudo git clone https://github.com/kubernetes/kube-state-metrics.git
sudo kubectl apply -k kube-state-metrics/examples/standard
sudo kubectl patch svc kube-state-metrics -n kube-system -p '{"spec": {"type": "NodePort", "ports": [{"port": 8080, "nodePort": 31080}]}}'
sudo docker compose restart prometheus
nano observability/prometheus.yml
sudo kubectl patch svc kube-state-metrics -n kube-system -p '{"spec": {"type": "NodePort", "ports": [{"port": 8080, "nodePort": 31080}]}}'
curl -sfL https://get.k3s.io | sh -s - --disable traefik
sudo systemctl restart k3s
sudo lsof -i :80
sudo docker compose restart my_nginx
ls
cd devOps_in_t1/web_app
sudo docker compose restart my_nginx
sudo docker compose restart mnginx
sudo docker compose restart nginx
sudo docker compose up -d --build
sudo docker ps
sudo kubectl get pods
git add .
sudo docker ps -a
git add .
sudo /usr/local/bin/k3s-uninstall.sh
free -h
sudo docker compose up -d my_nginx prometheus grafana --remove-orphans
sudo docker compose up -d nginx prometheus grafana --remove-orphans
sudo docker comnpose up -d --build
sudo docker compose up -d --build
sudo systemctl restart docker
sudo docker compose up -d nginx prometheus grafana --remove-orphans
sudo docker  logs nginx
sudo docker logs nginx
sudo docker logs my_nginx
sudo docker compose down
curl -vI https://devoops.shop 2>&1 | grep "issuer"
curl -vI https://devoops.shop
sudo systemctl restart docker
sudo docker compose up -d --force-recreate my_nginx prometheus grafana
sudo docker compose up -d --force-recreate nginx prometheus grafana
curl -vI https://devoops.shop
clear
sudo docker down
sudo docker compose down
sudo docker compose up -d --build
sudo docker ps -a | grep prometheus
sudo docker logs prometheus
nano docker-compose.yml
nano api-deploy.yml
ls
nano api-deploy.yaml
sudo nano prometheus.yml
sudo nano observability/prometheus.yml
sudo docker compose restart prometheus
sudo docker ps | grep prometheus
sudo docker compose down
nano observability/prometheus.yml
sudo docker compose restart prometheus
nano observability/prometheus.yml
sudo docker compose up -d --build
sudo docker ps -a | grep grafana
sudo docker compose start grafana
sudo /usr/local/bin/k3s-uninstall.sh
sudo systemctl restart docker
sudo docker compose up -d my_nginx prometheus grafana --remove-orphans
sudo docker compose up -d --build
nano nginx/nginx.còn
nano nginx/nginx.conf
sudo nano prometheus.yml
sudo nano observability/prometheus.yml
sudo docker compose restart my_nginx prometheus
sudo docker compose restart nginx prometheus
cd devOps_in_t1
cd web_app
sudo docker compose restart prometheus
curl http://54.158.45.50:31080/metrics
sudo docker compose up -d -build
sudo docker compose up -d --build
curl http://localhost:9090/api/v1/targets
nano observability/prometheus.yml
sudo docker compose up -d --build
nc -zv 50.19.98.81 31080
cd devOps_in_t1
cd web_app
sudo docker compose up -d --build
nano observability/prometheus.ym;
nano observability/prometheus.yml
sudo docker restart prometheus
sudo docker compose up -d --build
sudo nano prometheus.yml
nano observability/prometheus.yml
sudo docker compose up -d --build
nano docker-compose.yml
nano observability/prometheus.yml
curl http://50.19.98.81:9100/metrics
sudo nano obervability/prometheus
sudo nano obervability/prometheus.yml
sudo nano observability/prometheus.yml
sudo nano observability\prometheus.yml
cd devOps_in_t1/web_app
sudo nano observability\prometheus.yml
cd observability
ls
nano prometheuse.yml
exit
sudo docker compose up
cd devOps_in_t1/web_app
sudo docker compose up
nano prometheus.yml
exit
