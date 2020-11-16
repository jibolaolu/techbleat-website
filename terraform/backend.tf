terraform {
  backend "s3" {
    bucket = "seunadio-tfstate"
    key    = "techbleat/2020sessions.tfstate"
    region = "eu-west-2"
  }
}
