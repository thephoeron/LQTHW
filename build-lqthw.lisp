#|
 | =========================================================================================================================================================== |
 | BLACK BRANE SYSTEMS INC., SPECIAL PROJECTS DIVISION                                                                                                         |
 | Project: "Learn Quantum The Hard Way"                                                                                                                       |
 | Source-File: LQTHW\build-lqthw.lisp                                                                                                                         |
 | Created: Tuesday, 23rd February 2021 8:18:28 pm                                                                                                             |
 | Authors: "the Phoeron" Colin J.E. Lupton (colin@blackbrane.com)                                                                                             |
 | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
 | Last Modified: Tuesday, 23rd February 2021 8:18:28 pm                                                                                                       |
 | Modified By: "the Phoeron" Colin J.E. Lupton (colin@blackbrane.com)                                                                                         |
 | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
 | Copyright 2016 - 2021, Black Brane Systems Inc.                                                                                                             |
 | =========================================================================================================================================================== |
|#

(in-package :cl-user)

;; User's initialization file loaded on startup
(setf lw:*init-file-name* "~/.lqthw/init.lisp"
      lw:*site-init-file-name* "~/.lqthw/siteinit.lisp")

(change-directory (asdf:system-pathname (asdf:find-system :lqthw)))

(ensure-directories-exist "_build/")

;; Load LispWorks Build Initfiles
(load "build-siteinit.lisp")
(load "build-init.lisp")

;; Site name

(setf (short-site-name) "LEARNQUANTUMTHEHARDWAY.ORG")
(setf (long-site-name) "Learn Quantum The Hard Way, because the hard way is the only way worth doing.")

;; Load LQTHW system with Quicklisp
(ql:quickload '(lqthw)
  :verbose t
  :explain t)

(deliver 'lqthw:lqthw-start
  "_build/lqthw"
  0
  :versioninfo (list :version-string (asdf:system-version (asdf:find-system :lqthw))
                     :binary-version (+ #x0001000000000000 (get-universal-time))
                     :file-description "Learn Quantum The Hard Way web application server."
                     :company-name "Black Brane Systems Inc."
                     :product-name "Learn Quantum The Hard Way"
                     :legal-copyright "Copyright (c) 2021, Black Brane Systems Inc. All rights reserved."
                     :legal-trademarks "LQTHW™ and LEARN QUANTUM THE HARD WAY™ are trademarks of Black Brane Systems Inc."
                     :language :us-english
                     :character-set :unicode)
  :multiprocessing :with-tty-listener
  :keep-clos :meta-object-slots
  :keep-complex-numbers t
  :keep-pretty-printer t
  :keep-lisp-reader t
  :format t
  :console t
  :delete-packages (mapcar #'find-package '("QL-ABCL" "QL-ALLEGRO" "QL-BUNDLE" "QL-CCL" "QL-CDB" "QL-CLASP" "QL-CLISP" "QL-CMUCL" "QL-CONFIG" "QL-DIST" "QL-DIST-USER" "QL-ECL" "QL-GUNZIPPER" "QL-HTTP" "QL-IMPL" "QL-IMPL-UTIL" "QL-INFO" "QL-LISPWORKS" "QL-MINITAR" "QL-MKCL" "QL-NETWORK" "QL-PROGRESS" "QL-SBCL" "QL-SCL" "QL-SETUP" "QL-UTIL" "QUICKLISP-CLIENT")))
