---
permalink:  /
excerpt:    "
  I am a biology researcher. I have worked primarily on species interactions (host-parasite and
  plant-insect interactions), population genetics, and phylogenetics. In my research, I have
  integrated molecular biology approaches, field and laboratory experiments, as well as microscopy and
  histological techniques."
---

{% for post in site.posts %}
  <p class="ic4f-blog-list-date">{{ post.date | date: '%B %e, %Y'}}</p>
  <p class="ic4f-blog-list-title"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></p>
  <p class="ic4f-blog-list-excerpt">{{ post.excerpt | strip_html | strip }}
  <a class="ic4f-blog-list-more" href="{{ post.url | relative_url }}">...read more</a></p>
{% endfor %}
