module "EC2_Instance" {

  source        = "git::https://github.com/varmaaradhula/terraform-homeoffice.git//modules/EC2_Instance"
  public_key    = data.vault_kv_secret_v2.pubkey.data["public_key"]
  amiId         = var.amiId
  instance_type = var.instance_type
  sgname        = var.sgname
  tagname       = var.tagname
}