require 'caesar-cipher'

describe "caesar_cipher" do

	

	context "given an empty string and a number" do
		it "returns an empty string" do
			expect(caesar_cipher("", 50)).to eql("")
		end
	end

	context "shifts from beginning of alphabet to end" do
		it "returns zabc" do
			expect(caesar_cipher("abcd", 1)).to eql("zabc")
		end
	end

	context "given string with non-letters" do
		it "returns the string with only the letters shifted" do
			expect(caesar_cipher("l.b/a+z", 2)).to eql("j.z/y+x")
		end
	end

	context "given string with both up/down case" do
		it "returns string with same cases after shift" do
			expect(caesar_cipher("T SaB.", 1)).to eql("S RzA.")
		end
	end

	context "test shift with large number" do
		it "returns a letter of the alphabet" do
			expect(caesar_cipher("A", 27)).to eql("Z")
		end
	end


end