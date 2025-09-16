#!/bin/bash
echo "🚀 포트폴리오 배포 시작..."

# 프로젝트 빌드
npm run build

# 기존 파일 삭제
sudo rm -rf /var/www/html/*

# 빌드 파일 복사
sudo cp -r build/* /var/www/html/

# 권한 설정
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# nginx 재시작
sudo systemctl restart nginx

echo "✅ 배포 완료!"