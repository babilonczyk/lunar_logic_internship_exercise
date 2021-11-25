require_relative '../lib/phone'

RSpec.describe Touchpad do

  before do
    @touchpad = Touchpad.new
  end

  describe 'Methods' do 

    context '#decode_movement' do

      it 'Moves UP' do
        expect(@touchpad.decode_movement('U')).to eq('2')
      end

      it 'Moves RIGHT' do
        expect(@touchpad.decode_movement('R')).to eq('6')
      end

      it 'Moves DOWN' do
        expect(@touchpad.decode_movement('D')).to eq('8')
      end

      it 'Moves LEFT' do
        expect(@touchpad.decode_movement('L')).to eq('4')
      end

    end
  end
end