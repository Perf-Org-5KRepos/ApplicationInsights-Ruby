require_relative 'json_serializable'

module ApplicationInsights
  module Channel
    module Contracts
      # Data contract class for type Internal.
      class Internal < JsonSerializable
        # Initializes a new instance of the Internal class.
        def initialize(options={})
          defaults = {
            'ai.internal.sdkVersion' => nil,
            'ai.internal.agentVersion' => nil
          }
          values = {
          }
          super defaults, values, options
        end
        
        # Gets the sdk_version property.
        def sdk_version
          return @values['ai.internal.sdkVersion'] if @values.key?('ai.internal.sdkVersion')
          @defaults['ai.internal.sdkVersion']
        end
        
        # Sets the sdk_version property.
        def sdk_version=(value)
          if value == @defaults['ai.internal.sdkVersion']
            @values.delete 'ai.internal.sdkVersion' if @values.key? 'ai.internal.sdkVersion'
          else
            @values['ai.internal.sdkVersion'] = value
          end
        end
        
        # Gets the agent_version property.
        def agent_version
          return @values['ai.internal.agentVersion'] if @values.key?('ai.internal.agentVersion')
          @defaults['ai.internal.agentVersion']
        end
        
        # Sets the agent_version property.
        def agent_version=(value)
          if value == @defaults['ai.internal.agentVersion']
            @values.delete 'ai.internal.agentVersion' if @values.key? 'ai.internal.agentVersion'
          else
            @values['ai.internal.agentVersion'] = value
          end
        end
      end
    end
  end
end
