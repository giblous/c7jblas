# c7jblas
JBlas fails on RHEL7/Centos7

cd /root

unzip /jblas-1.2.5.jar

mv /root/lib/static/Linux/amd64/sse3/libjblas.so /root/lib

chmod +x /root/lib/libjblas.so

export LD_LIBRARY_PATH=/root/lib

java -jar /jblas-1.2.5.jar

jshell
```
|  Welcome to JShell -- Version 11.0.18
|  For an introduction type: /help intro

jshell> System.loadLibrary("jblas");
|  Exception java.lang.UnsatisfiedLinkError: /root/lib/libjblas.so: /lib64/libm.so.6: version `GLIBC_2.23' not found (required by /root/lib/libquadmath.so.0)
|        at ClassLoader$NativeLibrary.load0 (Native Method)
|        at ClassLoader$NativeLibrary.load (ClassLoader.java:2445)
|        at ClassLoader$NativeLibrary.loadLibrary (ClassLoader.java:2501)
|        at ClassLoader.loadLibrary0 (ClassLoader.java:2700)
|        at ClassLoader.loadLibrary (ClassLoader.java:2662)
|        at Runtime.loadLibrary0 (Runtime.java:830)
|        at System.loadLibrary (System.java:1873)
|        at (#1:1)
```


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


# jblas 1.2.4

```
========================================================================================================================
 Package                        Arch                      Version                         Repository               Size
========================================================================================================================
Installing:
 lapack                         x86_64                    3.4.2-8.el7                     base                    5.4 M
Installing for dependencies:
 blas                           x86_64                    3.4.2-8.el7                     base                    399 k
 libgfortran                    x86_64                    4.8.5-44.el7                    base                    301 k
 libquadmath                    x86_64                    4.8.5-44.el7                    base                    190 k
```
