require 'rails_helper'

RSpec.describe Activity, type: :model do
  before :each do
    user = User.new(id: 1, name: 'hamza')
    user.email = 'foo1@foo.com'
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
    user.save
  end

  subject do
    Activity.new(
      name: 'Buy milk',
      amount: 1.22,
      author_id: 1
    )
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid name attribute' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid amount attribute' do
    subject.amount = -1
    expect(subject).to_not be_valid
  end

  it 'is valid with valid amount attribute' do
    subject.amount = 2.5
    expect(subject).to be_valid
  end
end
