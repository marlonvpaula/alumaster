require "refile/s3"

aws = {
  access_key_id: "111573216641817",
  secret_access_key: "_Hn5cV0DVuhelxszbRd9bscRmeI",
  # region: "sa-east-1",
  bucket: "dje1zntec",
}
#Refile.cache = Refile::S3.new(prefix: "cache", **aws)
#Refile.store = Refile::S3.new(prefix: "store", **aws)