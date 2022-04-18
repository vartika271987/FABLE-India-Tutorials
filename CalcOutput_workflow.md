---
title: CalcOutput_workflow.md
output: html_notebook
editor_options: 
  chunk_output_type: inline
---

### Running a `calcOutput` function
# 1. The `madrat` package should be installed and loaded
* this means that the `madrat` structure and settings have to be defined which happens by first installation of the package. In particular, the `mainfloder` directory for input data and outputs has to be defined.

-   load the package. 

    ```{r}
    library(madrat)
    ```

-   two functions to check and set the `madrat` configuration:

    1.  `getConfig()` lists the full configuration. Among other settings, one can see the location of the inputdata directory (`$mainfolder`) and other important subfolders.
    2.  `setConfig()` is used to change some of the default settings. Usually applies on forcing the usage of cache files from the `cache` folder. The default setting is to calculate functions without usage of cached files. However, this can take quite some time sometimes, and it's then better to use a cace file. This is explained in the following section.

**2. Using the cached files**

-   Set the configuration correctly:

    -   `setConfig(forcecache=TRUE)`
    
-   Make sure that the cache file exist in the local `cache` folder.

    -   If it doesn't exist locally, the forcing of cache will have no effect and the data will be fully calculated again. Copy the file instead from the folder on the cluster: `"/p/projects/rd3mod/inputdata/cache/default"`

**3. Example: `caclProcessing_shares()` from the `mrland` package**



    ```{r}
    calcProcessing_shares<-function(){
    massbalance<-calcOutput("FAOmassbalance",aggregate = F)
    ksd<-magpiesets::findset("ksd")
    kpr<-magpiesets::findset("kpr")
    ```

    
