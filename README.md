# Concert Gross Revenue Prediction
**Metis Project 02**

For this project, ticket sales data and artist data were scraped for over 850 shows at the Fox Theater in Oakland, CA. The data was collected for shows between February 2009 and September 2019.

The data was cleaned in a postgreSQL database and ultimately used to create a linear regression model that predicts the gross revenue for a single show. EDA, feature engineering, and regularization were used to optimize the model, and the final model resulted in a mean absolute percent error of less than 10% and R-squared of 0.91.

In addition, a [Tableau dashboard](https://public.tableau.com/profile/andrew.graves8383#!/vizhome/Fox_Theater_Dashboard/Dashboard) was created to display quarterly gross revenue as a KPI. The dashboard includes date filters to view different time intervals between 2009-2019, and displays ticket sales trends and how they’re affected by the genre of the artist and the day of the week of the show.

See below for a brief description of the Jupyter Notebooks used for this project.

## Jupyter Notebook Organization/Project Process

- **SQL_Data_Cleaning**
	- The ticket sales dataset is cleaned
	- Includes the following features:
		- Event date
		- Number of Shows
		- Headliner
		- Support
		- Gross USD
		- Venue Capacity
		- Percentage of Tickets Sold
		- Minimum Ticket Price
		- Maximum Ticket Price
	- In addition, the following features are created:
		- Time-based features
			- Year, Month, Season, Day of Week, Time of Week
		- Show Type
		- Number of Supporting Acts
- **Artist_Feature_Web_Scraping**
	- Artist data is scraped from musicbrainz.org and wikipedia.org
	- The following features are created:
        - Years active
            - Difference between date of show and date of artist's first album release.
        - Miles from hometown
            - Distance between artist hometown and Oakland, CA
        - US Region
            - US region of artist hometown 
            - If artist is not from the US, then 'International' is the assigned region.
        - Local or Not
            - If artist is within 75 miles of Fox Theater, then they are considered local.
            - Otherwise, the artist is labeled as from the US or international.
        - Genre
            - List of genres associated with artist	
- **Modeling_for_Gross_USD_Target**
	- The best linear regression model is determined to predict gross revenue for a single concert.
	- The steps taken in this notebook include the following:
		- EDA
			- Look at correlation among features
			- Investigate outliers
			- Check feature distributions
		- Evaluate baseline model
		- Improve model
			- Remove multicollinear features
			- Perform feature engineering
		- Implement regularization
		- Evaluate final model
		- Analyze beta coefficients
- **Tableau_Prep**
	- Dataframes are manipulated as necessary and exported as CSV files to use in Tableau to create gross quarterly revenue dashboard.