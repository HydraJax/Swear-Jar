require 'spec_helper'

# This needs to be the name of the class with no underscore.
# Fixing this will get rid of your unitialized constant error.
describe Nonprofit do
  it 'should respond to link' do
    # It looks like these specs might be out of date.
    # It calls on attributes of Nonprofit that are not defined on that table.
    non_profit = Nonprofit.create(link: "https://www.google.com", random_string: 'abcdefg')
    url.should respond_to(:link)
  end
end