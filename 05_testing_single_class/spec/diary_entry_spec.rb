require 'diary_entry'

RSpec.describe DiaryEntry do
    it "returns 1" do
        chunk = DiaryEntry.new('title', 'contents')
        expect(chunk.reading_chunk(1, 1)).to eq 'contents'
    end

    it "returns 1" do
        chunk = DiaryEntry.new('title', '1 2 3 4 5')
        expect(chunk.reading_chunk(5, 1)).to eq '1 2 3 4 5'
    end

    it "returns 1" do
        chunk = DiaryEntry.new('title', '1 2 3 4 5 6')
        expect(chunk.reading_chunk(5, 1)).to eq '1 2 3 4 5'
    end

    it "returns 1" do
        chunk = DiaryEntry.new('title', '1 2 3 4 5 6 7 8 9 10')
        expect(chunk.reading_chunk(10, 1)).to eq '1 2 3 4 5 6 7 8 9 10'
    end

    it "returns 1" do
        chunk = DiaryEntry.new('title', '1 2 3 4 5 6 7 8 9 10')
        chunk.reading_chunk(5, 1)
        expect(chunk.reading_chunk(5, 1)).to eq '6 7 8 9 10'
    end

    it "returns 1" do
        chunk = DiaryEntry.new('title', 'one ' * 25)
        expect(chunk.reading_chunk(5, 5)).to eq ('one ' * 25).chop
    end

    it "returns 1" do
        chunk = DiaryEntry.new('title', 'one ' * 50)
        chunk.reading_chunk(5, 5)
        expect(chunk.reading_chunk(5, 5)).to eq ('one ' * 25).chop
    end
    
    it 'fails' do
        chunk = DiaryEntry.new('title', '1 2 3 4 5')
        expect { chunk.reading_chunk(nil, 5) }.to raise_error 'nil entry'
    end

    it 'fails' do
        chunk = DiaryEntry.new('title', '1 2 3 4 5')
        expect { chunk.reading_chunk(5, nil) }.to raise_error 'nil entry'
    end

    it 'fails' do
        chunk = DiaryEntry.new('title', '1 2 3 4 5')
        expect { chunk.reading_chunk(nil, nil) }.to raise_error 'nil entry'
    end
end