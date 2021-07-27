### How is this went through?

#### with `yarn add -D gh-pages`

1. I've added yarn script `deploy` which build and push to github **gh-pages** branch.
2. I will make some changes on `devel` branch and push to github. Then I will make a PR on `main` from `devel`.
3. I will merge PR and push changes to `main`.
4. Then I have to run `yarn deploy` in local dev env to deploy to the github.
5. Then github pages will automatically pick that branch **gh-pages** and serves it as static site.

#### with **Github Actions**

1. I ve defined a [build-and-deploy](https://github.com/minlaxz/react-page/blob/844a328b001e7d5b8f22cad6ad5c48c949561bb5/.github/workflows/deploy-pages-on-PR-to-main.yml#L10) action and trigger at [on push](https://github.com/minlaxz/react-page/blob/844a328b001e7d5b8f22cad6ad5c48c949561bb5/.github/workflows/deploy-pages-on-PR-to-main.yml#L2) event on main branch.
2. I will make some changes on `devel` branch and push to github. Then I will make a PR on `main` from `devel`.
3. I will merge PR and push changes to `main`.
4. Then **github actions** will trigger and [build](https://github.com/minlaxz/react-page/blob/844a328b001e7d5b8f22cad6ad5c48c949561bb5/.github/workflows/deploy-pages-on-PR-to-main.yml#L19) and deploy the [static folder](https://github.com/minlaxz/react-page/blob/844a328b001e7d5b8f22cad6ad5c48c949561bb5/.github/workflows/deploy-pages-on-PR-to-main.yml#L26) to [**gh-pages**](https://github.com/minlaxz/react-page/blob/844a328b001e7d5b8f22cad6ad5c48c949561bb5/.github/workflows/deploy-pages-on-PR-to-main.yml#L25) branch.


Also I have pointed minlaxz.github.io to github.minlaxz.me with [CNAME](https://github.com/minlaxz/minlaxz.github.io/blob/5c77e57c9ca39f2adb824746841aef46dcbc6608/CNAME#L1)

So this project should be available at github.minlaxz.me/react-page/