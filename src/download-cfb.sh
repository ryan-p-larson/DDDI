# College Football data download script

# Repole has data from 1978-2014
# http://www.repole.com/sun4cast/data.html

# Create a folder to hold all the data
mkdir -p cfb;

# download all of the data files
wget -i cfb-urls -U "Opera";

# unzip only the csv files
unzip bowllines.zip -x *.xml -d cfb -u --quiet;
unzip cfblines.zip -x *.xml -d cfb -u --quiet;

# remove the zips
rm *.zip;

# move the csv to the data file
mv *.csv cfb;

# and finally move the cfb folder to the data folder
mv cfb ../data/in;
