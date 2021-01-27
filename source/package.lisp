;;; -*- mode: Lisp; Syntax: Common-Lisp; -*-
;;;
;;; Copyright (c) 2009 by the authors.
;;;
;;; See LICENCE for details.

(in-package :common-lisp-user)

(defpackage :hu.dwim.common-lisp)

(let ((package (find-package :hu.dwim.common-lisp))
      ;; TODO: add get, but it is used at several places currently
      (shadowed-symbols '(set)))
  (do-external-symbols (symbol (find-package :common-lisp))
    (unless (member symbol shadowed-symbols)
      ;; handle the symbol NIL by using (list nil)
      (let ((symbol (or symbol (list nil))))
        (import symbol package)
        (export symbol package)))))
