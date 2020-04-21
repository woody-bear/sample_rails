# app/helper/application_helper.rb #
module ApplicationHelper

    # 페이지마다 완전한 타이틀을 리턴합니다.
    def full_title(page_title = '')
      base_title = "Ruby on Rails Tutorial Sample App"
      if page_title.empty?
        base_title
      else
        page_title + " | " + base_title
      end
    end
  end