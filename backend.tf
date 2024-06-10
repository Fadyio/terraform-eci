terraform {
  cloud {
    organization = "Fadyio"

    workspaces {
      name = "fem-eci-tfe"
    }
  }
}
