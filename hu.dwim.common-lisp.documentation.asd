;;; -*- mode: Lisp; Syntax: Common-Lisp; -*-
;;;
;;; Copyright (c) 2009 by the authors.
;;;
;;; See LICENCE for details.

(defsystem :hu.dwim.common-lisp.documentation
  :defsystem-depends-on (:hu.dwim.asdf)
  :class "hu.dwim.asdf:hu.dwim.documentation-system"
  :depends-on (:hu.dwim.common-lisp
               :hu.dwim.presentation)
  :components ((:module "documentation"
                :components ((:file "common-lisp" :depends-on ("package"))
                             (:file "package")))))
