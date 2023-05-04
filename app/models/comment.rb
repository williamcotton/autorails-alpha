class Comment < ApplicationRecord
  def summary
    body.split[0..49].join(' ').gsub(/Ww+W*/, '...')
  end
  belongs_to :article
end
