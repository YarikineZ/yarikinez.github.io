---
layout: default
---

<section class="hero">
  <h1>{{ site.author.name }}</h1>
  <div class="role">{{ site.author.role }}</div>
  <p class="tagline">{{ site.description }}</p>
</section>

<section class="section">
  <h2 class="section-title">About</h2>
  <div class="about-content">
    <p>
      I'm a CTO and engineering leader who started as a developer and never stopped coding. 
      My journey from writing Python and Dart to building mobile products taught me that 
      great engineering is about systems, not just features.
    </p>
    <p>
      Currently, I'm focused on building scalable mobile applications and AI-powered systems. 
      I believe in architecture-first approach, rapid PoC validation, and creating processes 
      that amplify team capabilities. My work spans from Kubernetes orchestration to LLM 
      pipelines, always seeking the elegant solution.
    </p>
    <p>
      Beyond code, I'm passionate about the intersection of AI and mobile development, 
      building products that solve real problems, and creating engineering cultures where 
      clarity beats chaos.
    </p>
  </div>
</section>

<section class="section">
  <h2 class="section-title">Tech Stack</h2>
  <div class="tech-stack">
    <div class="tech-item">Python</div>
    <div class="tech-item">Dart / Flutter</div>
    <div class="tech-item">Kubernetes</div>
    <div class="tech-item">OpenSearch</div>
    <div class="tech-item">Grafana</div>
    <div class="tech-item">Yandex Cloud</div>
    <div class="tech-item">Mobile Architecture</div>
    <div class="tech-item">LLM / AI Pipelines</div>
    <div class="tech-item">Jira / Confluence</div>
    <div class="tech-item">Figma</div>
  </div>
</section>

<section class="section">
  <h2 class="section-title">Principles</h2>
  <ul class="principles-list">
    <li>Architecture first</li>
    <li>Ship PoC early</li>
    <li>Systems over chaos</li>
    <li>Measure everything</li>
    <li>Teams > individuals</li>
  </ul>
</section>

<section class="section">
  <h2 class="section-title">Recent Writing</h2>
  <ul class="posts-list">
    {% for post in site.posts limit:3 %}
    <li class="post-item">
      <h3 class="post-item-title">
        <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      </h3>
      <div class="post-item-meta">
        {{ post.date | date: "%B %d, %Y" }}
      </div>
      <p class="post-item-excerpt">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
    </li>
    {% endfor %}
  </ul>
  <p style="margin-top: 2rem;">
    <a href="{{ '/blog' | relative_url }}">View all posts →</a>
  </p>
</section>

<section class="section">
  <h2 class="section-title">Connect</h2>
  <div class="contact-links">
    {% if site.author.telegram %}
      <a href="https://t.me/{{ site.author.telegram }}" class="contact-link" target="_blank" rel="noopener">Telegram</a>
    {% endif %}
    {% if site.author.email %}
      <a href="mailto:{{ site.author.email }}" class="contact-link">Email</a>
    {% endif %}
    {% if site.author.github %}
      <a href="https://github.com/{{ site.author.github }}" class="contact-link" target="_blank" rel="noopener">GitHub</a>
    {% endif %}
  </div>
</section>
