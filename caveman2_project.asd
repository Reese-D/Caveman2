(defsystem "caveman2_project"
  :version "0.1.0"
  :author "Reese De Wind "
  :license ""
  :depends-on ("clack"
               "lack"
               "caveman2"
               "envy"
               "cl-ppcre"
               "uiop"

               ;;not sure
               "asdf"
               "drakma"
               "md5"

	       ;;json parsing
	       "yason"
	       "alexandria"

               ;; for @route annotation
               "cl-syntax-annot"

               ;; HTML Template
               "djula"

               ;; for DB
               "datafly"
               "sxql")
  :components ((:module "src"
                :components
                ((:file "main" :depends-on ("config" "view" "db"))
                 (:file "web" :depends-on ("model" "view"))
                 (:file "view" :depends-on ("config"))
		 (:file "model" :depends-on ("config"))
                 (:file "db" :depends-on ("config"))
                 (:file "config"))))
  :description ""
  :in-order-to ((test-op (test-op "caveman2_project-test"))))
