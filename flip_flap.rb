require_relative 'tsv_buddy'
require_relative 'yaml_buddy'

# Class for tranform data to yaml format
class FlipFlap
  # Do NOT create an initialize method
  include TsvBuddy
  include YamlBuddy
end
