# frozen_string_literal: true

require '../spec_helper'
require '../../helpers/file_helper'

describe FileHelper do
  it 'can read some lines' do
    i = 1
    FileHelper.read_line('./resources/test.txt') do |line|
      expect(line).to eq 'line' + i.to_s
      i = i.next
    end
  end
end
