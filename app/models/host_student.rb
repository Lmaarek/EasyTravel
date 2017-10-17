class HostStudent < ApplicationRecord
  belongs_to :user, :dependent => :destroy
end
