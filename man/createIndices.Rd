% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Achilles.R
\name{createIndices}
\alias{createIndices}
\title{Create indices on Achilles results tables and concept hierarchy}
\usage{
createIndices(connectionDetails, resultsDatabaseSchema,
  oracleTempSchema = resultsDatabaseSchema, sqlOnly = FALSE,
  cdmVersion = "5")
}
\arguments{
\item{connectionDetails}{An R object of type ConnectionDetail (details for the function that contains server info, database type, optionally username/password, port)}

\item{resultsDatabaseSchema}{string name of database schema that holds the results tables for indexing. On SQL Server, this should specifiy both the database and the schema, so for example 'results.dbo'.}

\item{oracleTempSchema}{For Oracle only: the name of the database schema where you want all temporary tables to be managed. Requires create/insert permissions to this database.}

\item{sqlOnly}{if TRUE, only the SQL code will be generated}

\item{cdmVersion}{Define the OMOP CDM version used:  currently support only "5".  Default = "5"}
}
\value{
nothing is returned
}
\description{
\code{createIndices} executes script to create indicies on the Achilles tables.
}
\details{
\code{createIndices} executes script to create indicies on the Achilles tables.
}
\examples{
\dontrun{
  connectionDetails <- DatabaseConnector::createConnectionDetails(dbms="sql server", server="myserver")
  createIndices <- createIndices(connectionDetails, resultsDatabaseSchema="scratch")
}
}
