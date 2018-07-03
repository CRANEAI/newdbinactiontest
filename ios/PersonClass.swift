//
// Person.swift
// newdbinactiontest
//
// Copyright © 2017 Crane by Elly. All rights reserved.
//
import Foundation



class Person: NSObject, NSCoding {
    let id      : String
    let createdAt      : Date
    let updatedAt      : Date
    let description      : String
    let image      : String
    let name      : String
    let url      : String
    let additionalName      : String
    let address      : String
    let affiliation      : String
    let alumniOf      : String
    let award      : String
    let awards      : String
    let birthDate      : String
    let brand      : String
    let children      : String
    let colleague      : String
    let colleagues      : String
    let contactPoint      : String
    let contactPoints      : String
    let deathDate      : String
    let duns      : String
    let email      : String
    let familyName      : String
    let faxNumber      : String
    let follows      : String
    let gender      : String
    let givenName      : String
    let globalLocationNumber      : String
    let hasPOS      : String
    let homeLocation      : String
    let honorificPrefix      : String
    let honorificSuffix      : String
    let interactionCount      : String
    let isicV4      : String
    let jobTitle      : String
    let knows      : String
    let makesOffer      : String
    let memberOf      : String
    let naics      : String
    let nationality      : String
    let owns      : String
    let parent      : String
    let parents      : String
    let performerIn      : String
    let relatedTo      : String
    let seeks      : String
    let sibling      : String
    let siblings      : String
    let spouse      : String
    let taxID      : String
    let telephone      : String
    let vatID      : String
    let workLocation      : String
    let worksFor      : String
    let _id      : String

required init(coder decoder: NSCoder) {

    self.id = decoder.decodeObject(forKey: "id") as? String ?? ""
    self.createdAt = decoder.decodeObject(forKey: "createdAt") as? Date ?? ""
    self.updatedAt = decoder.decodeObject(forKey: "updatedAt") as? Date ?? ""
    self.description = decoder.decodeObject(forKey: "description") as? String ?? ""
    self.image = decoder.decodeObject(forKey: "image") as? String ?? ""
    self.name = decoder.decodeObject(forKey: "name") as? String ?? ""
    self.url = decoder.decodeObject(forKey: "url") as? String ?? ""
    self.additionalName = decoder.decodeObject(forKey: "additionalName") as? String ?? ""
    self.address = decoder.decodeObject(forKey: "address") as? String ?? ""
    self.affiliation = decoder.decodeObject(forKey: "affiliation") as? String ?? ""
    self.alumniOf = decoder.decodeObject(forKey: "alumniOf") as? String ?? ""
    self.award = decoder.decodeObject(forKey: "award") as? String ?? ""
    self.awards = decoder.decodeObject(forKey: "awards") as? String ?? ""
    self.birthDate = decoder.decodeObject(forKey: "birthDate") as? String ?? ""
    self.brand = decoder.decodeObject(forKey: "brand") as? String ?? ""
    self.children = decoder.decodeObject(forKey: "children") as? String ?? ""
    self.colleague = decoder.decodeObject(forKey: "colleague") as? String ?? ""
    self.colleagues = decoder.decodeObject(forKey: "colleagues") as? String ?? ""
    self.contactPoint = decoder.decodeObject(forKey: "contactPoint") as? String ?? ""
    self.contactPoints = decoder.decodeObject(forKey: "contactPoints") as? String ?? ""
    self.deathDate = decoder.decodeObject(forKey: "deathDate") as? String ?? ""
    self.duns = decoder.decodeObject(forKey: "duns") as? String ?? ""
    self.email = decoder.decodeObject(forKey: "email") as? String ?? ""
    self.familyName = decoder.decodeObject(forKey: "familyName") as? String ?? ""
    self.faxNumber = decoder.decodeObject(forKey: "faxNumber") as? String ?? ""
    self.follows = decoder.decodeObject(forKey: "follows") as? String ?? ""
    self.gender = decoder.decodeObject(forKey: "gender") as? String ?? ""
    self.givenName = decoder.decodeObject(forKey: "givenName") as? String ?? ""
    self.globalLocationNumber = decoder.decodeObject(forKey: "globalLocationNumber") as? String ?? ""
    self.hasPOS = decoder.decodeObject(forKey: "hasPOS") as? String ?? ""
    self.homeLocation = decoder.decodeObject(forKey: "homeLocation") as? String ?? ""
    self.honorificPrefix = decoder.decodeObject(forKey: "honorificPrefix") as? String ?? ""
    self.honorificSuffix = decoder.decodeObject(forKey: "honorificSuffix") as? String ?? ""
    self.interactionCount = decoder.decodeObject(forKey: "interactionCount") as? String ?? ""
    self.isicV4 = decoder.decodeObject(forKey: "isicV4") as? String ?? ""
    self.jobTitle = decoder.decodeObject(forKey: "jobTitle") as? String ?? ""
    self.knows = decoder.decodeObject(forKey: "knows") as? String ?? ""
    self.makesOffer = decoder.decodeObject(forKey: "makesOffer") as? String ?? ""
    self.memberOf = decoder.decodeObject(forKey: "memberOf") as? String ?? ""
    self.naics = decoder.decodeObject(forKey: "naics") as? String ?? ""
    self.nationality = decoder.decodeObject(forKey: "nationality") as? String ?? ""
    self.owns = decoder.decodeObject(forKey: "owns") as? String ?? ""
    self.parent = decoder.decodeObject(forKey: "parent") as? String ?? ""
    self.parents = decoder.decodeObject(forKey: "parents") as? String ?? ""
    self.performerIn = decoder.decodeObject(forKey: "performerIn") as? String ?? ""
    self.relatedTo = decoder.decodeObject(forKey: "relatedTo") as? String ?? ""
    self.seeks = decoder.decodeObject(forKey: "seeks") as? String ?? ""
    self.sibling = decoder.decodeObject(forKey: "sibling") as? String ?? ""
    self.siblings = decoder.decodeObject(forKey: "siblings") as? String ?? ""
    self.spouse = decoder.decodeObject(forKey: "spouse") as? String ?? ""
    self.taxID = decoder.decodeObject(forKey: "taxID") as? String ?? ""
    self.telephone = decoder.decodeObject(forKey: "telephone") as? String ?? ""
    self.vatID = decoder.decodeObject(forKey: "vatID") as? String ?? ""
    self.workLocation = decoder.decodeObject(forKey: "workLocation") as? String ?? ""
    self.worksFor = decoder.decodeObject(forKey: "worksFor") as? String ?? ""
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
     coder.encode(additionalName, forKey: "additionalName")"
     coder.encode(address, forKey: "address")"
     coder.encode(affiliation, forKey: "affiliation")"
     coder.encode(alumniOf, forKey: "alumniOf")"
     coder.encode(award, forKey: "award")"
     coder.encode(awards, forKey: "awards")"
     coder.encode(birthDate, forKey: "birthDate")"
     coder.encode(brand, forKey: "brand")"
     coder.encode(children, forKey: "children")"
     coder.encode(colleague, forKey: "colleague")"
     coder.encode(colleagues, forKey: "colleagues")"
     coder.encode(contactPoint, forKey: "contactPoint")"
     coder.encode(contactPoints, forKey: "contactPoints")"
     coder.encode(deathDate, forKey: "deathDate")"
     coder.encode(duns, forKey: "duns")"
     coder.encode(email, forKey: "email")"
     coder.encode(familyName, forKey: "familyName")"
     coder.encode(faxNumber, forKey: "faxNumber")"
     coder.encode(follows, forKey: "follows")"
     coder.encode(gender, forKey: "gender")"
     coder.encode(givenName, forKey: "givenName")"
     coder.encode(globalLocationNumber, forKey: "globalLocationNumber")"
     coder.encode(hasPOS, forKey: "hasPOS")"
     coder.encode(homeLocation, forKey: "homeLocation")"
     coder.encode(honorificPrefix, forKey: "honorificPrefix")"
     coder.encode(honorificSuffix, forKey: "honorificSuffix")"
     coder.encode(interactionCount, forKey: "interactionCount")"
     coder.encode(isicV4, forKey: "isicV4")"
     coder.encode(jobTitle, forKey: "jobTitle")"
     coder.encode(knows, forKey: "knows")"
     coder.encode(makesOffer, forKey: "makesOffer")"
     coder.encode(memberOf, forKey: "memberOf")"
     coder.encode(naics, forKey: "naics")"
     coder.encode(nationality, forKey: "nationality")"
     coder.encode(owns, forKey: "owns")"
     coder.encode(parent, forKey: "parent")"
     coder.encode(parents, forKey: "parents")"
     coder.encode(performerIn, forKey: "performerIn")"
     coder.encode(relatedTo, forKey: "relatedTo")"
     coder.encode(seeks, forKey: "seeks")"
     coder.encode(sibling, forKey: "sibling")"
     coder.encode(siblings, forKey: "siblings")"
     coder.encode(spouse, forKey: "spouse")"
     coder.encode(taxID, forKey: "taxID")"
     coder.encode(telephone, forKey: "telephone")"
     coder.encode(vatID, forKey: "vatID")"
     coder.encode(workLocation, forKey: "workLocation")"
     coder.encode(worksFor, forKey: "worksFor")"
     coder.encode(_id, forKey: "_id")"
}

}