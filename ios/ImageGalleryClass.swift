//
// ImageGallery.swift
// newdbinactiontest
//
// Copyright © 2017 Crane by Elly. All rights reserved.
//
import Foundation



class ImageGallery: NSObject, NSCoding {
    let id      : String
    let createdAt      : Date
    let updatedAt      : Date
    let description      : String
    let image      : String
    let name      : String
    let url      : String
    let about      : String
    let accessibilityAPI      : String
    let accessibilityControl      : String
    let accessibilityFeature      : String
    let accessibilityHazard      : String
    let accountablePerson      : String
    let aggregateRating      : String
    let alternativeHeadline      : String
    let associatedMedia      : String
    let audience      : String
    let audio      : String
    let author      : String
    let award      : String
    let awards      : String
    let citation      : String
    let comment      : String
    let contentLocation      : String
    let contentRating      : String
    let contributor      : String
    let copyrightHolder      : String
    let copyrightYear      : String
    let creator      : String
    let dateCreated      : String
    let dateModified      : String
    let datePublished      : String
    let discussionUrl      : String
    let editor      : String
    let educationalAlignment      : String
    let educationalUse      : String
    let encoding      : String
    let encodings      : String
    let genre      : String
    let headline      : String
    let inLanguage      : String
    let interactionCount      : String
    let interactivityType      : String
    let isBasedOnUrl      : String
    let isFamilyFriendly      : String
    let keywords      : String
    let learningResourceType      : String
    let mentions      : String
    let offers      : String
    let provider      : String
    let publisher      : String
    let publishingPrinciples      : String
    let review      : String
    let reviews      : String
    let sourceOrganization      : String
    let text      : String
    let thumbnailUrl      : String
    let timeRequired      : String
    let typicalAgeRange      : String
    let version      : String
    let video      : String
    let breadcrumb      : String
    let isPartOf      : String
    let lastReviewed      : String
    let mainContentOfPage      : String
    let primaryImageOfPage      : String
    let relatedLink      : String
    let reviewedBy      : String
    let significantLink      : String
    let significantLinks      : String
    let specialty      : String
    let _id      : String

required init(coder decoder: NSCoder) {

    self.id = decoder.decodeObject(forKey: "id") as? String ?? ""
    self.createdAt = decoder.decodeObject(forKey: "createdAt") as? Date ?? ""
    self.updatedAt = decoder.decodeObject(forKey: "updatedAt") as? Date ?? ""
    self.description = decoder.decodeObject(forKey: "description") as? String ?? ""
    self.image = decoder.decodeObject(forKey: "image") as? String ?? ""
    self.name = decoder.decodeObject(forKey: "name") as? String ?? ""
    self.url = decoder.decodeObject(forKey: "url") as? String ?? ""
    self.about = decoder.decodeObject(forKey: "about") as? String ?? ""
    self.accessibilityAPI = decoder.decodeObject(forKey: "accessibilityAPI") as? String ?? ""
    self.accessibilityControl = decoder.decodeObject(forKey: "accessibilityControl") as? String ?? ""
    self.accessibilityFeature = decoder.decodeObject(forKey: "accessibilityFeature") as? String ?? ""
    self.accessibilityHazard = decoder.decodeObject(forKey: "accessibilityHazard") as? String ?? ""
    self.accountablePerson = decoder.decodeObject(forKey: "accountablePerson") as? String ?? ""
    self.aggregateRating = decoder.decodeObject(forKey: "aggregateRating") as? String ?? ""
    self.alternativeHeadline = decoder.decodeObject(forKey: "alternativeHeadline") as? String ?? ""
    self.associatedMedia = decoder.decodeObject(forKey: "associatedMedia") as? String ?? ""
    self.audience = decoder.decodeObject(forKey: "audience") as? String ?? ""
    self.audio = decoder.decodeObject(forKey: "audio") as? String ?? ""
    self.author = decoder.decodeObject(forKey: "author") as? String ?? ""
    self.award = decoder.decodeObject(forKey: "award") as? String ?? ""
    self.awards = decoder.decodeObject(forKey: "awards") as? String ?? ""
    self.citation = decoder.decodeObject(forKey: "citation") as? String ?? ""
    self.comment = decoder.decodeObject(forKey: "comment") as? String ?? ""
    self.contentLocation = decoder.decodeObject(forKey: "contentLocation") as? String ?? ""
    self.contentRating = decoder.decodeObject(forKey: "contentRating") as? String ?? ""
    self.contributor = decoder.decodeObject(forKey: "contributor") as? String ?? ""
    self.copyrightHolder = decoder.decodeObject(forKey: "copyrightHolder") as? String ?? ""
    self.copyrightYear = decoder.decodeObject(forKey: "copyrightYear") as? String ?? ""
    self.creator = decoder.decodeObject(forKey: "creator") as? String ?? ""
    self.dateCreated = decoder.decodeObject(forKey: "dateCreated") as? String ?? ""
    self.dateModified = decoder.decodeObject(forKey: "dateModified") as? String ?? ""
    self.datePublished = decoder.decodeObject(forKey: "datePublished") as? String ?? ""
    self.discussionUrl = decoder.decodeObject(forKey: "discussionUrl") as? String ?? ""
    self.editor = decoder.decodeObject(forKey: "editor") as? String ?? ""
    self.educationalAlignment = decoder.decodeObject(forKey: "educationalAlignment") as? String ?? ""
    self.educationalUse = decoder.decodeObject(forKey: "educationalUse") as? String ?? ""
    self.encoding = decoder.decodeObject(forKey: "encoding") as? String ?? ""
    self.encodings = decoder.decodeObject(forKey: "encodings") as? String ?? ""
    self.genre = decoder.decodeObject(forKey: "genre") as? String ?? ""
    self.headline = decoder.decodeObject(forKey: "headline") as? String ?? ""
    self.inLanguage = decoder.decodeObject(forKey: "inLanguage") as? String ?? ""
    self.interactionCount = decoder.decodeObject(forKey: "interactionCount") as? String ?? ""
    self.interactivityType = decoder.decodeObject(forKey: "interactivityType") as? String ?? ""
    self.isBasedOnUrl = decoder.decodeObject(forKey: "isBasedOnUrl") as? String ?? ""
    self.isFamilyFriendly = decoder.decodeObject(forKey: "isFamilyFriendly") as? String ?? ""
    self.keywords = decoder.decodeObject(forKey: "keywords") as? String ?? ""
    self.learningResourceType = decoder.decodeObject(forKey: "learningResourceType") as? String ?? ""
    self.mentions = decoder.decodeObject(forKey: "mentions") as? String ?? ""
    self.offers = decoder.decodeObject(forKey: "offers") as? String ?? ""
    self.provider = decoder.decodeObject(forKey: "provider") as? String ?? ""
    self.publisher = decoder.decodeObject(forKey: "publisher") as? String ?? ""
    self.publishingPrinciples = decoder.decodeObject(forKey: "publishingPrinciples") as? String ?? ""
    self.review = decoder.decodeObject(forKey: "review") as? String ?? ""
    self.reviews = decoder.decodeObject(forKey: "reviews") as? String ?? ""
    self.sourceOrganization = decoder.decodeObject(forKey: "sourceOrganization") as? String ?? ""
    self.text = decoder.decodeObject(forKey: "text") as? String ?? ""
    self.thumbnailUrl = decoder.decodeObject(forKey: "thumbnailUrl") as? String ?? ""
    self.timeRequired = decoder.decodeObject(forKey: "timeRequired") as? String ?? ""
    self.typicalAgeRange = decoder.decodeObject(forKey: "typicalAgeRange") as? String ?? ""
    self.version = decoder.decodeObject(forKey: "version") as? String ?? ""
    self.video = decoder.decodeObject(forKey: "video") as? String ?? ""
    self.breadcrumb = decoder.decodeObject(forKey: "breadcrumb") as? String ?? ""
    self.isPartOf = decoder.decodeObject(forKey: "isPartOf") as? String ?? ""
    self.lastReviewed = decoder.decodeObject(forKey: "lastReviewed") as? String ?? ""
    self.mainContentOfPage = decoder.decodeObject(forKey: "mainContentOfPage") as? String ?? ""
    self.primaryImageOfPage = decoder.decodeObject(forKey: "primaryImageOfPage") as? String ?? ""
    self.relatedLink = decoder.decodeObject(forKey: "relatedLink") as? String ?? ""
    self.reviewedBy = decoder.decodeObject(forKey: "reviewedBy") as? String ?? ""
    self.significantLink = decoder.decodeObject(forKey: "significantLink") as? String ?? ""
    self.significantLinks = decoder.decodeObject(forKey: "significantLinks") as? String ?? ""
    self.specialty = decoder.decodeObject(forKey: "specialty") as? String ?? ""
    self._id = decoder.decodeObject(forKey: "_id") as? String ?? ""

}


func encode(with coder: NSCoder) {
     coder.encode(id, forKey: "id")"
     coder.encode(createdAt, forKey: "createdAt")"
     coder.encode(updatedAt, forKey: "updatedAt")"
     coder.encode(description, forKey: "description")"
     coder.encode(image, forKey: "image")"
     coder.encode(name, forKey: "name")"
     coder.encode(url, forKey: "url")"
     coder.encode(about, forKey: "about")"
     coder.encode(accessibilityAPI, forKey: "accessibilityAPI")"
     coder.encode(accessibilityControl, forKey: "accessibilityControl")"
     coder.encode(accessibilityFeature, forKey: "accessibilityFeature")"
     coder.encode(accessibilityHazard, forKey: "accessibilityHazard")"
     coder.encode(accountablePerson, forKey: "accountablePerson")"
     coder.encode(aggregateRating, forKey: "aggregateRating")"
     coder.encode(alternativeHeadline, forKey: "alternativeHeadline")"
     coder.encode(associatedMedia, forKey: "associatedMedia")"
     coder.encode(audience, forKey: "audience")"
     coder.encode(audio, forKey: "audio")"
     coder.encode(author, forKey: "author")"
     coder.encode(award, forKey: "award")"
     coder.encode(awards, forKey: "awards")"
     coder.encode(citation, forKey: "citation")"
     coder.encode(comment, forKey: "comment")"
     coder.encode(contentLocation, forKey: "contentLocation")"
     coder.encode(contentRating, forKey: "contentRating")"
     coder.encode(contributor, forKey: "contributor")"
     coder.encode(copyrightHolder, forKey: "copyrightHolder")"
     coder.encode(copyrightYear, forKey: "copyrightYear")"
     coder.encode(creator, forKey: "creator")"
     coder.encode(dateCreated, forKey: "dateCreated")"
     coder.encode(dateModified, forKey: "dateModified")"
     coder.encode(datePublished, forKey: "datePublished")"
     coder.encode(discussionUrl, forKey: "discussionUrl")"
     coder.encode(editor, forKey: "editor")"
     coder.encode(educationalAlignment, forKey: "educationalAlignment")"
     coder.encode(educationalUse, forKey: "educationalUse")"
     coder.encode(encoding, forKey: "encoding")"
     coder.encode(encodings, forKey: "encodings")"
     coder.encode(genre, forKey: "genre")"
     coder.encode(headline, forKey: "headline")"
     coder.encode(inLanguage, forKey: "inLanguage")"
     coder.encode(interactionCount, forKey: "interactionCount")"
     coder.encode(interactivityType, forKey: "interactivityType")"
     coder.encode(isBasedOnUrl, forKey: "isBasedOnUrl")"
     coder.encode(isFamilyFriendly, forKey: "isFamilyFriendly")"
     coder.encode(keywords, forKey: "keywords")"
     coder.encode(learningResourceType, forKey: "learningResourceType")"
     coder.encode(mentions, forKey: "mentions")"
     coder.encode(offers, forKey: "offers")"
     coder.encode(provider, forKey: "provider")"
     coder.encode(publisher, forKey: "publisher")"
     coder.encode(publishingPrinciples, forKey: "publishingPrinciples")"
     coder.encode(review, forKey: "review")"
     coder.encode(reviews, forKey: "reviews")"
     coder.encode(sourceOrganization, forKey: "sourceOrganization")"
     coder.encode(text, forKey: "text")"
     coder.encode(thumbnailUrl, forKey: "thumbnailUrl")"
     coder.encode(timeRequired, forKey: "timeRequired")"
     coder.encode(typicalAgeRange, forKey: "typicalAgeRange")"
     coder.encode(version, forKey: "version")"
     coder.encode(video, forKey: "video")"
     coder.encode(breadcrumb, forKey: "breadcrumb")"
     coder.encode(isPartOf, forKey: "isPartOf")"
     coder.encode(lastReviewed, forKey: "lastReviewed")"
     coder.encode(mainContentOfPage, forKey: "mainContentOfPage")"
     coder.encode(primaryImageOfPage, forKey: "primaryImageOfPage")"
     coder.encode(relatedLink, forKey: "relatedLink")"
     coder.encode(reviewedBy, forKey: "reviewedBy")"
     coder.encode(significantLink, forKey: "significantLink")"
     coder.encode(significantLinks, forKey: "significantLinks")"
     coder.encode(specialty, forKey: "specialty")"
     coder.encode(_id, forKey: "_id")"
}

}