class Post
  include DataMapper::Resource
  
  belongs_to :account

  property :id, Serial
  property :title, String, :required => true
  property :body, Text, :required => true
  property :created_at, DateTime
  
  #scopes definition
  def self.recent_posts
    all(:order => :created_at.desc)
  end
  
end
