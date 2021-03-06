% Generated by roxygen2 (4.0.2): do not edit by hand
\name{dbGetQueryBatchWise}
\alias{dbGetQueryBatchWise}
\title{Retrieve data from server using batchwise loading.}
\usage{
dbGetQueryBatchWise(connection, query = "", batchSize = 1e+05)
}
\arguments{
\item{connection}{The connection to the database server.}

\item{query}{The SQL statement to retrieve the data}

\item{batchSize}{The number of rows that will be retrieved at a time from the server. A larger
batchSize means less calls to the server so better performance, but too large a batchSize could
lead to out-of-memory errors.}
}
\value{
A data frame containing the data retrieved from the server
}
\description{
This function loads the data from the server in batches. Should be used when loading large sets from a Postgres database to
prevent the \code{no description because toString() failed} error.
}
\details{
Retrieves data from the database server and stores it in a data frame.
}
\examples{
\dontrun{
  connectionDetails <- createConnectionDetails(dbms="mysql", server="localhost",user="root",password="blah",schema="cdm_v4")
  conn <- connect(connectionDetails)
  dbGetQueryBatchWise(conn,"SELECT * FROM person")
  dbDisconnect(conn)
}
}

