# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:searchs).dependent(:destroy) }
    it { is_expected.to have_many(:key_words).through(:searchs) }
  end
end
