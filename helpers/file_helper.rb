# frozen_string_literal: true

module Grassman
  # ファイル操作に関する補助機能を提供します。
  class FileHelper
    # ファイルから1行ずつ読み込みます。
    def self.read_line(path, &proc)
      File.open(path) do |file|
        file.each_line do |line|
          proc.call(line.chomp)
        end
      end
    end
  end
end
