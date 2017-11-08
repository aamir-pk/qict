class MsgsController < ApplicationController
  def test
    a = [1,2,3]
    b = {number: a}
    render(plain: b.to_json)
  end
end
