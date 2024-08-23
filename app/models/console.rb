class Console < ApplicationRecord
  validates :name, presence: true
  validates :manufacturer, presence: true

  scope :nintentdo, -> { where(manufacturer: 'Nintendo')}

  def fortmatted_name
    "#{manufacturer} #{name}"
  end
end
