#!/bin/bash
echo "🐳 Docker 포트폴리오 배포 시작..."

# Docker 이미지 빌드
docker build -t portfolio .

# 기존 컨테이너 중지 및 삭제
docker stop portfolio-container 2>/dev/null || true
docker rm portfolio-container 2>/dev/null || true

# 새 컨테이너 실행
docker run -d --name portfolio-container -p 80:80 portfolio

echo "✅ Docker 배포 완료!"
echo "🌐 http://localhost:80 에서 확인하세요"
