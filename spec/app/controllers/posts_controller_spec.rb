require 'spec_helper'

describe "PostsController" do
  
  before(:each) do
    @user = Factory(:account)
    @post = Factory(:post, :account_id => @user.id)
  end
  
  describe "GET :index" do
    
    before(:each) do
      get :posts
    end
    
    it "shows the correct title" do
      response.should have_selector('div', :content => 'Welcome')
    end
    
    it "shows the post title" do
      response.should have_selector('a', :href => app.url(:posts, :show, :id => @post.id), :content => @post.title)
    end
    
    it "shows the post timestamp" do
      response.should have_selector('span.date', :content => time_ago_in_words(@post.created_at || Time.now))
    end
    
    it "shows the post author email" do
      response.should have_selector('span.author', :content => @user.email)
    end
    
  end
  
  describe "GET :show" do
    
    before(:each) do
      get :posts#show, :id => @post.id
    end
    
    it "shows the post title" do
      response.should have_selector('a', :href => app.url(:posts, :show, :id => @post.id), :content => @post.title)
    end
    
    it "shows the post timestamp" do
      response.should have_selector('span.date', :content => time_ago_in_words(@post.created_at || Time.now))
    end
    
    it "shows the post author email" do
      response.should have_selector('span.author', :content => @user.email)
    end
    
  end
  
end

