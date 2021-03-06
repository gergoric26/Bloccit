require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "New Post Title", body: "New Post Body", resolved: true || false) }
  let(:answer) { Answer.create!(body: 'Answer Body', answer: answer) }

  describe "attributes" do

    it "should respond to body" do
      expect(answer).to respond_to(:body)
    end

  end
end
