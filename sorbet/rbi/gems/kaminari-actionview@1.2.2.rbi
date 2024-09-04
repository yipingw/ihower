# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `kaminari-actionview` gem.
# Please instead update this file by running `bin/tapioca gem kaminari-actionview`.


class ActionView::LogSubscriber < ::ActiveSupport::LogSubscriber
  include ::Kaminari::ActionViewExtension::LogSubscriberSilencer
end

# source://kaminari-actionview//lib/kaminari/actionview/version.rb#3
module Kaminari
  class << self
    # source://kaminari-core/1.2.2/lib/kaminari/config.rb#13
    def config; end

    # source://kaminari-core/1.2.2/lib/kaminari/config.rb#9
    def configure; end

    # source://kaminari-core/1.2.2/lib/kaminari/models/array_extension.rb#70
    def paginate_array(array, limit: T.unsafe(nil), offset: T.unsafe(nil), total_count: T.unsafe(nil), padding: T.unsafe(nil)); end
  end
end

# = Helpers
#
# source://kaminari-actionview//lib/kaminari/actionview/action_view_extension.rb#10
module Kaminari::ActionViewExtension; end

# Monkey-patching AV::LogSubscriber not to log each render_partial
#
# source://kaminari-actionview//lib/kaminari/actionview/action_view_extension.rb#12
module Kaminari::ActionViewExtension::LogSubscriberSilencer
  # source://kaminari-actionview//lib/kaminari/actionview/action_view_extension.rb#13
  def render_partial(*_arg0); end
end

# source://kaminari-actionview//lib/kaminari/actionview/version.rb#4
module Kaminari::Actionview; end

# source://kaminari-actionview//lib/kaminari/actionview/version.rb#5
Kaminari::Actionview::VERSION = T.let(T.unsafe(nil), String)
