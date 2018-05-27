# frozen_string_literal: true

# Stringクラスに対する拡張機能を提供します。
class String
  # 文字列変数がnilもしくは空かを判定します。
  def blank?
    self.nil? || self.empty?
  end

  # スネークケースをキャネルケースに変換します。
  def to_camel
    self.split('_').map do |w|
      w[0] = w[0].upcase
      w
    end.join
  end

  # キャメルケースをスネークケースに変換します。
  def to_snake
    self.gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
        .gsub(/([a-z\d])([A-Z])/, '\1_\2')
        .tr('-', '_')
        .downcase
  end
end
