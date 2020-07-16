(in-package :cl-user)
(defpackage caveman2_project.web
  (:use :cl
        :caveman2
        :caveman2_project.config
        :caveman2_project.view
        :caveman2_project.db
        :datafly
        :sxql)
  (:export :*web*))
(in-package :caveman2_project.web)

;; for @route annotation
(syntax:use-syntax :annot)

;;
;; Application

(defclass <web> (<app>) ())
(defvar *web* (make-instance '<web>))
(clear-routing-rules *web*)

;;
;; Routing rules

(defroute "/" ()
  (render #P"test.html"))

(defroute "/display_url/*"  (&key splat)
  (format nil "this was in the URL: ~a" (car splat)))

;;
;; Error pages

(defmethod on-exception ((app <web>) (code (eql 404)))
  (declare (ignore app))
  (merge-pathnames #P"_errors/404.html"
                   *template-directory*))
