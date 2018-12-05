require 'pbcore/element'

module PBCore
  class DescriptionDocument < Element
    elements :pbcoreIdentifier, as: :identifiers, class: PBCore::Identifier
    elements :pbcoreTitle, as: :titles, class: PBCore::Title
    elements :pbcoreDescription, as: :descriptions, class: PBCore::Description
    elements :pbcoreAssetType, as: :asset_types, class: PBCore::AssetType
    elements :pbcoreAssetDate, as: :asset_dates, class: PBCore::AssetDate
    elements :pbcoreSubject, as: :subjects, class: PBCore::Subject
    elements :pbcoreGenre, as: :genres, class: PBCore::Genre
    elements :pbcoreRelation, as: :relations, class: PBCore::Relation
    elements :pbcoreCoverage, as: :coverages, class: PBCore::Coverage
    elements :pbcoreAudienceLevel, as: :audience_levels, class: PBCore::AudienceLevel
    elements :pbcoreAudienceRating, as: :audience_ratings, class: PBCore::AudienceRating
    elements :pbcoreCreator, as: :creators, class: PBCore::Creator
    elements :pbcoreContributor, as: :contributors, class: PBCore::Contributor
    elements :pbcorePublisher, as: :publishers, class: PBCore::Publisher
    elements :pbcoreRightsSummary, as: :rights_summaries, class: PBCore::RightsSummary
    elements :pbcoreAnnotation, as: :annotations, class: PBCore::Annotation
    elements :pbcoreExtension, as: :extensions, class: PBCore::Extension


    build_xml do |xml|
      xml.pbcoreDescriptionDocument(namespace_attributes) do |xml|
        identifiers.each { |identifier| identifier.build(xml) }
        titles.each { |title| title.build(xml) }
        descriptions.each { |description| description.build(xml) }
        asset_types.each { |asset_type| asset_type.build(xml) }
        asset_dates.each { |asset_date| asset_date.build(xml) }
        subjects.each { |subject| subject.build(xml) }
        genres.each { |genre| genre.build(xml) }
        relations.each { |relation| relation.build(xml) }
        coverages.each { |coverage| coverage.build(xml) }
        audience_levels.each { |audience_level| audience_level.build(xml) }
        audience_ratings.each { |audience_rating| audience_rating.build(xml) }
        creators.each { |creator| creator.build(xml) }
        contributors.each { |contributor| contributor.build(xml) }
        publishers.each { |publisher| publisher.build(xml) }
        rights_summaries.each { |rights_summary| rights_summary.build(xml) }
        annotations.each { |annotation| annotation.build(xml) }
        extensions.each { |extension| extension.build(xml) }
      end
    end

    # NOTE: For some reason, these attributes will not parse with SAXMachine
    # attributes.
    # TODO: Is there a better way to set namespace attributes?
    def namespace_attributes
      {
        'xmlns' => "http://pbcore.org/PBCore/PBCoreNamespace.html",
        'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
        'xsi:schemaLocation' => "http://pbcore.org/PBCore/PBCoreNamespace.html https://raw.githubusercontent.com/WGBH/PBCore_2.1/master/pbcore-2.1.xsd"
      }
    end
  end
end
