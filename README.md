# c7jblas
JBlas fails on RHEL7/Centos7

cd /root
unzip /jblas-1.2.5.jar

mv /root/lib/static/Linux/amd64/sse3/libjblas.so /root/lib
chmod +x /root/lib/libjblas.so

export LD_LIBRARY_PATH=/root/lib

java -jar /jblas-1.2.5.jar

yum search libgfortran

```
===========================================
libgfortran.i686 : Fortran runtime
libgfortran.x86_64 : Fortran runtime
libgfortran-static.i686 : Static Fortran libraries
libgfortran-static.x86_64 : Static Fortran libraries
libgfortran4.i686 : Fortran runtime v4
libgfortran4.x86_64 : Fortran runtime v4
libgfortran5.i686 : Fortran runtime v5
libgfortran5.x86_64 : Fortran runtime v5
```

yum install libgfortran5.x86_64

```
Dependencies Resolved

========================================================================================================================
 Package                        Arch                     Version                           Repository              Size
========================================================================================================================
Installing:
 libgfortran5                   x86_64                   8.3.1-2.1.1.el7                   base                   796 k
Installing for dependencies:
 libquadmath                    x86_64                   4.8.5-44.el7                      base                   190 k
```


java -jar /jblas-1.2.5.jar

```
-- org.jblas INFO jblas version is 1.2.4
Simple benchmark for jblas

Running sanity benchmarks.

checking vector addition... ok
checking matrix multiplication... ok
checking existence of dsyev...... ok
```
