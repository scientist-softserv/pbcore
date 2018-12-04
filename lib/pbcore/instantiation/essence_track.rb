require 'pbcore/element'

module PBCore
  class Instantiation::EssenceTrack < Element
    autoload :Type,           'pbcore/instantiation/essence_track/type'
    autoload :Identifier,     'pbcore/instantiation/essence_track/identifier'
    autoload :Standard,       'pbcore/instantiation/essence_track/standard'
    autoload :Encoding,       'pbcore/instantiation/essence_track/encoding'
    autoload :DataRate,       'pbcore/instantiation/essence_track/data_rate'
    autoload :FrameRate,      'pbcore/instantiation/essence_track/frame_rate'
    autoload :PlaybackSpeed,  'pbcore/instantiation/essence_track/playback_speed'
    autoload :SamplingRate,   'pbcore/instantiation/essence_track/sampling_rate'
    autoload :BitDepth,       'pbcore/instantiation/essence_track/bit_depth'
    autoload :FrameSize,      'pbcore/instantiation/essence_track/frame_size'
    autoload :Duration,       'pbcore/instantiation/essence_track/duration'
    autoload :AspectRatio,    'pbcore/instantiation/essence_track/aspect_ratio'
    autoload :TimeStart,      'pbcore/instantiation/essence_track/time_start'
    autoload :Language,       'pbcore/instantiation/essence_track/language'
    autoload :Annotation,     'pbcore/instantiation/essence_track/annotation'

    element  :essenceTrackType, as: :type, class: PBCore::Instantiation::EssenceTrack::Type
    elements :essenceTrackIdentifier, as: :identifiers, class: PBCore::Instantiation::EssenceTrack::Identifier
    element  :essenceTrackStandard, as: :standard, class: PBCore::Instantiation::EssenceTrack::Standard
    element  :essenceTrackEncoding, as: :encoding, class: PBCore::Instantiation::EssenceTrack::Encoding
    element  :essenceTrackDataRate, as: :data_rate, class: PBCore::Instantiation::EssenceTrack::DataRate
    element  :essenceTrackFrameRate, as: :frame_rate, class: PBCore::Instantiation::EssenceTrack::FrameRate
    element  :essenceTrackPlaybackSpeed, as: :playback_speed, class: PBCore::Instantiation::EssenceTrack::PlaybackSpeed
    element  :essenceTrackSamplingRate, as: :sampling_rate, class: PBCore::Instantiation::EssenceTrack::SamplingRate
    element  :essenceTrackBitDepth, as: :bit_depth, class: PBCore::Instantiation::EssenceTrack::BitDepth
    element  :essenceTrackFrameSize, as: :frame_size, class: PBCore::Instantiation::EssenceTrack::FrameSize
    element  :essenceTrackDuration, as: :duration, class: PBCore::Instantiation::EssenceTrack::Duration
    element  :essenceTrackAspectRatio, as: :aspect_ratio, class: PBCore::Instantiation::EssenceTrack::AspectRatio
    element  :essenceTrackTimeStart, as: :time_start, class: PBCore::Instantiation::EssenceTrack::TimeStart
    elements :essenceTrackLanguage, as: :languages, class: PBCore::Instantiation::EssenceTrack::Language
    elements :essenceTrackAnnotation, as: :annotations, class: PBCore::Instantiation::EssenceTrack::Annotation

    build_xml do |xml|
      xml.instantiationEssenceTrack(xml_attributes_hash.compact) do |xml|
        type.build(xml)
        identifiers.each { |identifier| identifier.build(xml) }
        standard.build(xml)
        encoding.build(xml)
        data_rate.build(xml)
        frame_rate.build(xml)
        playback_speed.build(xml)
        sampling_rate.build(xml)
        bit_depth.build(xml)
        frame_size.build(xml)
        duration.build(xml)
        aspect_ratio.build(xml)
        time_start.build(xml)
        languages.each { |language| language.build(xml) }
        annotations.each { |annotation| annotation.build(xml) }
      end
    end
  end
end
