# GitHub Pages 404 에러 해결 방법

## 1. GitHub 저장소 설정 확인

1. https://github.com/asdlf033/portfolio 로 이동
2. **Settings** 클릭
3. 왼쪽 메뉴에서 **Pages** 클릭
4. **Source** 섹션에서:
   - **Deploy from a branch** 선택 해제
   - **GitHub Actions** 선택
5. **Save** 클릭

## 2. GitHub Actions 확인

1. 저장소에서 **Actions** 탭 클릭
2. "Deploy to GitHub Pages" 워크플로우가 실행되었는지 확인
3. 실패했다면:
   - 빨간색 X 표시 클릭
   - 에러 메시지 확인
   - 필요시 다시 실행 (Re-run jobs)

## 3. 수동으로 배포 트리거

1. **Actions** 탭 클릭
2. 왼쪽에서 "Deploy to GitHub Pages" 선택
3. 오른쪽 상단 **Run workflow** 클릭
4. **Run workflow** 버튼 클릭

## 4. 배포 완료 확인

- 배포가 성공하면 초록색 체크 표시
- 약 1-2분 후 https://asdlf033.github.io/portfolio 접속

## 5. 여전히 404가 나면

### 방법 1: base path 제거 (루트 도메인 사용)

만약 `https://asdlf033.github.io` (포트폴리오 없이)로 접속하고 싶다면:

1. `svelte.config.js`에서 base path 제거:
```javascript
paths: {
    base: ''  // '/portfolio' 제거
}
```

2. `vite.config.ts`에서도 base 제거:
```typescript
base: ''  // '/portfolio' 제거
```

3. 저장소 이름을 `asdlf033.github.io`로 변경

### 방법 2: 빌드 확인

로컬에서 빌드 테스트:
```bash
npm install
npm run build
ls build/  # 파일이 생성되었는지 확인
```

## 6. 일반적인 문제들

- **빌드 실패**: package.json의 의존성 확인
- **경로 문제**: base path가 저장소 이름과 일치하는지 확인
- **권한 문제**: Settings → Actions → General → Workflow permissions에서 "Read and write permissions" 확인

