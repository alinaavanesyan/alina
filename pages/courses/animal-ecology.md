---
title:      Animal Ecology
permalink:  /courses/animal-ecology/
menu:       /teaching/
excerpt:    "
  Animal Ecology was one of the courses that I developed and taught as an instructor, and then docent,
  at Herzen State University during 2003-2009. It was also one of my favorites courses."
---

Animal Ecology was one of the courses that I developed and taught as an instructor, and then docent,
at Herzen State University during 2003-2009. It was also one of my favorites courses. The course
included lectures and discussion sessions, as well as term projects, city tours, and field trips.

{% assign path="/assets/content/courses/animalecology/" %}

## Lectures

Here are some examples of lecture slides, that cover the basics of animal life in populations:
spatial structure, hierarchy and communication, age structure and sex ratio, dynamics and ecological
strategies:

<div class="row mt-4 mb-4">
  <div class="col-12 col-md col-sm-6">
    <figure class="figure mb-0">
    <a href="{{ site.baseurl }}{{ path }}lecture1.pdf">
    <img class="ic4f-thumb figure-img img-fluid" src="{{ site.baseurl }}{{ path }}lecture1.jpg" alt=""></a>
      <figcaption class="figure-caption text-left"><strong>Topic:</strong> Spatial structure</figcaption>
    </figure>
  </div>
  <div class="col-12 col-md col-sm-6">
    <figure class="figure mb-0">
    <a href="{{ site.baseurl }}{{ path }}lecture2.pdf">
      <img class="ic4f-thumb figure-img img-fluid" src="{{ site.baseurl }}{{ path }}lecture2.jpg" alt=""></a>
      <figcaption class="figure-caption text-left"><strong>Topic:</strong> Hierarchy and communication</figcaption>
    </figure>
  </div>
  <div class="col-12 col-md col-sm-6">
    <figure class="figure mb-0">
    <a href="{{ site.baseurl }}{{ path }}lecture3.pdf">
      <img class="ic4f-thumb figure-img img-fluid" src="{{ site.baseurl }}{{ path }}lecture3.jpg" alt=""></a>
      <figcaption class="figure-caption text-left"><strong>Topic:</strong> Age structure and sex ratio</figcaption>
    </figure>
  </div>
  <div class="col-12 col-md col-sm-6">
    <figure class="figure mb-0">
    <a href="{{ site.baseurl }}{{ path }}lecture4.pdf">
      <img class="ic4f-thumb figure-img img-fluid" src="{{ site.baseurl }}{{ path }}lecture4.jpg" alt=""></a>
      <figcaption class="figure-caption text-left"><strong>Topic:</strong> Dynamics and ecological strategies</figcaption>
    </figure>
  </div>
</div>


## Students Term Projects

At the beginning of the semester the students were divided into groups of 4-5 people. Each group was
supposed to choose any organization/facility/attraction in the city that is related to animals
(museum exponents or living animals). The most popular places were the <a
href="http://www.saint-petersburg.com/parks/leningrad-zoo/">Leningrad zoo</a>, <a
href="http://www.zin.ru/museum/">Zoological Museum of the Zoological Institute of the Russian
Academy of Sciences</a>, <a href="http://www.dolphinarium.ru/">dolphinarium</a>, and <a
href="http://www.planeta-neptun.ru/ocean/?lang=eng&">aquarium</a>.  Students were supposed to visit
the chosen place and do some research about the purpose of this facility, its history, its work, the
animal species it contains, etc. In the end of the presentation students shared their opinion about
the conditions for animals (if there were living animals). As Herzen university focused mostly on
preparing future school teachers and college professors, the purpose of these projects was to help
students get familiar with the educational and research facilities in St. Petersburg which they can
use in their future teaching work. Here are four examples of students’ final presentations:

<div class="row mt-4 mb-4">
  <div class="col-12 col-md col-sm-6">
    <figure class="figure mb-0">
    <a href="{{ site.baseurl }}{{ path }}project1.pdf">
      <img class="ic4f-thumb figure-img img-fluid" src="{{ site.baseurl }}{{ path }}project1.jpg" alt=""></a>
      <figcaption class="figure-caption text-left"><strong>Project:</strong> Dolphinarium</figcaption>
    </figure>
  </div>
  <div class="col-12 col-md col-sm-6">
    <figure class="figure mb-0">
    <a href="{{ site.baseurl }}{{ path }}project2.pdf">
      <img class="ic4f-thumb figure-img img-fluid" src="{{ site.baseurl }}{{ path }}project2.jpg" alt=""></a>
      <figcaption class="figure-caption text-left"><strong>Project:</strong> Zoo</figcaption>
    </figure>
  </div>
  <div class="col-12 col-md col-sm-6">
    <figure class="figure mb-0">
    <a href="{{ site.baseurl }}{{ path }}project3.pdf">
      <img class="ic4f-thumb figure-img img-fluid" src="{{ site.baseurl }}{{ path }}project3.jpg" alt=""></a>
      <figcaption class="figure-caption text-left"><strong>Project:</strong> Zoological Museum</figcaption>
    </figure>
  </div>
  <div class="col-12 col-md col-sm-6">
    <figure class="figure mb-0">
    <a href="{{ site.baseurl }}{{ path }}project4.pdf">
      <img class="ic4f-thumb figure-img img-fluid" src="{{ site.baseurl }}{{ path }}project4.jpg" alt=""></a>
      <figcaption class="figure-caption text-left"><strong>Project:</strong> Acquarium</figcaption>
    </figure>
  </div>
</div>

## Homework Assignments

These are examples of homework assignments for the Animal Ecology course (in Russian). Each
assignment contains pictures of animals and a question about adaptations of these animals to their
environment. For each class, students were supposed to write a one page-answer to such questions.
(Click the thumbnails for larger images)

{% for i in (0..6) %}
  <div class="row mt-4 mb-4">
  {% for j in (1..4) %}
    {%- capture id -%}{{ i | times: 4 | plus: j }}{%- endcapture -%}
    <div class="col-12 col-md col-sm-6">
      <figure class="figure mb-0">
      <img class="ic4f-mtrig ic4f-zoomin figure-img img-fluid" src="{{ site.baseurl }}{{ path }}assign{{ id }}-s.jpg" alt="">
      </figure>
    </div>
  {% endfor %}
  </div>
{% endfor %}
 
