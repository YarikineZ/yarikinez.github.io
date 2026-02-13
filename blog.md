---
layout: default
title: Blog
---

# Blog

Thoughts on engineering leadership, architecture, AI, and building products.

<ul class="posts-list">
  {% for post in site.posts %}
  <li class="post-item">
    <h3 class="post-item-title">
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </h3>
    <div class="post-item-meta">
      {{ post.date | date: "%B %d, %Y" }}
      {% if post.reading_time %}
        · {{ post.reading_time }} min read
      {% endif %}
    </div>
    <p class="post-item-excerpt">{{ post.excerpt | strip_html | truncatewords: 40 }}</p>
  </li>
  {% endfor %}
</ul>

{% if site.posts.size == 0 %}
<p style="color: var(--color-text-secondary);">No posts yet. Check back soon.</p>
{% endif %}
