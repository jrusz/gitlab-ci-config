concurrent = 160
check_interval = 0

[session_server]
session_timeout = 1800

[[runners]]
name = "terraform"
limit = 120
url = "https://gitlab.com/"
token = "{{ terraform_token }}"
executor = "custom"
builds_dir = "~/builds"
cache_dir = "~/cache"
[runners.custom_build_dir]
[runners.cache]
[runners.cache.s3]
[runners.cache.gcs]
[runners.cache.azure]
[runners.custom]
prepare_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/prepare"
prepare_exec_timeout = 43200
run_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/exec"
cleanup_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/cleanup"

[[runners]]
name = "shell"
url = "https://gitlab.com/"
token = "{{ shell_token }}"
executor = "shell"
builds_dir = "~/builds-shell"
cache_dir = "~/cache"
[runners.custom_build_dir]
[runners.cache]
[runners.cache.s3]
[runners.cache.gcs]
[runners.cache.azure]

[[runners]]
name = "terraform/openstack"
limit = 35
url = "https://gitlab.com/"
token = "{{ terraform_openstack_token }}"
executor = "custom"
builds_dir = "~/builds-openstack"
cache_dir = "~/cache"
[runners.custom_build_dir]
[runners.cache]
[runners.cache.s3]
[runners.cache.gcs]
[runners.cache.azure]
[runners.custom]
prepare_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/prepare"
prepare_exec_timeout = 43200
run_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/exec"
cleanup_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/cleanup"
