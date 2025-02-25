# Can Renovate upgrade Ubuntu packages (i.e. `locales`)?

For example making use of the `deb` datasource:

- https://docs.renovatebot.com/modules/datasource/deb/

See:

1. ASDF dependency on (outdated) Nginx:
   - [`.tool-versions`](./.tool-versions)
1. Renovate config trying to solve it:
   - [`renovate.json`](./renovate.json)
1. PRs by Renovate
   - https://github.com/MPV/renovate-ubuntu-locales/pulls?q=sort%3Aupdated-desc+is%3Apr+author%3Aapp%2Frenovate
1. Mend dashboard:
   - https://developer.mend.io/github/MPV/renovate-ubuntu-locales
