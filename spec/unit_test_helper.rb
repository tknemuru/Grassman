# frozen_string_literal: true

require "#{ENV['GRASSMAN_ROOT_PATH']}/open_classes/string"

module Grassman
  # ユニットテストに関する補助機能を提供します。
  class UnitTestHelper
    # ユニットテストで使用する入力リソースを取得します。
    def self.get_input_resource(class_name, id, child_id, extension = 'txt')
      self._get_resource(class_name.split('::').last, id, child_id, ResourceType::INPUT, extension)
    end

    # ユニットテストで使用するリソースを取得します。
    def self._get_resource(class_name, id, child_id, type, extension)
      cname = "#{class_name.to_snake}_spec"
      "#{ENV['GRASSMAN_ROOT_PATH']}/spec/resources/#{cname}_#{type}_#{id}_#{child_id}" + ('.' + extension).to_s unless extension.blank?
    end

    # リソース種別
    module ResourceType
      INPUT = 'input'
      OUTPUT = 'output'
    end
  end
end
