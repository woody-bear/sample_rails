module ApplicationHelper
    # 각 페이지 당 완전한 페이지 타이틀을 리턴합니다                # 코멘트 행
    def full_title(page_title = '')                     # 메소드 정의와 파라미터
        base_title = "Ruby on Rails Tutorial Sample App" # 변수 타입
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title             # 문자열의 결합 
        end
    end
end
