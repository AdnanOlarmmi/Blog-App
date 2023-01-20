require 'rails_helper'

RSpec.describe Comment, type: :model do
    context 'validations' do
        it 'is valid with valid attributes' do
        expect(Comment.new(author_id: 1, post_id: 1, content: 'Lorem Ipsum')).to be_valid
        end
        it 'is not valid without a content' do
        expect(Comment.new).to_not be_valid
        end
    end
    context 'associations' do
        it 'belongs to author' do
        assc = described_class.reflect_on_association(:author)
        expect(assc.macro).to eq :belongs_to
        end
        it 'belongs to post' do
        assc = described_class.reflect_on_association(:post)
        expect(assc.macro).to eq :belongs_to
        end
    end
end
        