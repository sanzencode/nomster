require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "comments_added" do
  	user = FactoryGirl.create(:user)
   		sign_in user
  	place = FactoryGirl.create(:place)
		assert_difference 'Comment.count' do  	
		post :create, :place_id => place.id, :comment => {
        :rating  => '4_star',
        :message => 'This place rocks'
        }
		end
	
	assert_redirected_to place_path(place)
    comment = Comment.last
    assert_equal user, comment.user
	end
end
