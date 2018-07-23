//
// AccountingService.swift
// newdbinactiontest
//
// Copyright © 2017 Crane by Elly. All rights reserved.
//
import Foundation



class AccountingService: NSObject, NSCoding {
    let id      : String
    let createdAt      : Date
    let updatedAt      : Date
    let description      : String
    let image      : String
    let name      : String
    let url      : String
    let address      : String
    let aggregateRating      : String
    let containedIn      : String
    let event      : String
    let events      : String
    let faxNumber      : String
    let geo      : String
    let globalLocationNumber      : String
    let interactionCount      : String
    let isicV4      : String
    let logo      : String
    let map      : String
    let maps      : String
    let openingHoursSpecification      : String
    let photo      : String
    let photos      : String
    let review      : String
    let reviews      : String
    let telephone      : String
    let brand      : String
    let contactPoint      : String
    let contactPoints      : String
    let department      : String
    let duns      : String
    let email      : String
    let employee      : String
    let employees      : String
    let founder      : String
    let founders      : String
    let foundingDate      : String
    let hasPOS      : String
    let legalName      : String
    let location      : Object
    let makesOffer      : String
    let member      : String
    let members      : String
    let naics      : String
    let owns      : String
    let seeks      : String
    let subOrganization      : String
    let taxID      : String
    let vatID      : String
    let branchOf      : String
    let currenciesAccepted      : String
    let openingHours      : String
    let paymentAccepted      : String
    let priceRange      : String
    let _id      : String

required init(coder decoder: NSCoder) {

    self.id = decoder.decodeObject(forKey: "id") as? String ?? ""
    self.createdAt = decoder.decodeObject(forKey: "createdAt") as? Date ?? ""
    self.updatedAt = decoder.decodeObject(forKey: "updatedAt") as? Date ?? ""
    self.description = decoder.decodeObject(forKey: "description") as? String ?? ""
    self.image = decoder.decodeObject(forKey: "image") as? String ?? ""
    self.name = decoder.decodeObject(forKey: "name") as? String ?? ""
    self.url = decoder.decodeObject(forKey: "url") as? String ?? ""
    self.address = decoder.decodeObject(forKey: "address") as? String ?? ""
    self.aggregateRating = decoder.decodeObject(forKey: "aggregateRating") as? String ?? ""
    self.containedIn = decoder.decodeObject(forKey: "containedIn") as? String ?? ""
    self.event = decoder.decodeObject(forKey: "event") as? String ?? ""
    self.events = decoder.decodeObject(forKey: "events") as? String ?? ""
    self.faxNumber = decoder.decodeObject(forKey: "faxNumber") as? String ?? ""
    self.geo = decoder.decodeObject(forKey: "geo") as? String ?? ""
    self.globalLocationNumber = decoder.decodeObject(forKey: "globalLocationNumber") as? String ?? ""
    self.interactionCount = decoder.decodeObject(forKey: "interactionCount") as? String ?? ""
    self.isicV4 = decoder.decodeObject(forKey: "isicV4") as? String ?? ""
    self.logo = decoder.decodeObject(forKey: "logo") as? String ?? ""
    self.map = decoder.decodeObject(forKey: "map") as? String ?? ""
    self.maps = decoder.decodeObject(forKey: "maps") as? String ?? ""
    self.openingHoursSpecification = decoder.decodeObject(forKey: "openingHoursSpecification") as? String ?? ""
    self.photo = decoder.decodeObject(forKey: "photo") as? String ?? ""
    self.photos = decoder.decodeObject(forKey: "photos") as? String ?? ""
    self.review = decoder.decodeObject(forKey: "review") as? String ?? ""
    self.reviews = decoder.decodeObject(forKey: "reviews") as? String ?? ""
    self.telephone = decoder.decodeObject(forKey: "telephone") as? String ?? ""
    self.brand = decoder.decodeObject(forKey: "brand") as? String ?? ""
    self.contactPoint = decoder.decodeObject(forKey: "contactPoint") as? String ?? ""
    self.contactPoints = decoder.decodeObject(forKey: "contactPoints") as? String ?? ""
    self.department = decoder.decodeObject(forKey: "department") as? String ?? ""
    self.duns = decoder.decodeObject(forKey: "duns") as? String ?? ""
    self.email = decoder.decodeObject(forKey: "email") as? String ?? ""
    self.employee = decoder.decodeObject(forKey: "employee") as? String ?? ""
    self.employees = decoder.decodeObject(forKey: "employees") as? String ?? ""
    self.founder = decoder.decodeObject(forKey: "founder") as? String ?? ""
    self.founders = decoder.decodeObject(forKey: "founders") as? String ?? ""
    self.foundingDate = decoder.decodeObject(forKey: "foundingDate") as? String ?? ""
    self.hasPOS = decoder.decodeObject(forKey: "hasPOS") as? String ?? ""
    self.legalName = decoder.decodeObject(forKey: "legalName") as? String ?? ""
    self.location = decoder.decodeObject(forKey: "location") as? Object ?? ""
    self.makesOffer = decoder.decodeObject(forKey: "makesOffer") as? String ?? ""
    self.member = decoder.decodeObject(forKey: "member") as? String ?? ""
    self.members = decoder.decodeObject(forKey: "members") as? String ?? ""
    self.naics = decoder.decodeObject(forKey: "naics") as? String ?? ""
    self.owns = decoder.decodeObject(forKey: "owns") as? String ?? ""
    self.seeks = decoder.decodeObject(forKey: "seeks") as? String ?? ""
    self.subOrganization = decoder.decodeObject(forKey: "subOrganization") as? String ?? ""
    self.taxID = decoder.decodeObject(forKey: "taxID") as? String ?? ""
    self.vatID = decoder.decodeObject(forKey: "vatID") as? String ?? ""
    self.branchOf = decoder.decodeObject(forKey: "branchOf") as? String ?? ""
    self.currenciesAccepted = decoder.decodeObject(forKey: "currenciesAccepted") as? String ?? ""
    self.openingHours = decoder.decodeObject(forKey: "openingHours") as? String ?? ""
    self.paymentAccepted = decoder.decodeObject(forKey: "paymentAccepted") as? String ?? ""
    self.priceRange = decoder.decodeObject(forKey: "priceRange") as? String ?? ""
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
     coder.encode(address, forKey: "address")"
     coder.encode(aggregateRating, forKey: "aggregateRating")"
     coder.encode(containedIn, forKey: "containedIn")"
     coder.encode(event, forKey: "event")"
     coder.encode(events, forKey: "events")"
     coder.encode(faxNumber, forKey: "faxNumber")"
     coder.encode(geo, forKey: "geo")"
     coder.encode(globalLocationNumber, forKey: "globalLocationNumber")"
     coder.encode(interactionCount, forKey: "interactionCount")"
     coder.encode(isicV4, forKey: "isicV4")"
     coder.encode(logo, forKey: "logo")"
     coder.encode(map, forKey: "map")"
     coder.encode(maps, forKey: "maps")"
     coder.encode(openingHoursSpecification, forKey: "openingHoursSpecification")"
     coder.encode(photo, forKey: "photo")"
     coder.encode(photos, forKey: "photos")"
     coder.encode(review, forKey: "review")"
     coder.encode(reviews, forKey: "reviews")"
     coder.encode(telephone, forKey: "telephone")"
     coder.encode(brand, forKey: "brand")"
     coder.encode(contactPoint, forKey: "contactPoint")"
     coder.encode(contactPoints, forKey: "contactPoints")"
     coder.encode(department, forKey: "department")"
     coder.encode(duns, forKey: "duns")"
     coder.encode(email, forKey: "email")"
     coder.encode(employee, forKey: "employee")"
     coder.encode(employees, forKey: "employees")"
     coder.encode(founder, forKey: "founder")"
     coder.encode(founders, forKey: "founders")"
     coder.encode(foundingDate, forKey: "foundingDate")"
     coder.encode(hasPOS, forKey: "hasPOS")"
     coder.encode(legalName, forKey: "legalName")"
     coder.encode(location, forKey: "location")"
     coder.encode(makesOffer, forKey: "makesOffer")"
     coder.encode(member, forKey: "member")"
     coder.encode(members, forKey: "members")"
     coder.encode(naics, forKey: "naics")"
     coder.encode(owns, forKey: "owns")"
     coder.encode(seeks, forKey: "seeks")"
     coder.encode(subOrganization, forKey: "subOrganization")"
     coder.encode(taxID, forKey: "taxID")"
     coder.encode(vatID, forKey: "vatID")"
     coder.encode(branchOf, forKey: "branchOf")"
     coder.encode(currenciesAccepted, forKey: "currenciesAccepted")"
     coder.encode(openingHours, forKey: "openingHours")"
     coder.encode(paymentAccepted, forKey: "paymentAccepted")"
     coder.encode(priceRange, forKey: "priceRange")"
     coder.encode(_id, forKey: "_id")"
}

}