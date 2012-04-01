require 'rubygems'
require 'cssmin'

gem 'minitest'
require 'minitest/spec'
require 'minitest/autorun'

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

  describe 'preserving media queries significant whitespace' do
    let(:css) do
      <<CSS
@media screen and (-webkit-min-device-pixel-ratio:0) {
  some-css : here
}
CSS
    end

    it { subject.must_equal "@media screen and (-webkit-min-device-pixel-ratio:0){some-css:here}" }
  end

end
