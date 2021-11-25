require_relative '../lib/phone'

RSpec.describe Phone do

  before do
    @phone = Phone.new
  end

  describe 'Methods' do 

    context '#type' do 

      let(:dial) { 'RLRLLLULULULUUDUULULRDDLURURDDLDUUDDLRDDUUUDD' }
      subject { @phone.type(dial) }

      it 'returns 5' do
        expect(subject).to eq(0) 
      end
    end

    context '#turn_off' do 

      context 'When passed \'X\'' do 
        before do 
          @phone.turn_off('X')
        end

        subject { @phone.turn_on }

        it 'turns on the phone' do
          expect( @phone.turned_on ).to eq(0) 
          subject
          expect( @phone.turned_on ).to eq(1) 
        end
      end
    end

    context '#turn_off' do 

      context 'When passed \'X\'' do 
        before do 
          @phone.turn_off('X')
        end

        it 'turns off the phone' do
          expect( @phone.turned_on ).to eq(0) 
        end
      end

      context 'When haven\'t passed \'X\'' do 
        before do 
          @phone.turn_off('Y')
        end

        it 'doesn\' turn off the phone' do
          expect( @phone.turned_on ).to eq(0) 
        end
      end
    end
  end
end