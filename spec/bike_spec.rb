require 'bike'

RSpec.describe Bike do
  describe 'when called' do
    it {is_expected.to respond_to(:working?)}
  end
end
