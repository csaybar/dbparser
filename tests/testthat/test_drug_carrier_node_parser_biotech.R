context("test biotech drug carrier that parsers")

library(dbparser)
library(testthat)
library(XML)
library(tibble)
library(purrr)

biotech <- "drugbank_record_biotech.xml"
test_that(
  desc = "Read database",
  code = {
    expect_true(read_drugbank_xml_db(
      system.file("extdata", biotech, package = "dbparser")
    ))
  }
)

test_that(
  desc = "Read drug carriers actions that",
  code = {
    expect_equal(
      nrow(carriers_actions()),
      0
    )
    expect_error(carriers_actions(TRUE))
  }
)

test_that(
  desc = "Read drug carriers articles that",
  code = {
    expect_equal(
      nrow(carriers_articles()),
      0
    )
    expect_error(carriers_articles(TRUE))
  }
)

test_that(
  desc = "Read drug carriers_textbooks that",
  code = {
    expect_equal(
      nrow(carriers_textbooks()),
      0
    )
    expect_error(carriers_textbooks(TRUE))
  }
)

test_that(
  desc = "Read drug carriers polypeptides that",
  code = {
    expect_equal(
      nrow(carriers_polypeptide()),
      0
    )
    expect_error(carriers_polypeptide(TRUE))
  }
)

test_that(
  desc = "Read drug carriers polypeptides external identifiers that",
  code = {
    expect_equal(
      nrow(
        carriers_polypeptide_ext_identity()
      ),
      0
    )
    expect_error(
      carriers_polypeptide_ext_identity(TRUE)
    )
  }
)

test_that(
  desc = "Read drug carriers polypeptides syn that",
  code = {
    expect_equal(
      nrow(carriers_polypeptidepeptides_syn()),
      0
    )
    expect_error(carriers_polypeptidepeptides_syn(TRUE))
  }
)

test_that(
  desc = "Read drug carriers polypeptides go classifiers that",
  code = {
    expect_equal(
      nrow(carriers_polypeptidepeptides_go()),
      0
    )
    expect_error(carriers_polypeptidepeptides_go(TRUE))
  }
)

test_that(
  desc = "Read drug carriers that",
  code = {
    expect_equal(
      nrow(carriers()),
      0
    )
    expect_error(carriers(TRUE))
  }
)

test_that(
  desc = "Read drug carriers polypeptides pfams that",
  code = {
    expect_equal(
      nrow(carriers_polypeptidepeptides_pfams()),
      0
    )
    expect_error(carriers_polypeptidepeptides_pfams(TRUE))
  }
)
