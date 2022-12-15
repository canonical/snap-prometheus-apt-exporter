#/bin/bash

APT_CONF='/etc/apt/apt.conf'
CACHE='pkgcache'
SRC_CACHE='srcpkgcache'

cp -r /var/lib/snapd/hostfs/etc/apt/* /etc/apt/

cat <<EOF >> $APT_CONF
Dir::Cache::${SRC_CACHE} "${SNAP_DATA}/var/cache/apt/${SRC_CACHE}.bin";
Dir::Cache::${CACHE} "${SNAP_DATA}/var/cache/apt/${CACHE}.bin";
EOF

${SNAP}/bin/pkg-exporter --rootdir /var/lib/snapd/hostfs/ -d -t 1
