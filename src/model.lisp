(in-package :cl-user)
(defpackage caveman2_project.model
  (:use :cl
   :drakma
        :md5
   :yason
        :alexandria
   :split-sequence
      )
  (:import-from :caveman2_project.config
   :config)
;  (:export)
  )

(in-package :caveman2_project.model)


(defclass user-comment ()
  ((User
    :accessor user
    :initarg :user
    :initform 0)
   (Last-Updated
    :accessor last-updated
    :initarg :last-updated
    :initform 0)
   (Text-Body
    :accessor text-body
    :initarg :text-body
    :initform ""))
  (:documentation "class to hold user comments"))

;;keyname should be a string like "user"
(defun get-json-value (keyname json_string)
  (let ((json_alist (alexandria:hash-table-alist (yason:parse json_string))))
    (cdr (assoc keyname json_alist :test #'equalp))))


(defun json-to-comment (json)
  (let ((user (get-json-value "user" json))
	(timestamp (get-json-value "last-updated" json))
	(text (get-json-value "text" json)))
    (make-instance 'user-comment :user user :text-body text :last-updated timestamp)))

;; (defun comment-to-json (comment)
;;   (let ((text (slot-value comment 'text-body))
;; 	(time (slot-value comment 'last-updated))
;; 	(user (slot-value comment 'user)))
    
	
;; (defun remote-json-request (uri)
;;   "Pull in remote JSON.  Drakma returns it as a large vector of
;; character codes, so we have to parse it out to string form for
;; cl-json."
;;   (let* ((json-response-raw (http-request uri))
;; 	 (json-response-string (char-vector-to-string json-response-raw))
;; 	 (json (decode-json-from-string json-response-string)))
;;         json)


