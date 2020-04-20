# Ruby on Rails Tutorial Sample Application

이 프로젝트는, 아래의 링크의 내용을 바탕으로 만들어진 프로젝트입니다.
[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
[Michael Hartl](http://www.michaelhartl.com/) 著

## 라이센스
[Ruby on Rails チュートリアル](https://railstutorial.jp/)에 기재되어 있는
소스코드는 MIT라이센스와 Beerware라이센스를 기반으로 공개되어있습니다.
상세한 내용은 [LICENSE.md](LICENSE.md)를 참고해주세요. 

## 사용방법
이 어플리케이션을 구동시키는 방법은, 일단 레포지토리를 로컬로 clone 해주세요 
그 다음, 아래의 커맨드를 사용하여 필요한 RubyGem을 설치해주세요

```

bundle install --widthout production

```
그 다음 데이터베이스를 마이그레이션 해주세요

```
rails db:migrate

```
마지막ㅇ로, 테스트를 실행하여 제대로 동작하는지 확인해주세요

```

rails test

```

테스트가 무사히 종료되었다면 Rails 서버를 실행시켜주세요

```
rails server

```
자세한 것은 [Ruby on Rails Tutorial](https://www.railstutorial.org/)을 참고해주세요.