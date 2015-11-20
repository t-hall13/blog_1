require 'test_helper'

class UserTest < ActiveSupport::TestCase
   def setup
      @user = User.create(username: "first user" )
   end


    test 'user should be valid' do
        assert @user.valid?
    end
    
    test 'username should be present' do
        @user.username = ""
        assert_not @user.valid?
    end
    
    test 'username should not be too short' do
        @user.username = "aa"
        assert_not @user.valid?
    end
    
    test 'username should not be too long' do
        @user.username = "a" * 14
        assert_not @user.valid?
    end
    
    test 'should have many articles' do
       @user.has_many :articles ;
        assert @user.valid?
    end
end
