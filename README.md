# Introduction 
This repo contains the Packer code for building images to a Shared Image Gallery in Azure. The process was originally created for an automated process of creating Azure Virtual Desktop, but can also be used for other cases. 

Packer Documentation URL: https://www.packer.io/docs

The process begins with Packer using a Service Principal to create a temp Resource Group and temp Virtual Machine. Packer then uses WinRM to run commands against the target machine as definied by the Packer "provisioners". The Build file has all the provisioners that are run on the machine. Once the process is completed on the temp VM, the Packer performs a sysprep and then makes a copy of the image for the Shared Image Gallery. 


# Getting Started
To build the Packer code locally, use the following process:
1.  Ensure Packer is installed and your PATH variable has been updated to look at Packer. Installation instructions: https://learn.hashicorp.com/tutorials/packer/get-started-install-cli
2.	Clone the repository to your local machine using Azure DevOps, Git, or any Git application
3.	Once the repository is cloned, set a local environment variable for CLIENT_SECRET. I suggest using Bash as PowerShell can be tricky. (e.g. export CLIENT_SECRET=*******) The Client Secret comes from the Service Principal with permissions to run the builds. 
4.	Run the Packer build command from the Windows directory and specificy the variable file you wish to use. The variable file will dictate which image is created and the gallery it's placed in. Example command: packer build -var-file=../../win11_vars.pkvars.hcl .
5.	Once the build is running, keep an eye on the terminal for any errors that may occur and address accordingly

# Contribute
If you wish to contribute, make a development branch and a PR when you're ready. Be sure to have your PR approved before it's merged into the main branch. 

