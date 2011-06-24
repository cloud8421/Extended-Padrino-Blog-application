require 'spec_helper'

describe "Post Model" do
  
  before(:each) do
    @user = Factory(:account)
    @valid_post_data = {
      :title => 'Sample post title',
      :body => 'Sample post body'
    }
    @invalid_post_data = {
      :title => '',
      :body => ''
    }
  end
  
  it "should have an account attribute" do
    post = Post.new
    post.should respond_to(:account)
  end
  
  describe "validation fail" do
    
    it "doesn't accept a post with a blank title" do
      post = @user.posts.create(@invalid_post_data.merge( {:body => 'lorem ipsum'} ))
      post.should_not be_valid
    end
    
    it "doesn't accept a post with a blank body" do
      post = @user.posts.create(@invalid_post_data.merge( {:title => 'lorem ipsum'} ))
      post.should_not be_valid
    end
    
    it "doesn't accept a post without an associated account" do
      post = Post.new(@valid_post_data)
      post.should_not be_valid
    end
    
  end
  
  describe "validation pass" do
    
    it "accepts a post with valid attributes" do
      post = @user.posts.create(@valid_post_data)
      post.should be_valid
    end
    
  end
  
end
