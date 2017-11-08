class Invoice < ApplicationRecord
  belongs_to :container

  def calculate
    if self.finalized
      errors[:base] << "Invoice is already finalized."
      return false
    end
    days = (DateTime.now - self.container.in_time.to_datetime).to_i
    self.amount = days * 1000
    return self.save
  end

  def finalize
    return if !calculate
    self.finalized = true
    return save
  end
end
