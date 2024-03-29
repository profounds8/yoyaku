class Room < ApplicationRecord
  validates :name, :place, :number, presence: true
  validates :name, length: { maximum: 30 }
  validates :number, numericality: {greater_than: 4, less_than: 31 }
  validates :place, inclusion: [ '東京', '大阪', '福岡', '札幌', '仙台', '名古屋', '金沢']
  validate :name_format
  validate :check_x5

  private
  def name_format
    name_pattern = /\A.+#\d{2}\z/
    unless name_pattern.match(self.name)
      errors.add(:name, "会議室名が正しくありません")
    end
  end
  def check_x5
    if (self.number.to_i % 5) !=0
      errors.add(:number, "収容人数は５の倍数で指定してください")
    end
  end
end
