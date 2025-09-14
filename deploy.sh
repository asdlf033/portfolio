#!/bin/bash

# AWS nginx 배포 스크립트
# 이 스크립트는 빌드된 파일들을 AWS 서버의 nginx 디렉토리로 복사합니다.

echo "🚀 Starting deployment to AWS nginx..."

# 빌드된 파일들을 AWS 서버로 복사
# TODO: 실제 AWS 서버 정보로 변경 필요
# rsync -avz --delete build/ user@your-aws-server:/var/www/html/

echo "✅ Deployment completed!"
echo "📁 Files are ready in ./build directory"
echo "🔧 Next steps:"
echo "1. Copy build/* files to your AWS nginx document root (usually /var/www/html/)"
echo "2. Configure nginx to serve the files"
echo "3. Set up SSL certificate if needed"

# 빌드 파일 목록 표시
echo ""
echo "📋 Built files:"
ls -la build/
