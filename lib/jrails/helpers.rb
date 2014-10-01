
require 'jrails/jquery_helper'
require 'jrails/jquery_ui_helper'

module ActionView
  module Helpers

    module JavaScriptHelper

      # This function can be used to render rjs inline
      #
      # <%= javascript_function do |page|
      #   page.replace_html :list, :partial => 'list', :object => @list
      # end %>
      #
      def javascript_function(*args, &block)
        html_options = args.extract_options!
        function = args[0] || ''

        html_options.symbolize_keys!
        function = update_page(&block) if block_given?
        javascript_tag(function)
      end

      def jquery_id(id)
        id.to_s.count('#.*,>+~:[/ ') == 0 ? "##{id}" : id
      end

      def jquery_ids(ids)
        Array(ids).map{|id| jquery_id(id)}.join(',')
      end

    end
  end

end
