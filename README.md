# Score with Zementis
Adapa scoring engine integrated with IBM SPSS

![Map](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Score-with-Zementis/master/Screenshot/Illustration1.png)
![Map](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Score-with-Zementis/master/Screenshot/Illustration2.png)



---
Requirements
----
- IBM SPSS Modeler v16.0 or later
- IBM SPSS Modeler 'R Essentials' Plugin
- R 2.15.x or R 3.1

More information here: [IBM Predictive Extensions][2]


---
Installation instructions
----
1. Download the extension: [Download][3] 
2. Close IBM SPSS Modeler. Save the .cfe file in the CDB directory, located by default on Windows in "C:\ProgramData\IBM\SPSS\Modeler\16\CDB" or under your IBM SPSS Modeler installation directory.
3. Restart IBM SPSS Modeler, the node will now appear in the Model palette.

---
R Packages used
----
The R packages will be installed the first time the node is used as long as an Internet connection is available.
- [httr][4]
- [plyr][11]
- [XML ][13]

---
Documentation and samples
----
- Find a PDF with the documentation of this extension in the [Documentation][5] directory
- There is a sample available in the [example][6] directory


---
License
----

[Apache 2.0][1]


Contributors
----

  - Armand Ruiz ([armand_ruiz](https://twitter.com/armand_ruiz))


[1]: http://www.apache.org/licenses/LICENSE-2.0.html
[2]:https://developer.ibm.com/predictiveanalytics/downloads/#tab2
[3]:https://github.com/IBMPredictiveAnalytics/Score-with-Zementis/raw/master/Example/ZementisPost.cfe
[4]:https://cran.r-project.org/web/packages/httr/index.html
[5]:https://github.com/IBMPredictiveAnalytics/Score-with-Zementis/raw/master/Documentation/Geocoding-SPSSModelerExtension.pdf
[6]:https://github.com/IBMPredictiveAnalytics/Score-with-Zementis/tree/master/Example
[10]:https://developer.ibm.com/predictiveanalytics/2015/03/11/tweets-during-esri-dev-summit-and-bnp-paribas-open/
[11]:https://cran.r-project.org/web/packages/plyr/
[12]:https://developer.ibm.com/predictiveanalytics/2015/03/11/crime-prediction-using-ibm-spss-modeler-and-arcgis/
[13]:https://cran.r-project.org/web/packages/XML/index.html
[20]:https://www.youtube.com/watch?v=5VpnKVsoxjI
