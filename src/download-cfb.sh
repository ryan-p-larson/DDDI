# College Football data download script
#
# Output should be a folder with cfb from
# Repole has data from 1978-2014
# http://www.repole.com/sun4cast/data.html

# Create a folder to hold all the data
mkdir -p cfb;

# download all of the data files
#wget -i cfb-urls -U "Opera";
wget http://www.repole.com/sun4cast/stats/cfb2014lines.csv http://www.repole.com/sun4cast/stats/cfblines.zip http://www.repole.com/sun4cast/stats/bowl2014lines.csv http://www.repole.com/sun4cast/stats/bowllines.zip -U "Opera";

# unzip only the csv files
unzip bowllines.zip -x *.xml -d cfb -u -q --quiet;
unzip cfblines.zip -x *.xml -d cfb -u -q;

# remove the zips
rm *.zip;

# move the csv to the data folder
mv *.csv cfb;
