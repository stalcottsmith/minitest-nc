require 'minitest'
require 'terminal-notifier'

module Minitest

  class NotificationsReporter < StatisticsReporter
    def report
      super
      text = "%d failures, %d errors" % [failures, errors]
      title = "Successful \u{1f497}"
      title = "Failed \u{1f4a9}" if failures > 0 || errors > 0
      TerminalNotifier.notify(text, :title => 'MiniTest', :subtitle => title)
    end
  end

  def self.plugin_nc_init(options)
    self.reporter << NotificationsReporter.new()
  end

end