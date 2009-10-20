;;; -*- mode: Lisp; Syntax: Common-Lisp; -*-
;;;
;;; Copyright (c) 2009 by the authors.
;;;
;;; See LICENCE for details.

(in-package :common-lisp-user)

(defpackage :hu.dwim.common-lisp)

(let ((package (find-package :hu.dwim.common-lisp))
      (shadowed-symbols '(time
                          ;; get computed-class uses it for now
                          set
                          )))
  (do-external-symbols (symbol (find-package :common-lisp))
    (unless (member symbol shadowed-symbols)
      ;; do take care of the symbol nil: (list nil)!
      (let ((symbol (or symbol (list nil))))
        (import symbol package)
        (export symbol package)))))
