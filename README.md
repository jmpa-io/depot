<!-- markdownlint-disable MD041 MD010 -->
[![depot](https://github.com/jmpa-io/depot/actions/workflows/local-cicd.yml/badge.svg)](https://github.com/jmpa-io/depot/actions/workflows/local-cicd.yml)
[![depot](https://github.com/jmpa-io/depot/actions/workflows/local-README.yml/badge.svg)](https://github.com/jmpa-io/depot/actions/workflows/local-README.yml)

<p align="center">
  <img src="img/logo.png"/>
</p>

# `depot`

```diff
+ 📦 A repository to store anything used across all projects in this org (eg.
+ generic scripts, cloudformation templates, github action workflows). Used in
+ conjunction with the https://github.com/jmpa-io/root-template.
```

## Scripts

script|description
---|---
[bin/00-clear-action-runs.sh](bin/00-clear-action-runs.sh) | Clears all GitHub Action runs for a given GitHub repository.
[bin/00-commit.sh](bin/00-commit.sh) | Commits back to the repository the script is run in, as the GitHub Actions user.
[bin/00-dispatch.sh](bin/00-dispatch.sh) | Trigger repository_dispatch event for child repositories using this template.
[bin/00-invalidate-cloudfront-distribution.sh](bin/00-invalidate-cloudfront-distribution.sh) | Invalidate files in the CloudFront cache, to make it quicker to update the deployed website.
[bin/00-list-repository-topics.sh](bin/00-list-repository-topics.sh) | Lists all topics for a given GitHub repository in a given org.
[bin/00-README.sh](bin/00-README.sh) | Generates a README.md, using a found README.md template.
[bin/10-lint.sh](bin/10-lint.sh) | Lints everything!
[bin/20-test.sh](bin/20-test.sh) | Tests everything!
[bin/30-deploy.sh](bin/30-deploy.sh) | For each given cloudformation template, deploy it to the authed AWS account.
[bin/40-sync.sh](bin/40-sync.sh) | Uploads the dist directory to S3 for the desired website.

