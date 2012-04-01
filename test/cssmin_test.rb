require 'rubygems'
require 'cssmin'

gem 'minitest'
require 'minitest/autorun'

describe CSSMin do
  subject { CSSMin.minify(css) }

  describe 'stripping comments and whitespace that are not required' do
    let(:css) { IO.read('test/fixtures/comments.css') }
    let(:expected_minified_css) { IO.read('test/fixtures/comments.css.min').strip }

    it { subject.must_equal expected_minified_css }
  end

  describe 'preserving media queries significant whitespace' do
    let(:css) { IO.read('test/fixtures/media_queries.css') }
    let(:expected_minified_css) { IO.read('test/fixtures/media_queries.css.min').strip }

    it { subject.must_equal expected_minified_css }
  end

end
