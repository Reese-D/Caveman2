
# Table of Contents

1.  [Usage](#orgc6d3fa8)
2.  [Required Packages](#orgee85ec3)



<a id="orgc6d3fa8"></a>

# Usage

Run with SBCL, slime, or preferred compiler

    (push "~/Projects/caveman2/" asdf:*central-registry*) ;;put your path to project as the second parameter
    (ql:quickload :caveman2_project)
    (caveman2\_project:start :port 5000)


<a id="orgee85ec3"></a>

# Required Packages

[SBCL](http://www.sbcl.org/getting.html) (or from package manager)
[Quicklisp with vecto](https://www.quicklisp.org/beta/)

