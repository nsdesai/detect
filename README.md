# detect
Last updated 05/25/24

##
INSTALLATION

The detect software, though written in MATLAB, can be used by researchers whether or not they have access to MATLAB itself. Users who do have MATLAB installed on their computers ("MATLAB users") should follow the first set of directions to install the software. Users who do not have MATLAB but do have a Windows computer ("Other users") should follow the second set.

(1) MATLAB users

Download all files and folders from this page. Press the green button at top right ("Code'), select "Download ZIP", and then extract the contents of the downloaded ZIP file into a single folder located somewhere on your hard drive. For example, the folder could be located within the MATLAB folder in Documents, but this is not necessary. Add the folder to the MATLAB path. To do this, enter the following at the MATLAB command line:

      folderName = 'C:\Users\YourName\Documents\MATLAB\detect_software';

      addpath folderName

      savepath

Remember, of course, to replace folderName with the name of the folder into which you placed the download..

These steps will install not only code specific to this project but code written by others of which the project makes use. This code includes:

      CaImAn (CNMF algorithm) from the Flatiron Institute: https://github.com/flatironinstitute/CaImAn.

      PatchWarp (motion correction and image registration) from Hattori and Komiyama: https://github.com/ryhattori/PatchWarp/tree/main 

      MLSpike (spike estimation) from Deneux and colleagues: https://github.com/MLspike/spikes 

      Brick (toolbox of general functions to speed up MATLAB) from Thomas Deneux: https://github.com/MLspike/brick 

      Earth Mover's Distance (an implementation of the EMD statistic) from Ulaş Yılmaz: https://github.com/ulasyilmaz/earth-movers-distance

(2) Other users

Windows users who do not have a MATLAB license should go to this [OneDrive site](https://1drv.ms/f/s!AiPVSLtiwPKMhJhOWBmECMGZNqGBcA?e=nmFyGt). The site includes three subfolders: for_redistribution, for_redistribution_files_only, and for_testing. Download these three folders and place them in a folder on your computer (it doesn't matter where or what the folder is named).

Look inside the subfolder for_redistribution for an executable called MyAppInstaller_web.exe. Running this program will install both the project's software and MATLAB Runtime. The second of these will be downloaded from the web, meaning that your computer will need an Internet connection. The process will take ~10 minutes.

Once the installation is completed, you should see an app called detect (or perhaps NINDSLCSMS) in your computer's list of applications. You should be able to run it like any other Windows app. (Note: Depending upon your computer's security settings, the first time you run detect, you might get a message asking whether you want Windows Firewall to accept actions detect wants to make. Select ACCEPT.) 

##
GETTING STARTED

Watch the supplementary videos here:   [Supplementary Videos](https://gcc02.safelinks.protection.outlook.com/?url=https%3A%2F%2Fnih-my.sharepoint.com%2F%3Af%3A%2Fg%2Fpersonal%2Fdesainis_nih_gov%2FEuKiVyz5UBFMjg8CoVzx94ABetN5-nSipYkW2NRpmuuRjw%3Fe%3DVEelZf&data=05%7C02%7Cniraj.desai3%40nih.gov%7C0d5097423c0f46f58b5908dc49267e4b%7C14b77578977342d58507251ca2dc2b06%7C0%7C0%7C638465676890386203%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=3MrAywGqzQw%2B9m50b1SS0LKGu4VB1KOwMDiVaVjtqA0%3D&reserved=0)


##
LICENSE

This software was written for the Section on Circuits, Synapses, and Molecular Signaling (CSMS) at the National Institute of Neurological Disorders and Stroke (NINDS). Permission is granted, subject to terms of the GNU Public License 3.0, for others to download, use, modify, and distribute the software, as long as it remains open source and the same permissions apply. 


##
DISCLAIMER

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT
OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR 
THE USE OR OTHER DEALINGS IN THE SOFTWARE.


##
CONTACT

Niraj S. Desai (NSD, niraj.desai3@nih.gov)
