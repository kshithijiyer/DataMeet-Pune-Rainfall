# DataMeet Pune Rainfall Data (Unpivoted) 
This is a script which I developed for DataMeet Pune which takes an .xls file which has rainfall data of India and generates state-wise .csv files in an unpivoted format which can be useful for further analysis.

## What does the script do?

Look at the [unpivoting example.xlsx](https://github.com/kshithijiyer/DataMeet-Pune-Rainfall/raw/master/data/unpivoting%20example.xlsx) file and this [link](https://github.com/datameet-pune/datameet-pune.github.io/wiki/Table-Un-Pivot) you'll get a hang of what the script does. :)

## About the data?

**Source of Data:** http://www.indiawaterportal.org/articles/district-wise-monthly-rainfall-data-list-raingauge-stations-india-meteorological-department

**Issues with the Raw data:** ```Chandigarh``` data is given under ```Chhattisgarh``` sheet. A sepreated sheet had to be manually created so that the script can run smoothy on the .xls file. 

## List of R packages needed by the code:
1. [xlsx](https://cran.r-project.org/web/packages/xlsx/index.html)
2. [tidyr](https://cran.r-project.org/web/packages/tidyr/index.html)

## Manual inputs needed to the script.
1. You'll have to choose the ```.xlsx``` file which has to be processed. However the code does have manual logic as well which can be uncommented and you can create .CSV files of specific sheets instead of the all the sheets in the .xls file.
2. The ```.csv``` file would be store in the ```./Processed-Data``` folder and You'll have to manually add ```"Sr.No",``` to the start of the .csv file.

## What can be done with this data?
1. A choropleth map of the country with a timeline, the colours changing to show amount of rainfall.
2. A predective model for drought detection can be created. 

## Built with 
[RStudio](https://www.rstudio.com/products/rstudio/)

## Author
[Kshithij Iyer](https://www.linkedin.com/in/kshithij-iyer/)

## Organization under which it was done:
[DataMeet Pune](https://datameet-pune.github.io/)

