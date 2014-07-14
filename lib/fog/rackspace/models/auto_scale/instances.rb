require 'fog/core/model'
require 'fog/rackspace/models/auto_scale/group'
require 'fog/rackspace/models/auto_scale/instance'

module Fog
  module Rackspace
    class AutoScale
      class Instances < Fog::Collection

        model Instance

        # @return [Fog::Rackspace::AutoScale::Group]
        attr_accessor :auto_scale_group

        def initialize(args={})
          @auto_scale_group = args.delete(:auto_scale_group)
          super
        end

        def all
          instances_map = auto_scale_group.state['active'].map do |act|
            act.merge(
              :auto_scale_group_name => auto_scale_group.name
            )
          end
          load(instances_map)
        end

      end
    end
  end
end
