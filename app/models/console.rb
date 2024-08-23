class Console < ApplicationRecord
  validates :name, presence: true
  validates :manufacturer, presence: true

  def fortmatted_name
    "#{manufacturer} #{name}"
  end
end
