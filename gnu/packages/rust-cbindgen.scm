;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2019 Efraim Flashner <efraim@flashner.co.il>
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

(define-module (gnu packages rust-cbindgen)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system cargo))

(define-public rust-cbindgen
  (package
    (name "rust-cbindgen")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cbindgen" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1zgamxahlxmg4warzivaa8m1f8d6b45mhznm7n6d7p5l18acdblx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("clap" ,rust-clap-2)
        ("log" ,rust-log-0.4)
        ("proc-macro2" ,rust-proc-macro2-1.0)
        ("quote" ,rust-quote-1.0)
        ("serde" ,rust-serde-1.0)
        ("serde-json" ,rust-serde-json-1.0)
        ("syn" ,rust-syn-1.0)
        ("tempfile" ,rust-tempfile-3.0)
        ("toml" ,rust-toml-0.5))
       #:cargo-development-inputs
       (("ansi-term" ,rust-ansi-term-0.11)
        ("atty" ,rust-atty-0.2)
        ("autocfg" ,rust-autocfg-0.1)
        ("bitflags" ,rust-bitflags-1.1)
        ("cfg-if" ,rust-cfg-if-0.1)
        ("cloudabi" ,rust-cloudabi-0.0)
        ("fuchsia-cprng" ,rust-fuchsia-cprng-0.1)
        ("itoa" ,rust-itoa-0.4)
        ("libc" ,rust-libc-0.2)
        ("numtoa" ,rust-numtoa-0.1)
        ("rand" ,rust-rand-0.6)
        ("rand-chacha" ,rust-rand-chacha-0.1)
        ("rand-core" ,rust-rand-core-0.3)
        ("rand-hc" ,rust-rand-hc-0.1)
        ("rand-isaac" ,rust-rand-isaac-0.1)
        ("rand-jitter" ,rust-rand-jitter-0.1)
        ("rand-os" ,rust-rand-os-0.1)
        ("rand-pcg" ,rust-rand-pcg-0.1)
        ("rand-xorshift" ,rust-rand-xorshift-0.1)
        ("rdrand" ,rust-rdrand-0.4)
        ("redox-syscall" ,rust-redox-syscall-0.1)
        ("redox-termios" ,rust-redox-termios-0.1)
        ("remove-dir-all" ,rust-remove-dir-all-0.5)
        ("ryu" ,rust-ryu-1.0)
        ("serde-derive" ,rust-serde-derive-1.0)
        ("strsim" ,rust-strsim-0.8)
        ("termion" ,rust-termion-1.5)
        ("textwrap" ,rust-textwrap-0.11)
        ("unicode-width" ,rust-unicode-width-0.1)
        ("unicode-xid" ,rust-unicode-xid-0.2)
        ("vec-map" ,rust-vec-map-0.8)
        ("winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/eqrion/cbindgen/")
    (synopsis "Tool for generating C bindings to Rust code")
    (description
     "This package provides a tool for generating C/C++ bindings to Rust code.")
    (license license:mpl2.0)))

;;;
;;;^L
;;;

(define rust-ansi-term-0.11
  (package
    (name "rust-ansi-term")
    (version "0.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ansi_term" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "16wpvrghvd0353584i1idnsgm0r3vchg8fyrm0x8ayv1rgvbljgf"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/ogham/rust-ansi-term")
    (synopsis "Library for ANSI terminal colours and styles")
    (description
     "This is a library for controlling colours and formatting, such as red bold
text or blue underlined text, on ANSI terminals.")
    (properties '((hidden? . #t)))
    (license license:expat)))

(define rust-atty-0.2
  (package
    (name "rust-atty")
    (version "0.2.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "atty" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "140sswp1bwqwc4zk80bxkbnfb3g936hgrb77g9g0k1zcld3wc0qq"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/softprops/atty")
    (synopsis "A simple interface for querying atty")
    (description
     "This package provides a simple interface for querying atty.")
    (properties '((hidden? . #t)))
    (license license:expat)))

(define rust-autocfg-0.1
  (package
    (name "rust-autocfg")
    (version "0.1.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "autocfg" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1chwgimpx5z7xbag7krr9d8asxfqbh683qhgl9kn3hxk2l0djj8x"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/cuviper/autocfg")
    (synopsis "Automatic cfg for Rust compiler features")
    (description "Rust library for build scripts to automatically configure
code based on compiler support.  Code snippets are dynamically tested to see
if the @code{rustc} will accept them, rather than hard-coding specific version
support.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-bitflags-1.1
  (package
    (name "rust-bitflags")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bitflags" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1zc1qb1hwsnl2d8rhzicsv9kqd5b2hwbrscrcfw5as4sfr35659x"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/bitflags/bitflags")
    (synopsis "Macro to generate structures which behave like bitflags")
    (description "This package provides a macro to generate structures which
behave like a set of bitflags.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-cfg-if-0.1
  (package
    (name "rust-cfg-if")
    (version "0.1.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cfg-if" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "08h80ihs74jcyp24cd75wwabygbbdgl05k6p5dmq8akbr78vv1a7"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/alexcrichton/cfg-if")
    (synopsis "Define an item depending on parameters")
    (description "This package provides a macro to ergonomically define an item
depending on a large number of #[cfg] parameters.  Structured like an
@code{if-else} chain, the first matching branch is the item that gets emitted.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-clap-2
  (package
    (name "rust-clap")
    (version "2.33.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clap" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1nf6ld3bims1n5vfzhkvcb55pdzh04bbhzf8nil5vvw05nxzarsh"))))
    (build-system cargo-build-system)
    (home-page "https://clap.rs/")
    (synopsis "Command Line Argument Parser")
    (description
     "This package provides a simple to use, efficient, and full-featured
Command Line Argument Parser.")
    (properties '((hidden? . #t)))
    (license license:expat)))

(define rust-cloudabi-0.0
  (package
    (name "rust-cloudabi")
    (version "0.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cloudabi" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0kxcg83jlihy0phnd2g8c2c303px3l2p3pkjz357ll6llnd5pz6x"))))
    (build-system cargo-build-system)
    (home-page "https://nuxi.nl/cloudabi/")
    (synopsis "Low level interface to CloudABI")
    (description
     "Low level interface to CloudABI.  Contains all syscalls and related types.")
    (properties '((hidden? . #t)))
    (license license:bsd-2)))

(define rust-fuchsia-cprng-0.1
  (package
    (name "rust-fuchsia-cprng")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fuchsia-cprng" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1fnkqrbz7ixxzsb04bsz9p0zzazanma8znfdqjvh39n14vapfvx0"))))
    (build-system cargo-build-system)
    (home-page "https://fuchsia.googlesource.com/fuchsia/+/master/garnet/public/rust/fuchsia-cprng")
    (synopsis "Fuchsia cryptographically secure pseudorandom number generator")
    (description "Thix package provides a rust crate for the Fuchsia
cryptographically secure pseudorandom number generator.")
    (properties '((hidden? . #t)))
    (license license:bsd-3)))

(define rust-itoa-0.4
  (package
    (name "rust-itoa")
    (version "0.4.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "itoa" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0zvg2d9qv3avhf3d8ggglh6fdyw8kkwqg3r4622ly5yhxnvnc4jh"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/dtolnay/itoa")
    (synopsis "Fast functions for printing integer primitives")
    (description "This crate provides fast functions for printing integer
primitives to an @code{io::Write}.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-libc-0.2
  (package
    (name "rust-libc")
    (version "0.2.65")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "libc" version))
       (file-name (string-append name "-" version ".crate"))
       (sha256
        (base32
         "1s14bjxnz6haw0gr1h3j4sr7s2s407hpgm8dxhwnl7yzgxia0c8s"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/rust-lang/libc")
    (synopsis "Raw FFI bindings to platform libraries like libc")
    (description
     "libc provides all of the definitions necessary to easily
interoperate with C code (or \"C-like\" code) on each of the platforms
that Rust supports. This includes type definitions (e.g., c_int),
constants (e.g., EINVAL) as well as function headers (e.g., malloc).

This crate exports all underlying platform types, functions, and
constants under the crate root, so all items are accessible as
@samp{libc::foo}.  The types and values of all the exported APIs match
the platform that libc is compiled for.")
    (properties '((hidden? . #t)))
    (license (list license:expat
                   license:asl2.0))))

(define rust-log-0.4
  (package
    (name "rust-log")
    (version "0.4.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "log" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1xz18ixccl5c6np4linv3ypc7hpmmgpc5zzd2ymp2ssfx0mhbdhl"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/rust-lang/log")
    (synopsis "Lightweight logging facade for Rust")
    (description
     "This package provides a lightweight logging facade for Rust.")
    (properties '((hidden? . #t)))
    (license (list license:expat license:asl2.0))))

(define rust-numtoa-0.1
  (package
    (name "rust-numtoa")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "numtoa" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1vs9rhggqbql1p26x8nkha1j06wawwgb2jp5fs88b5gi7prvvy5q"))))
    (build-system cargo-build-system)
    (home-page "https://gitlab.com/mmstick/numtoa")
    (synopsis "Convert numbers into stack-allocated byte arrays")
    (description
     "This package can convert numbers into stack-allocated byte arrays.")
    (properties '((hidden? . #t)))
    (license (list license:expat license:asl2.0))))

(define rust-proc-macro2-1.0
  (package
    (name "rust-proc-macro2")
    (version "1.0.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro2" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "09rgb5ab0jgw39kyad0lgqs4nb9yaf7mwcrgxqnsxbn4il54g7lw"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/alexcrichton/proc-macro2")
    (synopsis "Stable implementation of the upcoming new `proc_macro` API")
    (description "This package provides a stable implementation of the upcoming new
`proc_macro` API.  Comes with an option, off by default, to also reimplement itself
in terms of the upstream unstable API.")
    (properties '((hidden? . #t)))
    (license (list license:expat license:asl2.0))))

(define rust-quote-1.0
  (package
    (name "rust-quote")
    (version "1.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "quote" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1zkc46ryacf2jdkc6krsy2z615xbk1x8kp1830rcxz3irj5qqfh5"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/dtolnay/quote")
    (synopsis "Quasi-quoting macro quote!(...)")
    (description "Quasi-quoting macro quote!(...)")
    (properties '((hidden? . #t)))
    (license (list license:expat license:asl2.0))))

(define rust-rand-0.6
  (package
    (name "rust-rand")
    (version "0.6.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1jl4449jcl4wgmzld6ffwqj5gwxrp8zvx8w573g1z368qg6xlwbd"))))
    (build-system cargo-build-system)
    (home-page "https://crates.io/crates/rand")
    (synopsis "Random number generators and other randomness functionality")
    (description
     "This package contains random number generators and other randomness
functionality.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-rand-chacha-0.1
  (package
    (name "rust-rand-chacha")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_chacha" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1vxwyzs4fy1ffjc8l00fsyygpiss135irjf7nyxgq2v0lqf3lvam"))))
    (build-system cargo-build-system)
    (home-page "https://crates.io/crates/rand_chacha")
    (synopsis "ChaCha random number generator")
    (description "ChaCha random number generator")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-rand-core-0.4
  (package
    (name "rust-rand-core")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_core" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1p09ynysrq1vcdlmcqnapq4qakl2yd1ng3kxh3qscpx09k2a6cww"))))
    (build-system cargo-build-system)
    (home-page "https://crates.io/crates/rand_core")
    (synopsis
      "Core random number generator traits and tools for implementation.")
    (description
      "Core random number generator traits and tools for implementation.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-rand-core-0.3
  (package
    (inherit rust-rand-core-0.4)
    (name "rust-rand-core")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_core" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0jzdgszfa4bliigiy4hi66k7fs3gfwi2qxn8vik84ph77fwdwvvs"))))
    ;; This version is a 0.3 API wrapper around the 0.4 version.
    (arguments
     `(#:cargo-inputs (("rand-core" ,rust-rand-core-0.4))))))

(define rust-rand-hc-0.1
  (package
    (name "rust-rand-hc")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_hc" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1i0vl8q5ddvvy0x8hf1zxny393miyzxkwqnw31ifg6p0gdy6fh3v"))))
    (build-system cargo-build-system)
    (home-page "https://crates.io/crates/rand_hc")
    (synopsis "HC128 random number generator")
    (description "HC128 random number generator")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-rand-isaac-0.1
  (package
    (name "rust-rand-isaac")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_isaac" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "027flpjr4znx2csxk7gxb7vrf9c7y5mydmvg5az2afgisp4rgnfy"))))
    (build-system cargo-build-system)
    (home-page "https://crates.io/crates/rand_isaac")
    (synopsis "ISAAC random number generator")
    (description "ISAAC random number generator")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-rand-jitter-0.1
  (package
    (name "rust-rand-jitter")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_jitter" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "16z387y46bfz3csc42zxbjq89vcr1axqacncvv8qhyy93p4xarhi"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/rust-random/rand")
    (synopsis
      "Random number generator based on timing jitter")
    (description
      "Random number generator based on timing jitter")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-rand-os-0.1
  (package
    (name "rust-rand-os")
    (version "0.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_os" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0wahppm0s64gkr2vmhcgwc0lij37in1lgfxg5rbgqlz0l5vgcxbv"))))
    (build-system cargo-build-system)
    (home-page "https://crates.io/crates/rand_os")
    (synopsis "OS backed Random Number Generator")
    (description "OS backed Random Number Generator")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-rand-pcg-0.1
  (package
    (name "rust-rand-pcg")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_pcg" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0i0bdla18a8x4jn1w0fxsbs3jg7ajllz6azmch1zw33r06dv1ydb"))))
    (build-system cargo-build-system)
    (home-page "https://crates.io/crates/rand_pcg")
    (synopsis
      "Selected PCG random number generators")
    (description
      "Selected PCG random number generators")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-rand-xorshift-0.1
  (package
    (name "rust-rand-xorshift")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_xorshift" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0p2x8nr00hricpi2m6ca5vysiha7ybnghz79yqhhx6sl4gkfkxyb"))))
    (build-system cargo-build-system)
    (home-page "https://crates.io/crates/rand_xorshift")
    (synopsis "Xorshift random number generator")
    (description
      "Xorshift random number generator")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-rdrand-0.4
  (package
    (name "rust-rdrand")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rdrand" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1cjq0kwx1bk7jx3kzyciiish5gqsj7620dm43dc52sr8fzmm9037"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/nagisa/rust_rdrand/")
    (synopsis "Random number generator")
    (description
     "This package is an implementation of random number generator based on
@code{rdrand} and @cpde{rdseed} instructions")
    (properties '((hidden? . #t)))
    (license license:isc)))

(define rust-redox-syscall-0.1
  (package
    (name "rust-redox-syscall")
    (version "0.1.56")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "redox_syscall" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "110y7dyfm2vci4x5vk7gr0q551dvp31npl99fnsx2fb17wzwcf94"))))
    (build-system cargo-build-system)
    (home-page "https://gitlab.redox-os.org/redox-os/syscall")
    (synopsis "Rust library to access raw Redox system calls")
    (description "This package provides a Rust library to access raw Redox
system calls.")
    (properties '((hidden? . #t)))
    (license license:expat)))

(define rust-redox-termios-0.1
  (package
    (name "rust-redox-termios")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "redox-termios" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0xhgvdh62mymgdl3jqrngl8hr4i8xwpnbsxnldq0l47993z1r2by"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/redox-os/termios")
    (synopsis "Rust library to access Redox termios functions")
    (description
     "This package provides a Rust library to access Redox termios functions.")
    (properties '((hidden? . #t)))
    (license license:expat)))

(define rust-remove-dir-all-0.5
  (package
    (name "rust-remove-dir-all")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "remove-dir-all" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0bkrlyg26mgizpiy1yb2hhpgscxcag8r5fnckqsvk25608vzm0sa"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/XAMPPRocky/remove_dir_all.git")
    (synopsis "Implementation of remove_dir_all for Windows")
    (description
     "This package provides a safe, reliable implementation of remove_dir_all
for Windows.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-ryu-1.0
  (package
    (name "rust-ryu")
    (version "1.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ryu" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1j0h74f1xqf9hjkhanp8i20mqc1aw35kr1iq9i79q7713mn51a5z"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/dtolnay/ryu")
    (synopsis
      "Fast floating point to string conversion")
    (description
      "Fast floating point to string conversion")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0 license:boost1.0))))

(define rust-serde-1.0
  (package
    (name "rust-serde")
    (version "1.0.101")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1p8r24hagcsrl92w5z32nfrg9040qkgqf8iwwnf7mzigpavwk5lp"))))
    (build-system cargo-build-system)
    (home-page "https://serde.rs")
    (synopsis "Generic serialization/deserialization framework")
    (description
     "This package provides a generic serialization/deserialization framework.")
    (properties '((hidden? . #t)))
    (license (list license:expat license:asl2.0))))

(define rust-serde-derive-1.0
  (package
    (name "rust-serde-derive")
    (version "1.0.101")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde-derive" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0bn0wz3j48248187mfmypyqnh73mq734snxxhr05vmgcl51kl4sb"))))
    (build-system cargo-build-system)
    (home-page "https://serde.rs")
    (synopsis
      "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (description
      "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (properties '((hidden? . #t)))
    (license (list license:expat license:asl2.0))))

(define rust-serde-json-1.0
  (package
    (name "rust-serde-json")
    (version "1.0.41")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde-json" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1hipk84x40454mf599752mi7l08wb8qakz8vd6d3zp57d0mfnwig"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/serde-rs/json")
    (synopsis "A JSON serialization file format")
    (description
     "This package provides a JSON serialization file format.")
    (properties '((hidden? . #t)))
    (license (list license:expat license:asl2.0))))

(define rust-strsim-0.8
  (package
    (name "rust-strsim")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strsim" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0sjsm7hrvjdifz661pjxq5w4hf190hx53fra8dfvamacvff139cf"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/dguo/strsim-rs")
    (synopsis "Rust implementations of string similarity metrics")
    (description "This crate includes implementations of string similarity
metrics.  It includes Hamming, Levenshtein, OSA, Damerau-Levenshtein, Jaro,
and Jaro-Winkler.")
    (properties '((hidden? . #t)))
    (license license:expat)))

(define rust-syn-1.0
  (package
    (name "rust-syn")
    (version "1.0.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1gw03w7lzrlqmp2vislcybikgl5wkhrqi6sy70w93xss2abhx1b6"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/dtolnay/syn")
    (synopsis "Parser for Rust source code")
    (description "Parser for Rust source code")
    (properties '((hidden? . #t)))
    (license (list license:expat license:asl2.0))))

(define rust-tempfile-3.0
  (package
    (name "rust-tempfile")
    (version "3.0.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tempfile" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1vqk7aq2l04my2r3jiyyxirnf8f90nzcvjasvrajivb85s7p7i3x"))))
    (build-system cargo-build-system)
    (home-page "http://stebalien.com/projects/tempfile-rs")
    (synopsis "Library for managing temporary files and directories")
    (description
     "This package provides a library for managing temporary files and
directories.")
    (properties '((hidden? . #t)))
    (license (list license:expat license:asl2.0))))

(define rust-termion-1.5
  (package
    (name "rust-termion")
    (version "1.5.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termion" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0c634rg520zjjfhwnxrc2jbfjz7db0rcpsjs1qici0nyghpv53va"))))
    (build-system cargo-build-system)
    (home-page "https://gitlab.redox-os.org/redox-os/termion")
    (synopsis "Library for manipulating terminals")
    (description
     "This package provides a bindless library for manipulating terminals.")
    (properties '((hidden? . #t)))
    (license license:expat)))

(define rust-textwrap-0.11
  (package
    (name "rust-textwrap")
    (version "0.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "textwrap" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0q5hky03ik3y50s9sz25r438bc4nwhqc6dqwynv4wylc807n29nk"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/mgeisler/textwrap")
    (synopsis "Library for word wrapping, indenting, and dedenting strings")
    (description
     "Textwrap is a small library for word wrapping, indenting, and dedenting
strings.  You can use it to format strings (such as help and error messages)
for display in commandline applications.  It is designed to be efficient and
handle Unicode characters correctly.")
    (properties '((hidden? . #t)))
    (license license:expat)))

(define rust-toml-0.5
  (package
    (name "rust-toml")
    (version "0.5.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "toml" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "093p48vpqm4bb8q3514xsij0dkljxlr3jp9ypxr4p48xjisvxan7"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/alexcrichton/toml-rs")
    (synopsis "Rust encoder and decoder of TOML-formatted files and streams")
    (description
     "This package provides a native Rust encoder and decoder of TOML-formatted
files and streams.  Provides implementations of the standard
Serialize/Deserialize traits for TOML data to facilitate deserializing and
serializing Rust structures.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-unicode-width-0.1
  (package
    (name "rust-unicode-width")
    (version "0.1.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-width" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "082f9hv1r3gcd1xl33whjhrm18p0w9i77zhhhkiccb5r47adn1vh"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/unicode-rs/unicode-width")
    (synopsis "Determine displayed width according to Unicode rules")
    (description "This crate allows you to determine displayed width of
@code{char} and @code{str} types according to Unicode Standard Annex #11 rules.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-unicode-xid-0.2
  (package
    (name "rust-unicode-xid")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-xid" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0z09fn515xm7zyr0mmdyxa9mx2f7azcpv74pqmg611iralwpcvl2"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/unicode-rs/unicode-xid")
    (synopsis "Determine Unicode XID related properties")
    (description "Determine whether characters have the XID_Start
or XID_Continue properties according to Unicode Standard Annex #31.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0 license:expat))))

(define rust-vec-map-0.8
  (package
    (name "rust-vec-map")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "vec_map" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "06n8hw4hlbcz328a3gbpvmy0ma46vg1lc0r5wf55900szf3qdiq5"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/contain-rs/vec-map")
    (synopsis "Simple map based on a vector for small integer keys")
    (description
     "This package provides a simple map based on a vector for small integer keys.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-winapi-0.3
  (package
    (name "rust-winapi")
    (version "0.3.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1ii9j9lzrhwri0902652awifzx9fpayimbp6hfhhc296xcg0k4w0"))))
    (build-system cargo-build-system)
    ;; This package depends unconditionally on these two crates.
    (arguments
     `(#:cargo-inputs
       (("winapi-i686-pc-windows-gnu" ,rust-winapi-i686-pc-windows-gnu-0.4)
        ("winapi-x86-64-pc-windows-gnu" ,rust-winapi-x86-64-pc-windows-gnu-0.4))))
    (home-page "https://github.com/retep998/winapi-rs")
    (synopsis "Raw FFI bindings for all of Windows API")
    (description
     "This package contains raw FFI bindings for all of Windows API.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define-public rust-winapi-i686-pc-windows-gnu-0.4
  (package
    (name "rust-winapi-i686-pc-windows-gnu")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi-i686-pc-windows-gnu" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "1dmpa6mvcvzz16zg6d5vrfy4bxgg541wxrcip7cnshi06v38ffxc"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/retep998/winapi-rs")
    (synopsis "Import libraries for the i686-pc-windows-gnu target")
    (description "This crate provides import libraries for the
i686-pc-windows-gnu target.  Please don't use this crate directly, depend on
@code{winapi} instead.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))

(define rust-winapi-x86-64-pc-windows-gnu-0.4
  (package
    (name "rust-winapi-x86-64-pc-windows-gnu")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi-x86_64-pc-windows-gnu" version))
        (file-name (string-append name "-" version ".crate"))
        (sha256
         (base32
          "0gqq64czqb64kskjryj8isp62m2sgvx25yyj3kpc2myh85w24bki"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/retep998/winapi-rs")
    (synopsis "Import libraries for the x86_64-pc-windows-gnu target")
    (description "This package provides import libraries for the
x86_64-pc-windows-gnu target.  Please don't use this crate directly, depend on
@code{winapi} instead.")
    (properties '((hidden? . #t)))
    (license (list license:asl2.0
                   license:expat))))