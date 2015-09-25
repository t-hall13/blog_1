require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
   def setup
      @article = Article.create(title: "first article", 
                               description: "this is a test article")
   end
   
   test 'article should be valid' do 
      assert @article.valid? 
   end
   
   test 'title should be present' do
       @article.title = ""
       assert_not @article.valid?
   end
   
   test 'title should not be too short' do
       @article.title = "aaa"
       assert_not @article.valid?
   end
   
   test 'title should not be too long' do
       @article.title = "a"*51
       assert_not @article.valid?
   end
   
   
end