# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
require 'google/cloudbuild/property/trigger_build_steps_volumes'
module GoogleInSpec
  module CloudBuild
    module Property
      class TriggerBuildSteps
        attr_reader :name

        attr_reader :args

        attr_reader :env

        attr_reader :id

        attr_reader :entrypoint

        attr_reader :dir

        attr_reader :secret_env

        attr_reader :timeout

        attr_reader :timing

        attr_reader :volumes

        attr_reader :wait_for

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @name = args['name']
          @args = args['args']
          @env = args['env']
          @id = args['id']
          @entrypoint = args['entrypoint']
          @dir = args['dir']
          @secret_env = args['secretEnv']
          @timeout = args['timeout']
          @timing = args['timing']
          @volumes = GoogleInSpec::CloudBuild::Property::TriggerBuildStepsVolumesArray.parse(args['volumes'], to_s)
          @wait_for = args['waitFor']
        end

        def to_s
          "#{@parent_identifier} TriggerBuildSteps"
        end
      end

      class TriggerBuildStepsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return TriggerBuildSteps.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| TriggerBuildSteps.new(v, parent_identifier) }
        end
      end
    end
  end
end