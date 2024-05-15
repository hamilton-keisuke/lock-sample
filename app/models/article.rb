class Article < ApplicationRecord
  has_one_attached :image

  def summary
    title + ' ' + content
  end
end
