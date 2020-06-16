# Conservis Charts Repository

Welcome to the Conservis charts repository. All charts are in the [charts](./charts) directory.

## Adding the chart Repository

`helm repo add conservis https://conservis.github.io/helm-charts`

## Contributing

Feel free to fork our repo and create a pull request with any new features or bug fixes.

## Contacting us

For issues or concerns, please fill out an issue or email us at bamboo@conserviscorp.com.

## How It Works

GitHub Pages points to the `gh-pages` branch so anything pushed to that branch will be publicly available. We are using a couple github actions to automate testing and deployment of charts. It is based off the example [here](https://github.com/helm/charts-repo-actions-demo) utilizing https://github.com/helm/chart-releaser-action.

## Process to add a chart to the repository

1. Create a branch or fork for your new chart
1. Initialize new chart with `make create name=mychart` or by copying in your work from outside
1. After chart development is done, run (at minimum) `helm lint mychart/` to validate yaml and templates
1. Don't forget to bump your chart version (if needed)
1. Create a pull request with the new chart or updates
1. Once the PR is approved, the automation will publish the chart to our repository

## Notes about current testing

Testing is currently done with Helm3
