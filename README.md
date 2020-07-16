
# Table of Contents

1.  [Usage](#org8bc42bf)
2.  [Required Packages](#org45fc8a4)



<a id="org8bc42bf"></a>

# Usage

Run with SBCL, slime, or preferred compiler

    (push "~/Projects/caveman2/" asdf:*central-registry*) ;;put your path to project as the second parameter
    (ql:quickload :caveman2_project)
    (caveman2_project:start :port 5000)


<a id="org45fc8a4"></a>

# Required Packages

[SBCL](http://www.sbcl.org/getting.html) (or from package manager)
[Quicklisp with vecto](https://www.quicklisp.org/beta/)

