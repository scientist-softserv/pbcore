require 'pbcore/element'

module PBCore
  class Instantiation::ChannelConfiguration < Element
    element :instantiationChannelConfiguration, as: :value

    build_xml do |xml|
      xml.instantiationChannelConfiguration(value, xml_attributes_hash.compact)
    end
  end
end
