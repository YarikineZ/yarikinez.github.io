---
layout: default
---

<div class="terminal">

<div class="term-hero">
<pre class="ascii-logo">
 ____    ____  _____  ___   ____    ___   __ __     _____  __ __  ____  
|    \  /    |/ ___/ /   \ |    \  /   \ |  |  |   |     ||  |  ||    \ 
|  _  ||  o  (   \_ |     ||  _  ||     ||  |  |   |   __||  |  ||  _  |
|  |  ||     |\__  ||  O  ||  |  ||  O  ||  |  |   |  |_  |  |  ||  |  |
|  |  ||  _  |/  \ ||     ||  |  ||     ||  :  |__ |   _] |  :  ||  |  |
|  |  ||  |  |\    ||     ||  |  ||     | \   /|  ||  |   |     ||  |  |
|__|__||__|__| \___| \___/ |__|__| \___/   \_/ |__||__|    \__,_||__|__|
                                               
</pre>
<div class="term-line"><span class="term-prompt">~$</span> <span class="term-cmd">whoami</span></div>
<div class="term-output">Ярослав Насонов — Product Engineer</div>
</div>

<div class="term-block">
<div class="term-line"><span class="term-prompt">~$</span> <span class="term-cmd">cat stats.txt</span></div>
<div class="term-output">
<div><span class="term-key">experience:</span>  8+ лет</div>
<div><span class="term-key">projects:</span>    20+</div>
<div><span class="term-key">focus:</span>       mobile · AI · architecture · teams</div>
</div>
</div>

<div class="term-block">
<div class="term-line"><span class="term-prompt">~$</span> <span class="term-cmd">cat README.md</span></div>
<div class="term-output">
Технический лидер с опытом построения B2C и B2B digital-продуктов.
Развиваю инженерные команды и внедряю современные практики.
Эксперт в архитектуре, интеграциях и автоматизации процессов.
Запускаю AI-функции и масштабирую решения.
Ментор стартапов, умею выстраивать эффективные процессы.
</div>
</div>

<div class="term-block">
<div class="term-line"><span class="term-prompt">~$</span> <span class="term-cmd">ls ./projects/</span></div>
<div class="term-output">
<div class="term-project">
<span class="term-key"><a href="https://clatch.app" target="_blank" rel="noopener">clatch.app</a></span>  <span class="term-dim">— CTO · мобильное wellness-приложение · 1.5 млн MAU</span>
<div class="term-project-detail">
  · календарь цикла и прогнозирование овуляции<br>
  · дневник самочувствия и симптомов<br>
  · аналитика состояния и персонализированные рекомендации<br>
  · возможность делиться данными с близкими<br>
  · образовательный контент о женском здоровье
</div>
</div>
<div class="term-project">
<span class="term-key"><a href="https://woolbox.app" target="_blank" rel="noopener">woolbox.app</a></span>  <span class="term-dim">— CTO · мобильное приложение с мастер-классами по вязанию</span>
<div class="term-project-detail">
  · видео-уроки и пошаговые мастер-классы<br>
  · контент для начинающих и продвинутых пользователей<br>
  · каталог узоров, схем и идей<br>
  · учёт пряжи и материалов<br>
  · формирование вовлечённого комьюнити вокруг хобби
</div>
</div>
<div class="term-project">
<span class="term-key"><a href="https://partners.mts.ru" target="_blank" rel="noopener">partners.mts.ru</a></span>  <span class="term-dim">— TECH PM · B2B self-service платформа</span>
<div class="term-project-detail">
  · заключение договоров и онбординг партнёров<br>
  · управление доступами и аккаунтами<br>
  · портал разработчика с документацией<br>
  · подключение и интеграция API сервисов<br>
  · поддержка технических интеграций и масштабируемой экосистемы
</div>
</div>
<div class="term-project">
<span class="term-key"><a href="https://fasttrack.sk.ru" target="_blank" rel="noopener">fasttrack.sk.ru</a></span>  <span class="term-dim">— ментор стартапов · Сколково</span>
<div class="term-project-detail">
  · помог более 30 компаниям переупаковаться и получить статус резидента Сколково
</div>
</div>
</div>
</div>

{% comment %}
{% if site.posts.size > 0 %}
<div class="term-block">
<div class="term-line"><span class="term-prompt">~$</span> <span class="term-cmd">ls ./blog/ | head -3</span></div>
<div class="term-output">
{% for post in site.posts limit:3 %}
<div class="term-post">
  <a href="{{ post.url | relative_url }}" class="term-post-title">{{ post.title }}</a>
  <span class="term-dim">  {{ post.date | date: "%Y-%m-%d" }}</span>
</div>
{% endfor %}
<div class="term-more"><a href="{{ '/blog' | relative_url }}">→ все записи</a></div>
</div>
</div>
{% endif %}
{% endcomment %}

<div class="term-block">
<div class="term-line"><span class="term-prompt">~$</span> <span class="term-cmd">cat contacts.txt</span></div>
<div class="term-output">
{% if site.author.telegram %}<div class="term-contact"><span class="term-prompt">&gt;</span> telegram: <a href="https://t.me/{{ site.author.telegram }}" target="_blank" rel="noopener">https://t.me/{{ site.author.telegram }}</a></div>{% endif %}
{% if site.author.github %}<div class="term-contact"><span class="term-prompt">&gt;</span> github:   <a href="https://github.com/{{ site.author.github }}" target="_blank" rel="noopener">https://github.com/{{ site.author.github }}</a></div>{% endif %}
{% if site.author.email %}<div class="term-contact"><span class="term-prompt">&gt;</span> email:    <a href="mailto:{{ site.author.email }}">{{ site.author.email }}</a></div>{% endif %}
</div>
</div>

<div class="term-cursor-line"><span class="term-prompt">~$</span> <span class="term-cursor">▌</span></div>

</div>
