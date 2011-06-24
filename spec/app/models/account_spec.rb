require 'spec_helper'

describe "Account Model" do
  
  before(:each) do
    @account = Account.new
  end
  
  it 'can be created' do
    @account.should_not be_nil
  end
  
  it "has posts method" do
    @account.should respond_to(:posts)
  end
  
end
