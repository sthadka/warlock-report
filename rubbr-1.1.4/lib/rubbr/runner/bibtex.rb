module Rubbr
  module Runner
    class BibTeX < Base
      def initialize(input_file, executable='bibtex')
        super
      end

      def run
        messages = /^I (found no|couldn't open)/
        @warnings = `#@executable #@input_file`.each_line.grep(messages)
        feedback
      end
    end
  end
end
