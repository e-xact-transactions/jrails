
module ActionView
  module Helpers
    module JqueryHelper

      class JavaScriptGenerator
        module GeneratorMethods

          def insert_html(position, id, *options_for_render)
            insertion = position.to_s.downcase
            insertion = 'append' if insertion == 'bottom'
            insertion = 'prepend' if insertion == 'top'
            call "#{JQUERY_VAR}(\"#{jquery_id(id)}\").#{insertion}", render(*options_for_render)
          end

          def replace_html(id, *options_for_render)
            insert_html(:html, id, *options_for_render)
          end

          def replace(id, *options_for_render)
            call "#{JQUERY_VAR}(\"#{jquery_id(id)}\").replaceWith", render(*options_for_render)
          end

          def remove(*ids)
            call "#{JQUERY_VAR}(\"#{jquery_ids(ids)}\").remove"
          end

          def show(*ids)
            call "#{JQUERY_VAR}(\"#{jquery_ids(ids)}\").show"
          end

          def hide(*ids)
            call "#{JQUERY_VAR}(\"#{jquery_ids(ids)}\").hide"
          end

          def toggle(*ids)
            call "#{JQUERY_VAR}(\"#{jquery_ids(ids)}\").toggle"
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
  end
end
