require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   #test "the truth" do
     #assert true
   #end

   test 'humanized rating' do
   	user = FactoryGirl.create(:user)
   	sign_in user

   	#place = FactoryGirl.create(:place)
   	#comment = FactoryGirl.create(:comment)
   	#expected = 'three stars'
   	#actual = comment.humanized_rating
   end

end




