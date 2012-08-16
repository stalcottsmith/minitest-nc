# minitest-nc

MiniTest extension for Mountain Lion's Notification Center

**Require's OS X Mountain Lion**

## Install

You can either `gem install minitest-nc` or add `minitest-nc` to your Gemfile.

## Example

```ruby
require 'minitest/autorun'
require 'minitest/nc'

describe 'my amazing tests' do
  50.times do |i|
    it "must #{i}" do
      100.must_equal 100
    end
  end

  2.times do |i|
    it "compares #{i} to #{i + 1}" do
      i.must_equal i + 1
    end
  end

  it 'skips things!!' do
    skip "don't care!"
  end
end
```

## License

Copyright (c) 2012 Tom Bell

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
