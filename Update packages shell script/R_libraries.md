* Create a folder for local R libraries developed for MAgPIE
* Fork and then clone R libraries which are needed. They are at https://github.com/orgs/pik-piam/repositories
* You can run the script to update the libraries all at once. Navigate to the main folder where all the libraries. Make sure that the update_packages.sh exists in the folder. Run the code: `sh update_packages.sh`
Before beginning to work on any functions, `update_packages` need to be run, to ensure the latest developments from all the packages are pulled locally, to avoid conflicts. 
Go to RStudio and update packages before beginning any work 
Migrate to the Project folder of the library, in which the function is on which you want to work on 
For example, if you want to work on the function `calcEATLancetDiets`, then you need to have the `mrland` project folder selected on your Rstudio interface. 

Open the file of the function that you want to work on from `File` option at the bottom right window of RStudio 
![image](https://user-images.githubusercontent.com/51452385/164454292-a573e907-9cb4-4c9c-a62b-4b391fa21d58.png)
