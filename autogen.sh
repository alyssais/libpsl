# !/bin/sh -e

if test -z `which autoreconf`; then
  echo "No autoreconf found. You must install the autoconf package."
  exit 1
fi

mkdir m4 2>/dev/null

autoreconf --install --force --symlink || exit $?

echo
echo "----------------------------------------------------------------"
echo "Initialized build system. For a common configuration please run:"
echo "----------------------------------------------------------------"
echo
echo "./configure"
echo