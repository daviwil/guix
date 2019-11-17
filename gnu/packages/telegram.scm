;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2019 David Wilson <david@daviwil.com>
;;;
;;; This file is part of GNU Guix.
;;;
;;; GNU Guix is free software; you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3 of the License, or (at
;;; your option) any later version.
;;;
;;; GNU Guix is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with GNU Guix.  If not, see <http://www.gnu.org/licenses/>.

(define-module (gnu packages telegram)
  #:use-module (gnu packages)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages gperf)
  #:use-module (gnu packages tls)
  #:use-module (guix build-system cmake)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix utils))

(define-public tdlib
  (package
    (name "tdlib")
    (version "1.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/tdlib/td")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rqxdvzlryqln5jzj35cwz1fjwy4s8xq97p0wdnpzbfjpcalvrm5"))))
    (build-system cmake-build-system)
    (native-inputs
     `(("gperf" ,gperf)))
    (inputs
     `(("zlib" ,zlib)
       ("openssl" ,openssl)))
    (arguments
     `(#:tests? #f))  ; no tests
    (home-page "https://core.telegram.org/tdlib")
    (synopsis "")
    (description "")
    (license license:boost1.0)))
