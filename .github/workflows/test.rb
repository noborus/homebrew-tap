on:
  workflow_dispatch:

jobs:
  test:
    name: test
    runs-on: macos-latest

    steps:
      - name: Check out code
        uses: actions/checkout@v2

      - name: test
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: |
          ls *.rb | xargs -n 1 brew install --formula --build-from-source
