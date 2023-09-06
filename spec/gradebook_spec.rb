require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new('Instructor Dave')
    @courses = [ 
      course1 = { name: 'math', code: 'math101' } 
      course2 = { name: 'science', code: 'science101' } ]
    end
  end

  it 'has an instructor' do
    expect(@gradebook.instructor).to eq('Instructor Dave')
  end

  it 'has courses' do
    expect(@gradebook.courses).to include([@course1, @course2])
  end

  it 'can add a course to the list' do

    expect(@gradebook.add_course(course)).to include([@course1, @course2, @course3])
  end
end
