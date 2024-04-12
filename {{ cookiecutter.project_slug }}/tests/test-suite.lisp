;; -*- Lisp; lexical-binding: t; encoding: utf-8; -*-
;; {{ cookiecutter.project_name }}
;; Copyright (c) {{ cookiecutter.project_year}}, {{ cookiecutter.author_name }} <{{ cookiecutter.author_email}}>
;; All rights reserved.
;;
;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions
;; are met:
;;
;;  1. Redistributions of source code must retain the above copyright
;;     notice, this list of conditions and the following disclaimer
;;     in this position and unchanged.
;;  2. Redistributions in binary form must reproduce the above copyright
;;     notice, this list of conditions and the following disclaimer in the
;;     documentation and/or other materials provided with the distribution.
;;
;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR(S) ``AS IS'' AND ANY EXPRESS OR
;; IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
;; OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
;; IN NO EVENT SHALL THE AUTHOR(S) BE LIABLE FOR ANY DIRECT, INDIRECT,
;; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
;; NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
;; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
;; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
;; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
;; THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

(in-package :cl-user)

#+quicklisp
(progn
 (ql:quickload '(:fiveam)))

(defpackage :{{ cookiecutter.project_slug }}/test
  (:use :cl :fiveam)
  (:nicknames :{{ cookiecutter.project_slug }}/test)
  (:import-from :{{ cookiecutter.project_slug }}))

(in-package :{{ cookiecutter.project_slug }}/test)

(def-suite {{ cookiecutter.project_slug }}
  :description "Unit test suite for {{ cookiecutter.project_slug }}")

(def-suite {{ cookiecutter.project_slug }}-core
  :in {{ cookiecutter.project_slug }})
(in-suite {{ cookiecutter.project_slug }}-core)

(test dummy-test
      (is (= 3 (+ 1 2))))

