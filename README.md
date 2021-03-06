[![Stories in Ready](https://badge.waffle.io/parkeugene/demoapp.png?label=ready&title=Ready)](https://waffle.io/parkeugene/demoapp)
[![Build Status](https://travis-ci.org/parkeugene/demoapp.svg?branch=master)](https://travis-ci.org/parkeugene/demoapp)

## About
2016년 4월 24일 RORLAB 오프라인 모임에서 발표한 '팀 개발을 위한 GitHub 사용법'의 예제 애플리케이션입니다.

레일스 가이드의 articles 예제로 티켓 관리(waffle.io), 지속적 통합(Travis CI), 지속적 배포(Heroku)와 연동해서 GitHub flow를 살펴봅니다.

[Slide](http://www.slideshare.net/EugenePark20/github-61301241)

[Video](https://youtu.be/Hg9Fq_cxBUE)

[Demo](http://teamplay.herokuapp.com/articles)

* Ruby version

  2.2.3 이상

* Database creation
  
  ```bash
  bundle exec rake db:create
  ```
  
* Database initialization

  ```bash
  bundle exec rake db:migrate
  ```
* How to run the test suite

  ```bash
  bundle exec rake
  ```
