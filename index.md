---
title: Ontology
layout: index
---
Log Entries
===========================================================================
{% for post in site.posts %}
- {{ post.date | date: "%b %-d, %Y" }}
  - [{{ post.title }}]("{{ post.url | prepend: site.baseurl }}")
{% endfor %}
<!--  <p>subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>-->

url
  : {root}/{{ site.url }}
