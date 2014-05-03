require 'spec_helper'

describe User do
  it 'should have a valid email' do
  	user = User.create(name: "joe", password: "ahoy", email:"joe@gmail.com")
# unfinished test....tests for valid email

	end
end