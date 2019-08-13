workflow "Deploy Release" {
  on = "check_run"
  resolves = [" Github Create Release"]
}

action " Github Create Release" {
  uses = "./main.pdf"
  secrets = ["GITHUB_TOKEN"]
   env = {VERSION  = "2.1"}
  
}
