Updated Tue Jul 03 2018 13:52:50 GMT+0000 (UTC)

![](http://core.crane.ai:5000/uploads/birdsm.png){.birdmini}

###### Project Readme created by Elly using Crane v3.12

## newdbinactiontest

![](http://core.crane.ai:5000/uploads/directfromsketch-thumb.png)

#### Overview

*Note: This document is a high level version of NEWDBINACTIONTEST. It
references features such as Log in Page .*

Newdbinactiontest is a new app for ios where people can upload friends
and family and share and like the general category of the project is
news.. Over the progress of the project the source code can be found on
a private repo in github
[craneai/newdbinactiontest](http://www.github.com/craneai/newdbinactiontest).
Team members can access the following assets\
\
• wireframe of screen details\
• api explorer\
• project plan

\

#### Key Features

• Log in Page\
which user

\

#### Starting the server

The fastest way to get an environment to run NEWDBINACTIONTEST is with
NPM.

                        $ git clone https://github.com/craneai/newdbinactiontest.git
                        $ npm install

\

#### User Stories

user can Forgot your password? on log in view

\

#### Technology

##### Filesystem

All of the files to deploy NEWDBINACTIONTEST live are in this central
repository. Within the project you will find the following directories
and files, logically grouping common systems, common assets and
componets. You will see something like this:

                NEWDBINACTIONTEST/                           # Primary system application
                ├── server/                             * NodeJS server - core api
                │   ├── api
                │   ├── services
                │   ├── utils                           # Data utilities
                │   └── models
                ├── for ios/                       # Application
                │   └── styles
                ├── prototype/                          # prototype
                │   └── modules
                ├── admin/                              # Admin tool for database
                │   └── adminMongo
                ├── test-reports/
                │   ├── coverage
                └────── code-quality

##### Server

node

Node.js is a platform built on Chrome's JavaScript runtime for easily
building fast and scalable network applications. Node.js uses an
event-driven, non-blocking I/O model that makes it lightweight and
efficient, perfect for data-intensive real-time applications that run
across distributed devices.

##### Database

mongodb

MongoDB is a document database with the scalability and flexibility that
you want with the querying and indexing that you need. MongoDB stores
data in flexible, JSON-like documents, meaning fields can vary from
document to document and data structure can be changed over time. The
document model maps to the objects in your application code, making data
easy to work with Ad hoc queries, indexing, and real time aggregation
provide powerful ways to access and analyze your data MongoDB is a
distributed database at its core, so high availability, horizontal
scaling, and geographic distribution are built in and easy to use.
MongoDB is free and open-source, published under the GNU Affero General
Public License
