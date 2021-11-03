build {
  sources = ["source.azure-arm.basic"]

  provisioner "powershell" {
    elevated_user     = "packer"
    elevated_password = "P@ssw0rd!"
    script            = "./powershell/chocolate.ps1"
  }

  #Chocolatey Commands for Installing Applications
  provisioner "powershell" {
    elevated_user     = "packer"
    elevated_password = "P@ssw0rd!"
    inline = [
      "choco install firefox -y",
      "choco install adobereader -y",
      "choco install notepadplusplus.install -y",
      "choco install vscode -y"
    ]
  }

  provisioner "windows-update" {
  }

  provisioner "windows-restart" {
  }

  # Must run last!
  provisioner "powershell" {
    script = "./powershell/sysprep.ps1"
  }

}