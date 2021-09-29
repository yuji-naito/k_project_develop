class OwnColor < ApplicationRecord
  belongs_to :user

  validates :color1, presence: true, numericality: { in: 0..6 }
  validates :color2, presence: true, numericality: { in: 0..6 }
  validates :color3, presence: true, numericality: { in: 0..6 }
  validates :color4, presence: true, numericality: { in: 0..6 }
  validates :color5, presence: true, numericality: { in: 0..6 }
  validates :color6, presence: true, numericality: { in: 0..6 }
  validates :color7, presence: true, numericality: { in: 0..6 }
  validates :color8, presence: true, numericality: { in: 0..6 }
  validates :color9, presence: true, numericality: { in: 0..6 }
  validates :color10, presence: true, numericality: { in: 0..6 }
  validates :color11, presence: true, numericality: { in: 0..6 }

  # color1~color11の値を百分率に変換した配列を返す
  def to_percents
    total = 0
    (1..11).each do |count|
      total += send("color#{count}")
    end

    (1..11).map do |count|
      (send("color#{count}") / total.to_f) * 100
    end
  end
end
