#coding: utf-8
require_relative 'spec_helper'

describe 'ushi' do

  describe "GET on /" do
    it "should render index.erb" do
      get "/"
      last_response.should be_ok
      last_response.body.should =~ %r(<h1>.ushi</h1>)
      last_response.body.should =~ %r(<p>I am ushi.</p>)
      last_response.body.should =~ %r(<p>&copy; 2011 .ushi</p>)
    end
  end

end
