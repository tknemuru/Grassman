# frozen_string_literal: true

require "#{ENV['GRASSMAN_ROOT_PATH']}/spec/spec_helper"
require "#{ENV['GRASSMAN_ROOT_PATH']}/helpers/file_helper"
require "#{ENV['GRASSMAN_ROOT_PATH']}/spec/unit_test_helper"

describe FileHelper do
  it 'can read some lines' do
    i = 1
    FileHelper.read_line(UnitTestHelper.get_input_resource(FileHelper.name, '001', '001')) do |line|
      expect(line).to eq 'line' + i.to_s
      i = i.next
    end
  end
end
