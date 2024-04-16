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
 )

(defpackage :{{ cookiecutter.project_slug }}/system
  (:use :cl :asdf :alexandria)
)

(in-package :{{ cookiecutter.project_slug }}/system)

(defsystem "{{ cookiecutter.project_slug }}"
  :name "{{ cookiecutter.project_slug }}"
  :long-name "{{ cookiecutter.project_name }}"
  :description "{{ cookiecutter.project_description }}"
  :version "{{ cookiecutter.version }}"
  :author "{{ cookiecutter.author_name }} <{{ cookiecutter.author_email }}>"
  :maintainer "{{ cookiecutter.author_name }} <{{ cookiecutter.author_email }}>"
  :license "{{ cookiecutter.license }}"
  :long-description #.(uiop:read-file-string
                      (uiop:subpathname *load-pathname* "README.org"))
  :homepage "{{ cookiecutter._repo_url }}"
  :bug-tracker "{{ cookiecutter._issues_url }}"
  :source-control "{{ cookiecutter._repo_url }}"

  :depends-on (:cl-reexport :alexandria)
  :components (
               (
                :module "core"
                :pathname #P"src/"
                :components (
                             (:file "core")
                             )
                )
               (
                :module "client-package"
                :pathname #P"src/"
                :depends-on ("core")
                :components (
                             (:file "package")
                             )
                )
               )
  :in-order-to (
$                (test-op (test-op :{{ cookiecutter.project_slug }}.test))
                )
  )
