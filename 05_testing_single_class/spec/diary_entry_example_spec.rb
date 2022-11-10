require 'diary_entry_example'

RSpec.describe DiaryEntry do
    it "constructs" do
        diary_entry = DiaryEntry.new('title', 'contents')
        expect(diary_entry.title).to eq 'title'
        expect(diary_entry.contents).to eq 'contents'
    end

    describe "#count_words" do
      it "returns the number of words in the contents" do
        diary_entry = DiaryEntry.new('title', 'some contents here')
        expect(diary_entry.count_words).to eq 3
      end

      it "returns 0 when contents is empty" do
        diary_entry = DiaryEntry.new('title', '')
        expect(diary_entry.count_words).to eq 0
      end
    end
  
    describe "#reading_time" do
      context "given a wpm of some sensible number (200)" do
        it "returns the ceiling of number of minutes it takes" do
          words = ("hello " * 550).chop
          diary_entry = DiaryEntry.new('title', words)
          expect(diary_entry.reading_time(200)).to eq 3
        end
      end

      context "given a wpm of 0" do
        it "fails" do
          diary_entry = DiaryEntry.new('title', 'some contents here')
          expect { diary_entry.reading_time(0) }.to raise_error "invalid entry"
        end
      end
    end

    describe "#reading_chunk" do
      context "with a contents readable within the given minutes" do
        it "returns the full text" do
          chunk = DiaryEntry.new('title', '1 2 3 4 5')
          expect(chunk.reading_chunk(5, 1)).to eq '1 2 3 4 5'
        end
      end

      context "given a wpm of 0" do
        it "fails" do
          diary_entry = DiaryEntry.new('title', 'some contents here')
          expect { diary_entry.reading_chunk(0, 5) }.to raise_error "invalid entry"
        end
      end

      context "with a contents unreadable within the given time" do
        it "returns a chunk" do 
          chunk = DiaryEntry.new('title', '1 2 3 4 5')
          expect(chunk.reading_chunk(4, 1)).to eq '1 2 3 4'
        end

        it "returns the next chunk next time we are asked" do
          chunk = DiaryEntry.new('title', '1 2 3 4 5')
          chunk.reading_chunk(4, 1)
          expect(chunk.reading_chunk(4, 1)).to eq '5'
        end

        it "restarts after reading the whole contents" do
          chunk = DiaryEntry.new('title', '1 2 3 4 5')
          chunk.reading_chunk(4, 1)
          chunk.reading_chunk(4, 1)
          expect(chunk.reading_chunk(4, 1)).to eq '1 2 3 4'
        end

        it "restarts if it finishes exactly on the end" do
          chunk = DiaryEntry.new('title', '1 2 3 4 5')
          chunk.reading_chunk(4, 1)
          chunk.reading_chunk(1, 1)
          expect(chunk.reading_chunk(4, 1)).to eq '1 2 3 4'
        end
      end
    end
end

