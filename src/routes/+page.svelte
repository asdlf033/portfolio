<script>
  import ProjectCard from '$lib/ProjectCard.svelte';

  function scrollToTop() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  }

  const projects = [
    {
      title: '헬스케어 통합 관리 플랫폼',
      summary: '종합 건강관리 애플리케이션. 안드로이드 플랫폼 개발, 헬스커넥트 연동을 통한 생체 데이터 수집 및 분석, 실시간 건강 모니터링 및 개인화된 운동/영양 추천 시스템을 제공합니다.',
      stack: ['Kotlin', 'Swift', 'Java', 'Spring Boot', 'AWS', 'Health Connect', 'Firebase'],
      links: { repo:'https://github.com/tlzbfl001/HealthCareApp' }
    },
    {
      title: 'IoT 센서 기반 상태관리 시스템',
      summary: 'ESP32 센서 데이터 기반 실시간 모니터링 애플리케이션. Composable 아키텍처를 활용한 모듈화된 UI, 실시간 센서 데이터 수집 및 분석, API 연동을 통한 원격 상태 관리 및 알림 시스템을 구현했습니다.',
      stack: ['Kotlin', 'Composable', 'Jetpack Compose', 'ESP32', 'REST API', 'WebSocket', 'SQLite'],
      links: { repo:'https://github.com/tlzbfl001/MonitoringApp' }
    },
    {
      title: 'RAG 기반 회의 분석 시스템',
      summary: '회의 자료를 업로드하면 요약, 키워드, 발언 비중, 감성 등 핵심 정보를 분석하는 웹 애플리케이션. TXT/DOC/MP3/WAV/MP4 파일 지원, 비동기 처리, 히스토리 관리 및 회의록 다운로드 기능을 제공합니다.',
      stack: ['SvelteKit', 'Node.js', 'Express', 'Ollama', 'OpenAI Whisper', 'JavaScript', 'CSS'],
      links: { repo:'https://github.com/tlzbfl001/RagMeetingAnalyzer', demo:'https://srdomain.org/rag-system/' }
    }
  ];

  const skills = {
    mobile: ['Kotlin', 'Swift', 'React Native', 'Flutter', 'Jetpack Compose', 'Health Connect'],
    backend: ['Java', 'Spring Boot', 'Node.js', 'Express', 'FastAPI'],
    frontend: ['React', 'Svelte', 'TypeScript', 'JavaScript'],
    cloud: ['AWS', 'Firebase', 'Docker', 'Jenkins', 'GitHub Actions'],
    database: ['PostgreSQL', 'MySQL', 'SQLite', 'Redis', 'MongoDB'],
    iot: ['ESP32', 'REST API', 'WebSocket'],
    ai: ['LLM','Ollama', 'OpenAI Whisper', 'RAG']
  };

  const experience = [
    {
      role: '모바일 앱 개발자',
      company: '텔트론',
      period: '2025.05.12 - 2025.09.12',
      description: 'ESP32 센서 기반 IoT 모니터링 애플리케이션 개발. Composable 아키텍처를 활용한 안드로이드 앱 개발, 실시간 센서 데이터 처리 및 상태 관리 시스템 구현.'
    },
    {
      role: '풀스택 개발자',
      company: '바디웰',
      period: '2022.09.19 - 2025.05.08',
      description: '헬스케어 통합 플랫폼 개발. 안드로이드/iOS 크로스 플랫폼 개발, 웹 관리 시스템, 서버 개발, 헬스커넥트 연동 및 생체 데이터 분석 시스템 구축.'
    },
    {
      role: '디자인/인쇄 담당',
      company: '거산광고인쇄',
      period: '2018.08 - 2020.12',
      description: '광고 디자인 및 인쇄 업무 담당. 로고 디자인, 인쇄 품질 관리 및 고객 서비스 제공.'
    }
  ];

  const education = [
    {
      degree: '컴퓨터공학 학사',
      school: '서원대학교',
      period: '2019.03 - 2023.02 (편입)'
    }
  ];

  const certificates = [
    {
      name: '자동차운전면허',
      issuer: '경찰청',
      year: '2018.08'
    },
    {
      name: '컴퓨터그래픽스운용기능사',
      issuer: '한국산업인력공단',
      year: '2018'
    },
    {
      name: 'ITQ 자격증',
      issuer: '한국생산성본부',
      year: '2019'
    },
    {
      name: '그래픽기술자격 일러스트 1급',
      issuer: '한국생산성본부',
      year: '2019'
    }
  ];
</script>

<div class="min-h-screen bg-gray-50 text-gray-900">
  <!-- 네비게이션 -->
  <nav class="fixed top-0 w-full bg-white/95 backdrop-blur-sm z-50 border-b border-gray-100">
    <div class="max-w-4xl mx-auto px-6 py-4">
      <div class="flex justify-center items-center">
        <div class="hidden md:flex space-x-8">
          <a href="#about" class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium">About</a>
          <a href="#projects" class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium">Projects</a>
          <a href="#experience" class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium">Experience</a>
          <a href="#contact" class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium">Contact</a>
        </div>
        <div class="flex items-center space-x-4">
          <button class="md:hidden text-gray-600 hover:text-gray-900 transition-colors">
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
            </svg>
          </button>
        </div>
      </div>
    </div>
  </nav>

  <section class="max-w-4xl mx-auto px-6 pt-20 pb-12">
    <!-- 프로필 섹션 -->
    <section id="about" class="mb-10">
      <div class="bg-white rounded-2xl p-8 shadow-sm border border-gray-100">
        <div class="flex flex-col md:flex-row items-start md:items-center gap-8">
          <div class="flex-1">
            <p class="text-2xl font-bold text-gray-900 mb-2">유은지</p>
            <p class="text-lg text-gray-600 mb-4">풀스택 개발자</p>
            <p class="text-gray-700 leading-relaxed mb-6">
              프론트엔드부터 백엔드까지 전체 스택을 다루는 풀스택 개발자입니다.<br>
              사용자 경험(UX)을 최우선으로 하며, 최신 기술 트렌드를 활용하여 혁신적인 웹 서비스와 모바일 애플리케이션을 개발합니다.
            </p>
            <div class="flex items-center gap-6">
              <div class="flex items-center gap-3">
                <div class="w-5.5 h-5.5 bg-white border border-emerald-200 rounded-full flex items-center justify-center">
                  <svg class="w-3.5 h-3.5 text-emerald-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 4.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                  </svg>
                </div>
                <a href="mailto:yej431@gmail.com" class="text-gray-400 hover:text-gray-600 transition-colors">
                  yej431@gmail.com
                </a>
              </div>
              <div class="flex items-center gap-3">
                <div class="w-5.5 h-5.5 bg-white border border-emerald-200 rounded-full flex items-center justify-center">
                  <svg class="w-3.5 h-3.5 text-emerald-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
                  </svg>
                </div>
                <a href="tel:+821012345678" class="text-gray-400 hover:text-gray-600 transition-colors">
                  010-3371-5287
                </a>
              </div>
            </div>
          </div>
          <div class="grid grid-cols-2 gap-4 text-sm">
            <div class="bg-gray-50 rounded-lg p-4">
              <div class="text-gray-500 mb-1">생년월일</div>
              <div class="font-medium">1992년생</div>
            </div>
            <div class="bg-gray-50 rounded-lg p-4">
              <div class="text-gray-500 mb-1">경력</div>
              <div class="font-medium">3년+</div>
            </div>
            <div class="bg-gray-50 rounded-lg p-4">
              <div class="text-gray-500 mb-1">개발 언어</div>
              <div class="font-medium">8개+</div>
            </div>
            <div class="bg-gray-50 rounded-lg p-4">
              <div class="text-gray-500 mb-1">프로젝트</div>
              <div class="font-medium">10개+</div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 프로젝트 섹션 -->
    <section id="projects" class="mb-10">
      <h2 class="text-2xl font-bold text-gray-900 mb-3 ml-2">프로젝트</h2>
      <div class="space-y-4">
        {#each projects as p}
          <ProjectCard {...p}/>
        {/each}
      </div>
    </section>

    <!-- 기술 스택 섹션 -->
    <section id="skills" class="mb-10">
      <h2 class="text-2xl font-bold text-gray-900 mb-3 ml-2">기술 스택</h2>
      <div class="bg-white rounded-2xl p-8 shadow-sm border border-gray-100">
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div>
            <h3 class="font-semibold mb-4 text-gray-900">Mobile Development</h3>
            <div class="flex flex-wrap gap-2">
              {#each skills.mobile as skill}
                <span class="px-3 py-1 bg-gray-100 text-gray-700 text-sm rounded-full">
                  {skill}
                </span>
              {/each}
            </div>
          </div>
          <div>
            <h3 class="font-semibold mb-4 text-gray-900">Backend</h3>
            <div class="flex flex-wrap gap-2">
              {#each skills.backend as skill}
                <span class="px-3 py-1 bg-gray-100 text-gray-700 text-sm rounded-full">
                  {skill}
                </span>
              {/each}
            </div>
          </div>
          <div>
            <h3 class="font-semibold mb-4 text-gray-900">Frontend</h3>
            <div class="flex flex-wrap gap-2">
              {#each skills.frontend as skill}
                <span class="px-3 py-1 bg-gray-100 text-gray-700 text-sm rounded-full">
                  {skill}
                </span>
              {/each}
            </div>
          </div>
          <div>
            <h3 class="font-semibold mb-4 text-gray-900">Cloud & DevOps</h3>
            <div class="flex flex-wrap gap-2">
              {#each skills.cloud as skill}
                <span class="px-3 py-1 bg-gray-100 text-gray-700 text-sm rounded-full">
                  {skill}
                </span>
              {/each}
            </div>
          </div>
          <div>
            <h3 class="font-semibold mb-4 text-gray-900">Database</h3>
            <div class="flex flex-wrap gap-2">
              {#each skills.database as skill}
                <span class="px-3 py-1 bg-gray-100 text-gray-700 text-sm rounded-full">
                  {skill}
                </span>
              {/each}
            </div>
          </div>
          <div>
            <h3 class="font-semibold mb-4 text-gray-900">IoT & Hardware</h3>
            <div class="flex flex-wrap gap-2">
              {#each skills.iot as skill}
                <span class="px-3 py-1 bg-gray-100 text-gray-700 text-sm rounded-full">
                  {skill}
                </span>
              {/each}
            </div>
          </div>
          <div>
            <h3 class="font-semibold mb-4 text-gray-900">AI & Machine Learning</h3>
            <div class="flex flex-wrap gap-2">
              {#each skills.ai as skill}
                <span class="px-3 py-1 bg-gray-100 text-gray-700 text-sm rounded-full">
                  {skill}
                </span>
              {/each}
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 경력 섹션 -->
    <section id="experience" class="mb-10">
      <h2 class="text-2xl font-bold text-gray-900 mb-3 ml-2">경력</h2>
      <div class="space-y-4">
        {#each experience as exp}
          <div class="bg-white rounded-2xl p-6 shadow-sm border border-gray-100">
            <div class="flex justify-between items-start mb-2">
              <div>
                <h3 class="font-semibold text-lg text-gray-900">{exp.company}</h3>
                <p class="text-gray-600 font-medium text-base">{exp.role}</p>
              </div>
              <span class="text-gray-500 text-sm bg-gray-50 px-3 py-1 rounded-full">{exp.period}</span>
            </div>
            <p class="text-gray-700 leading-relaxed text-sm">{exp.description}</p>
          </div>
        {/each}
      </div>
    </section>

    <!-- 학력 섹션 -->
    <section id="education" class="mb-10">
      <h2 class="text-2xl font-bold text-gray-900 mb-3 ml-2">학력</h2>
      <div class="bg-white rounded-2xl p-6 shadow-sm border border-gray-100">
        {#each education as edu}
          <div class="flex justify-between items-start">
            <div>
              <h3 class="font-semibold text-lg text-gray-900 mb-1">{edu.degree}</h3>
              <p class="text-gray-600 font-medium">{edu.school}</p>
            </div>
            <span class="text-gray-500 text-sm bg-gray-50 px-3 py-1 rounded-full">{edu.period}</span>
          </div>
        {/each}
      </div>
    </section>

    <!-- 자격증 섹션 -->
    <section id="certificates" class="mb-10">
      <h2 class="text-2xl font-bold text-gray-900 mb-3 ml-2">자격증</h2>
      <div class="grid md:grid-cols-3 gap-4">
        {#each certificates as cert}
          <div class="bg-white rounded-2xl p-5 shadow-sm border border-gray-100 text-center">
            <h3 class="font-semibold text-gray-900 mb-2">{cert.name}</h3>
            <p class="text-gray-600 text-sm mb-1">{cert.issuer}</p>
            <p class="text-gray-500 text-sm">{cert.year}</p>
          </div>
        {/each}
      </div>
    </section>

  </section>

  <!-- 맨 위로 이동 버튼 -->
  <button 
    on:click={scrollToTop}
    class="fixed bottom-8 right-8 w-10 h-10 bg-gray-900 text-white rounded-full shadow-lg hover:bg-gray-800 transition-all duration-300 z-50 flex items-center justify-center"
    aria-label="맨 위로 이동"
  >
    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 10l7-7m0 0l7 7m-7-7v18"></path>
    </svg>
  </button>
</div>
