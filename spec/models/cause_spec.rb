# == Schema Information
#
# Table name: causes
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

RSpec.describe Cause, type: :model do
  let(:cause) { FactoryGirl.create(:cause) }

  context 'name validations' do
    it 'is present' do
      cause.name = nil
      expect(cause).to_not be_valid
      cause.name = 'test'
      expect(cause).to be_valid
    end

    it 'length' do
      cause.name = ''
      expect(cause).to_not be_valid
      cause.name = 't'
      expect(cause).to be_valid
      cause.name = 'a' * 256
      expect(cause).to_not be_valid
      cause.name = 'a' * 255
      expect(cause).to be_valid
    end
  end
end
