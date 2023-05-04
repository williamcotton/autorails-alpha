class Comment < ApplicationRecord
  def summary
    body[0..49].split(' ')[0..-2].join(' ') + '...'
  end
  belongs_to :article
end
