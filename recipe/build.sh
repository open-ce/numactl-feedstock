# *****************************************************************
#
# Licensed Materials - Property of IBM
#
# (C) Copyright IBM Corp. 2019, 2020. All Rights Reserved.
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
#
# *****************************************************************

libtoolize
$SRC_DIR/autogen.sh
$SRC_DIR/configure
make
mkdir -p $PREFIX/numactl
make install DESTDIR=$PREFIX/numactl
cp -R $PREFIX/numactl/usr/local/* $PREFIX/
