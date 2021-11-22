provider "helm" {
  kubernetes {
    config_path = "${var.config_path}"
  }
}

### ELK logging implementation ###

## Services
module "filebeat" {
    source              = "./filebeat"
    chart_filebeat      = "${var.chart_filebeat}"
}

module "opendistro" {
    source              = "./opendistro"
    chart_opendistro      = "${var.chart_opendistro}"
}

#module "logstash" {
    source              = "./logstash"
    chart_logstash      = "${var.chart_logstash}"
}
