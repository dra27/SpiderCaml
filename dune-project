(lang dune 2.9)
(name SpiderCaml)
(version 0.2)

(use_standard_c_and_cxx_flags true)

(generate_opam_files)

(package
  (name SpiderCaml)
  (synopsis "Bindings to SpiderMonkey's Javascript implementation")
  (maintainers "David Allsopp <david@davidallsopp.com>")
  (authors "Alain Frisch")
  (license "ISC")
  (homepage "https://github.com/dra27/SpiderCaml")
  (bug_reports "https://github.com/SpiderCaml/issues")
  (depends
    ocaml
    SpiderMonkey))
