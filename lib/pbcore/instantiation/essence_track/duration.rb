module PBCore
  class Instantiation::EssenceTrack::Duration < Element
    element :essenceTrackDuration, as: :value

    build_xml do |xml|
      xml.essenceTrackDuration(value, xml_attributes_hash.compact)
    end
  end
end
