# Test by building an example from the tutorial.
# https://github.com/bazelbuild/examples/
# https://docs.bazel.build/versions/master/tutorial/cpp.html
set -exuo pipefail

cp -r ${RECIPE_DIR}/tutorial .
cd tutorial

cat >> .bazelrc <<EOF
build --logging=6
build --subcommands
build --verbose_failures
EOF

bazel build //main:hello-world
