# Portfolio Website

유은지의 포트폴리오 웹사이트입니다.

## 기술 스택

- **Frontend**: SvelteKit, TypeScript, Tailwind CSS
- **Build Tool**: Vite
- **Deployment**: AWS EC2 + Nginx

## 로컬 개발

```bash
# 의존성 설치
npm install

# 개발 서버 실행
npm run dev

# 빌드
npm run build

# 프로덕션 미리보기
npm run preview
```

## AWS 배포

### 1. 빌드
```bash
npm run build
```

### 2. 파일 업로드
빌드된 파일들(`build/` 폴더)을 AWS 서버의 `/var/www/html/` 디렉토리로 업로드합니다.

### 3. AWS에서 nginx 설정
- nginx에서 `srdomain.org` 도메인 설정
- 정적 파일 서빙 설정
- SSL 인증서 설정 (선택사항)

## 프로젝트 구조

```
src/
├── lib/
│   ├── ProjectCard.svelte    # 프로젝트 카드 컴포넌트
│   └── assets/
├── routes/
│   ├── +layout.svelte       # 레이아웃
│   └── +page.svelte         # 메인 페이지
└── app.css                  # 글로벌 스타일
```

## 주요 기능

- 반응형 디자인
- 프로젝트 포트폴리오 표시
- 연락처 정보
- 기술 스택 소개
- 경력 사항
- 학력 및 자격증

## 라이센스

Private Repository