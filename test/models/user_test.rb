require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar") #추가한 코드
  end
 
  test "should be valid" do
    # assert가 @user.valid에 값에 따라서 true false 를 출력
    assert @user.valid?
  end

  # name 속성을 검증해보는 테스트
  test "name should be present" do
    @user.name = "    "
    assert_not @user.valid?
  end
  # email 속성검증
  test "email should be present" do
    @user.email = "    "
    assert_not @user.valid?
  end

  # name 길이 검증 > user.rb파일에서 길이를 정해줘야 작동
  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  # eamil 길이 검증 > user.rb파일에서 길이를 정해줘야 작동
  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  # 이메일 포맷 검증
  test "email validation should accept valid addressed" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                          first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      # 메일주소가 포맷에 맞지 않으면 에러를 뿜는다
      assert @user.valid?, "#{valid_address.inspect} should be a valid"
    end
  end

  test "email addresses should be unique" do
    # @user.dup를 통해 같은 메일주소의 유저를 검사
    # dup를 통해서 같은 속성을 가진 데이터를 복제할 때 사용
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase # 추가된 코드
    @user.save
    assert_not duplicate_user.valid?
  end

  # 비밀번호의 숫자가 6개 이상인것을 확인
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    # 다중대입 비밀번호와 비밀번호확인에 대해 동시에 값을 대입
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end