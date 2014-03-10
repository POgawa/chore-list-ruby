require 'rspec'
require 'task'
require 'list'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('scrub the zebra')
    test_task.should be_an_instance_of Task
  end

  it 'lets you read the description out' do
    test_task = Task.new('scrub the zebra')
    test_task.description.should eq 'scrub the zebra'
  end


end


describe List do
  it 'is initialized with a name' do
    test_list = List.new('Chores')
    test_list.should be_an_instance_of List
  end
  it 'lets you edit your list' do
    edit_task = Task.new('ride the zebra')
    edit_task.description.should eq 'ride the zebra'
  end

  it 'will add a task to the current list' do
    test_list = List.new('Chores')
    test_list.add_task('eat food').should eq ['eat food']
  end

  it 'will select a chosen list to add more tasks to' do

  end

end
