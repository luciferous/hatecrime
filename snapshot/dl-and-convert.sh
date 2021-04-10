#!/bin/sh

set -e

curl -sL \
    -o2017q1.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/hate-crime-complaints-by-motivation-q1-2017.xlsx' \
    -o2017q2.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/hate-crime-complaints-by-motivation-q2-2017.xlsx' \
    -o2017q3.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/hate-crime-complaints-by-motivation-q3-2017.xlsx' \
    -o2017q4.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/hate-crime-complaints-by-motivation-q4-2017.xlsx' \
    -o2018q1.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2018/hate-crime-complaints-by-motivation-q1-2018.xlsx' \
    -o2018q2.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2018/hate-crime-complaints-by-motivation-q2-2018.xlsx' \
    -o2018q3.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2018/hate-crime-complaints-by-motivation-q3-2018.xlsx' \
    -o2018q4.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2018/hate-crime-complaints-by-motivation-q4-2018.xlsx' \
    -o2019q1.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2019/hate-crime-complaints-by-motivation-q1-2019.xlsx' \
    -o2019q2.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2019/hate-crime-complaints-by-motivation-q2-2019.xlsx' \
    -o2019q3.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2019/hate-crime-complaints-by-motivation-q3-2019.xlsx' \
    -o2019q4.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2019/hate-crime-complaints-by-motivation-q4-2019.xlsx' \
    -o2020q1.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2020/hate-crime-complaints-by-motivation-q1-202020.xlsx' \
    -o2020q2.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2020/hate-crime-complaints-by-motivation-q2-202020.xlsx' \
    -o2020q3.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2020/hate-crime-complaints-arrests-summary-q3-2020.xlsx' \
    -o2020q4.xlsx 'https://www1.nyc.gov/assets/nypd/downloads/excel/hate-crimes/2020/hate-crime-complaints-by-motivation-q4-2020.xlsx'

./to-csv.R 2017q1.xlsx "1st Qtr 2017"                 | sed -ne '/Precinct/,$ p' > 2017q1.csv
./to-csv.R 2017q2.xlsx "Hate Crime Stats-2Q 2017"     | sed -ne '/Precinct/,$ p' > 2017q2.csv
./to-csv.R 2017q3.xlsx "Motivation"                   | sed -ne '/Precinct/,$ p' > 2017q3.csv
./to-csv.R 2017q4.xlsx "Motivation"                   | sed -ne '/Precinct/,$ p' > 2017q4.csv
./to-csv.R 2018q1.xlsx "1Q2018 COMPLAINTS FOR WEB"    | sed -ne '/Precinct/,$ p' > 2018q1.csv
./to-csv.R 2018q2.xlsx "2Q Complts for Web"           | sed -ne '/Precinct/,$ p' > 2018q2.csv
./to-csv.R 2018q3.xlsx "3Q Complts for Web"           | sed -ne '/Precinct/,$ p' > 2018q3.csv
./to-csv.R 2018q4.xlsx "4Q HC Complaints"             | sed -ne '/Precinct/,$ p' > 2018q4.csv
./to-csv.R 2019q1.xlsx "HC Complaints"                | sed -ne '/Precinct/,$ p' > 2019q1.csv
./to-csv.R 2019q2.xlsx "HC Complaints"                | sed -ne '/Precinct/,$ p' > 2019q2.csv
./to-csv.R 2019q3.xlsx "3Q2019 HC Comp"               | sed -ne '/Precinct/,$ p' > 2019q3.csv
./to-csv.R 2019q4.xlsx "4Q2019 HC Comp"               | sed -ne '/Precinct/,$ p' > 2019q4.csv
./to-csv.R 2020q1.xlsx "1Q2020 HC Comp"               | sed -ne '/Precinct/,$ p' > 2020q1.csv
./to-csv.R 2020q2.xlsx "HC Complaints by Bias Motive" | sed -ne '/Precinct/,$ p' > 2020q2.csv
./to-csv.R 2020q3.xlsx "HC Complaints by Bias Motive" | sed -ne '/Precinct/,$ p' > 2020q3.csv
./to-csv.R 2020q4.xlsx "HC Complaints by Bias Motive" | sed -ne '/Precinct/,$ p' > 2020q4.csv

