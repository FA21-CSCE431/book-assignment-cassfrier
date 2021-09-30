# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk rowling', price: 9.99, date: '1997-06-26')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without valid attributes' do
    subject.title = nil
    subject.author = nil
    subject.price = 0.00
    subject.date = nil
    expect(subject).not_to be_valid
  end


end
