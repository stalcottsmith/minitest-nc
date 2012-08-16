require 'minitest/unit'
require 'terminal-notifier'

module MiniTest
  class NotificationCenter
    def initialize(io)
      @io = io
    end

    def puts(*o)
      if o.first =~ /(\d+) failures, (\d+) errors/
        text = o.first
        title = "Successful \u{1f497}"
        title = "Failed \u{1f4a9}" if $1.to_i > 0 || $2.to_i > 0
        TerminalNotifier.notify(text, :title => 'MiniTest', :subtitle => title)
      end

      @io.puts(*o)
    end

    def method_missing(msg, *args, &block)
      @io.send(msg, *args, &block)
    end
  end
end

MiniTest::Unit.output = MiniTest::NotificationCenter.new(MiniTest::Unit.output)
