(defsystem "caveman2_project-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Reese De Wind"
  :license ""
  :depends-on ("caveman2_project"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "caveman2_project"))))
  :description "Test system for caveman2_project"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
