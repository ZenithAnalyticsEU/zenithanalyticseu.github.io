#!/bin/bash
for i in index transportation energy company
do
  sed "s/orange.css/blue.css/" $i.html | sed 's|href="css/|href="../css/|g' | sed 's|src="images/|src="../images/|g' | sed 's|href="images/|href="../images/|g' | sed 's|src="js/|src="../js/|g' | sed 's|href="style.css"|href="../style.css"|g' | sed 's|<option id="en" value="en" selected>English</option>|<option id="es" value="es" selected>Espa\&ntilde;ol</option>|g' | sed 's|<option id="es" value="es">Espa\&ntilde;ol</option>|<option id="en" value="en" selected>English</option>|g'> es/$i.html
  sed 's|href="css/|href="../css/|g' $i.html | sed 's|src="images/|src="../images/|g' | sed 's|href="images/|href="../images/|g' | sed 's|src="js/|src="../js/|g' | sed 's|href="style.css"|href="../style.css"|g' > en/$i.html
done
