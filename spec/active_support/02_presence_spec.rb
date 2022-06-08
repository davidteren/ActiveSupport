# The Rails ActiveSupport core extensions provide additional
# functionality to any Rails or Ruby application.
require "active_support"

RSpec.describe "ActiveSupport" do
  # ActiveSupport#presence returns the receiver Object if present?, nil otherwise.
  # In this example the || operator is used to return the default value

  describe "#presence" do
    it { expect(nil.presence).to be_nil }
    it { expect(false.presence).to be_nil }
    it { expect("".presence).to be_nil }
    it { expect(" ".presence).to be_nil }
    it { expect({}.presence).to be_nil }
    it { expect([].presence).to be_nil }

    it { expect(1.presence).to eq(1) }
    it { expect(true.presence).to eq(true) }
    it { expect("a".presence).to eq("a") }
    it { expect({a: 1}.presence).to eq({a: 1}) }
    it { expect([1].presence).to eq([1]) }
    it { expect([1, 2].presence).to eq([1, 2]) }
  end

  # OK
  def return_if_present(thing)
    thing.present? ? thing : "#{thing.class} : #{thing.inspect} is not present"
  end

  # Better
  def return_obect_if_present(thing)
    thing.presence || "#{thing.class} : #{thing.inspect} is not present"
  end

  describe "#return_obect_if_present" do
    it { expect(return_obect_if_present(nil)).to eq("NilClass : nil is not present") }
    it { expect(return_obect_if_present(false)).to eq("FalseClass : false is not present") }
    it { expect(return_obect_if_present("")).to eq("String : \"\" is not present") }
    it { expect(return_obect_if_present(" ")).to eq("String : \" \" is not present") }
    it { expect(return_obect_if_present({})).to eq("Hash : {} is not present") }
    it { expect(return_obect_if_present([])).to eq("Array : [] is not present") }

    it { expect(return_obect_if_present(1)).to eq(1) }
    it { expect(return_obect_if_present(true)).to eq(true) }
    it { expect(return_obect_if_present("a")).to eq("a") }
    it { expect(return_obect_if_present({a: 1})).to eq({a: 1}) }
    it { expect(return_obect_if_present([1, 2, 3])).to eq([1, 2, 3]) }
  end
end
