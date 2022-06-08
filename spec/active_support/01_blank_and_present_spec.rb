# The Rails ActiveSupport core extensions provide additional
# functionality to any Rails or Ruby application.
require "active_support"

RSpec.describe "ActiveSupport" do
  # A good way to validate whether an object
  # is Truthy or Falsey in Ruby or Rails apps
  # is to use the ActiveSupport present? & blank? methods.

  describe "#blank?" do
    it { expect(nil.blank?).to be_truthy }
    it { expect(false.blank?).to be_truthy }
    it { expect("".blank?).to be_truthy }
    it { expect(" ".blank?).to be_truthy }
    it { expect({}.blank?).to be_truthy }
    it { expect([].blank?).to be_truthy }
  end

  describe "#present?" do
    it { expect(nil.present?).to be_falsey }
    it { expect(false.present?).to be_falsey }
    it { expect("".present?).to be_falsey }
    it { expect(" ".present?).to be_falsey }
    it { expect({}.present?).to be_falsey }
    it { expect([].present?).to be_falsey }
  end
end
