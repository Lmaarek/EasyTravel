class IncomingStudent < ApplicationRecord
  belongs_to :user, :dependent => :destroy
end
