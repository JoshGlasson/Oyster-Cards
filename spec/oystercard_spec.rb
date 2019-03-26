require 'oystercard'

describe Oystercard do
  let(:station){ double :station }
  let(:journey){ double :journey }

  describe '#card balance' do
    it 'responds to balance being 0' do
      expect(subject.balance).to eq 0
    end

    it 'allows balance to top up' do
      subject.top_up(5)
      expect(subject.balance).to eq 5
    end

    it 'balance maximum of £90' do
      subject.top_up(Oystercard::DEFAULT_MAXIMUM_FUNDS)
      expect { subject.top_up(1) }.to raise_error 'Maximum £90'
    end

    it 'can deduct a fare' do
      subject.touch_out(station)
      expect(subject.balance).to eq -1
    end

    it 'Has minimum fare available' do
      expect { subject.touch_in(station) }.to raise_error 'Minimum fare £1'
    end
  end

  describe '#journey' do

    it 'charges for journey' do
      expect {subject.touch_out(station)}.to change{subject.balance}.by(-Oystercard::DEFAULT_MINIMUM_FUNDS)
    end

  end
end
