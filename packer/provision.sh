sudo mkdir -p /opt/your-app
sudo cp /home/csye6225/your-app.jar /opt/your-app/
sudo chown -R csye6225:csye6225 /opt/your-app
sudo yum install -y java-17-openjdk
curl -sSO https://dl.google.com/cloudagents/add-google-cloud-ops-agent-repo.sh
sudo bash add-google-cloud-ops-agent-repo.sh --also-install

sudo cp /tmp/your-app.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable your-app.service

