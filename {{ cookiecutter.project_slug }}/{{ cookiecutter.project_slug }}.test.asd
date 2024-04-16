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
  ;; Quicklisp Initialization Forms
 (ql:quickload '("fiveam" "alexandria"))
 )

(in-package :cl-user)

(defpackage :{{ cookiecutter.project_slug }}.test.system
  (:use :cl :asdf))

(in-package :{{ cookiecutter.project_slug }}.test.system)

(defsystem "{{ cookiecutter.project_slug }}.test"
  :name "{{ cookiecutter.project_slug }}.test"
  :long-name "{{ cookiecutter.project_name }}"
  :description "{{ cookiecutter.project_description }}"
  :version "{{ cookiecutter.version }}"
  :author "{{ cookiecutter.author_name }} <{{ cookiecutter.author_email }}>"
  :maintainer "{{ cookiecutter.author_name }} <{{ cookiecutter.author_email }}>"
  :license "{{ cookiecutter.license }}"
  :depends-on (:fiveam :alexandria
               :{{ cookiecutter.project_slug }})
  :components (
               (:module "tests"
                :pathname #P"tests/"
                :serial t
                :components (
                             (:file "test-suite")
                             )
                )
               )
  :perform (test-op (op c)
                    (symbol-call :fiveam :run!
                                 (find-symbol* :{{ cookiecutter.project_slug }} :{{ cookiecutter.project_slug }}.test))))
