require_relative 'tsv_buddy'
require 'yaml'

# Class for tranform data to yaml format
class FlipFlap
  # Do NOT create an initialize method
  include TsvBuddy

  def take_yaml(yml)
    @data = YAML.load(yml)
  end

  def to_yaml
    @data.to_yaml
  end
end
