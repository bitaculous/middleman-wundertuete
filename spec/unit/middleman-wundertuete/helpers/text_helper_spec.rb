RSpec.describe TextHelper do
  let(:helper) { described_class.new }

  describe '#handleize' do
    it 'handleized inputs' do
      expect(helper.handleize('hand leize')).to eq 'hand-leize'
      expect(helper.handleize('hand_leize')).to eq 'hand-leize'
      expect(helper.handleize('hand-leize')).to eq 'hand-leize'
      expect(helper.handleize('hand/leize')).to eq 'hand-leize'
    end

    it 'allows the delimiter to be passed' do
      expect(helper.handleize('hand leize', '_')).to eq 'hand_leize'
    end
  end

  describe '#copyright' do
    let(:time)         { Time.new }
    let(:current_year) { time.year }
    let(:divider)      { '-' }
    let(:copyright)    { 'All rights reserved.' }
    let(:owner)        { 'Bob Ross' }
    let(:symbol)       { '(c)' }
    let(:claim)        { 'All your rights are belong to us.' }
    let(:initial_year) { 2014 }

    # rubocop:disable Metrics/LineLength
    it 'generates a copyright' do
      expect(helper.copyright(owner)).to eq "©#{current_year} #{owner} #{divider} #{copyright}"
      expect(helper.copyright(owner, symbol: symbol)).to eq "#{symbol}#{current_year} #{owner} #{divider} #{copyright}"
      expect(helper.copyright(owner, claim: claim)).to eq "©#{current_year} #{owner} #{divider} #{claim}"
      expect(helper.copyright(owner, initial_year: initial_year)).to eq "©#{initial_year}-#{current_year} #{owner} #{divider} #{copyright}"
    end
  end
end