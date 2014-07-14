require 'fog/core/model'

module Fog
  module Rackspace
    class AutoScale
      class Instance < Fog::Model

        identity :id
        attribute :id
        attribute :auto_scale_group_name

      end
    end
  end
end
