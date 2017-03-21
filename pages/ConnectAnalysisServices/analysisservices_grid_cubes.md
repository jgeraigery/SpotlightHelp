---
title: Cubes
last_updated: July 29, 2016
summary: "The Cubes grid shows information about the cubes that are currently defined on the Analysis Services server."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_grid_cubes.html
id: Storage_Cubes.CubesGrid
folder: ConnectAnalysisServices
---


## Name

The name of the cube.

## Database Name
 
The database to which the cube belongs.

## Created Time

Date and time the cube was created.

## Estimated Row

Estimated number of rows in the cube.

## Last Processed

Date and time the cube was last processed.

## Last Schema Update

Date and time the current schema object was last updated.

## Processing Mode

Index and aggregation settings for cube processing.

### Lazy Aggregations

Process data is available immediately after the data has been uploaded.

### Regular Processing

Process data is available after all aggregations have been computed.

## Processing Priority

Specify the priority for processing the measure group.

## Storage Location

Default storage location of data for the cube.

## Storage Mode

Default storage mode for the cube.

## State

The state of the objects in the database.

### Processed

All process-able objects in the database are processed. All major objects could be queried.

### Partially processed

At least one major process-able object is not processed. Some objects may not be query-able.

### Unprocessed

None of the objects in the database are processed. Objects cannot be queried.


{% include links.html %}
