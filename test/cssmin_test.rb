require 'rubygems'
require 'cssmin'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'

describe CSSMin do
  subject { CSSMin.minify(css) }

  describe 'stripping comments and whitespace that are not required' do
    let(:css) do
    <<CSS
/*****
  Multi-line comment
  before a new class name
*****/
.classname {
    /* comment in declaration block */
    font-weight: normal;
}
CSS
    end

    it { subject.must_equal ".classname{font-weight:normal}" }
  end

end
