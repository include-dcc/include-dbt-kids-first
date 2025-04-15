### Setting up configuration files

- [ ] Update items marked by `TODO` in [`dbt_project.yml`](./dbt_project.yml).
- [ ] Update items marked by `TODO` in [`profiles.yml`](./profiles.yml). This
      is the profile used by CI tools to test the dbt project

### Deployment

It is beyond the scope of this guide for instructions on how to configure the
deployment and scheduling of dbt models using Jenkins. Work with
[d3b-center/devops](https://github.com/orgs/d3b-center/teams/devops) team for
guidance on how to deploy.

To see an example of how dbt may be deployed at the D3B center, see the
[`d3b-study-transforms`](https://github.com/d3b-center/d3b-dbt-study-transforms)
repository. The dbt models in that repository are configured to deploy
[here](https://github.com/kids-first/aws-infra-jenkins-shared-libraries/blob/master/vars/dbt_study_transforms.groovy).


## Repository Description

Update the repositories description with a short summary of the repository's
intent.
Include an appropriate emoji at the start of the summary.

Add a handful of tags that summarize topics relating to the repository.
If the repository has a documentation site or web page, add it next to the
repository description.

## Important information

### Releases

This repository is setup to take advantage of the [d3b-release-maker](https://github.com/d3b-center/d3b-release-maker/).
Please follow the instructions there to build releases.

### Linting

This repository is setup to take advantage of the [GitHub Super Linter](https://github.com/marketplace/actions/super-linter).

#### SQLFluff

[SQLFluff](https://sqlfluff.com/) is a SQL linter used here to ensure code
quality for SQL files. [`.sqlfluff`](./.sqlfluff) is the configuration file
used for linting SQL files. To lint the entire project run:

```sh
sqlfluff lint .
```

### DBT Resources

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked
  questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions
  and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's
  development and best practices
