---
title:      Research Projects
permalink:  /research/
---

{% assign projects = site.pages | where:"type","project" | sort:"order" %}
{% for pr in projects %}
  <hr>
  <div class="media">
    <a href="{{ pr.permalink | relative_url }}">
      <img class="ic4f-thumb ic4f-list-img" src="{{ site.baseurl }}/assets/content/projects/{{ pr.project_id }}/thumb.jpg" alt="{{ pr.project_id }}">
    </a>
    <div class="media-body">
      <h2><a href="{{ pr.permalink | relative_url }}">{{ pr.title }}</a></h2>
      {{ pr.excerpt }}..
      <a class="ic4f-nowrap" href="{{ pr.permalink | relative_url }}">
        <i class="material-icons md-18">exit_to_app</i><span class="ic4f-download">go to project page</span></a>
    </div>
  </div>
{% endfor %}
