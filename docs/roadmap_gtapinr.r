# GTAP in R Workshop Script - roadmap_gtapinr.R
# Global Trade Analysis (GTAP), Purdue University
# 03/18/2024
# Name:

########################  Setting Up ##########################

# Install packages:
{...}

# Set working directory to the workshop folder: 
{...}

##################### Running GTAP in R #######################

#### Loading and exploring the GTAP database ####

#### Loading the GTAP data files

## Task 1: Create `database` list which reads in the GTAP basedata, parameters and set files in R

{...}

#### Extracting Data in the GTAP Database

## Task 2: Extracting the `vmfp` header in the `database` list

{...}

## Task 3: Filter for `food` elements in `acts` set in `vmfp` array object

{...}

## Task 4: Convert the `vmfp` array into a `data.frame.table` object

{...}

#### Exploring the data

## Task 5: Plot the `vmfp_food` object using `barplot()` function

{...}

#### Initializing the GTAP model file and database in R #### 

## Task 6: Assign model file and database after initializing a `GEMModel` object.

{...}

#### Setup the model closure and shocks #### 

## Task 7: Define the exogenous variables in model closure

{...}

## Task 8: Setting shocks to all exogenous variables in the `GEModel` object to zero

{...}

## Task 9: Applying shocks to key exogenous variables in the `GEModel` object

{...}

#### Solving the model and viewing model outputs #### 

## Task 10: Solve the `GEModel` object using Euler method with 3 iterations and 1-step and 6-step solution

{...}

## Task 11: Extract the percent changes in total output in each region and plot

{...}

## Task 12: Extract the updated value of vmfp for the food sector and plot

{...}
