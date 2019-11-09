context("test biotech drug enzymes attributes parsers")

library(dbparser)
library(testthat)
library(XML)
library(tibble)
library(purrr)

biotech <- "drugbank_record_biotech.xml"
test_that(desc = "Read database",
          code = {
            expect_true(
              get_xml_db_rows(
                system.file("extdata", biotech, package = "dbparser")))
          })

test_that(desc = "Read darug enzymes attributes",
          code = {
            expect_equal(nrow(parse_drug_enzymes()),
                         0)
            expect_error(parse_drug_enzymes(TRUE))
          })

test_that(desc = "Read darug enzymes actions attributes",
          code = {
            expect_equal(nrow(parse_drug_enzymes_actions()),
                         0)
            expect_error(parse_drug_enzymes_actions(TRUE))
          })

test_that(desc = "Read darug enzymes articles attributes",
          code = {
            expect_equal(nrow(parse_drug_enzymes_articles()),
                         0)
            expect_error(parse_drug_enzymes_articles(TRUE))
          })


test_that(desc = "Read darug enzymes textbooks attributes",
          code = {
            expect_equal(nrow(parse_drug_enzymes_textbooks()),
                         0)
            expect_error(parse_drug_enzymes_textbooks(TRUE))
          })

test_that(desc = "Read darug enzymes links attributes",
          code = {
            expect_equal(nrow(parse_drug_enzymes_links()),
                         0)
            expect_error(parse_drug_enzymes_links(TRUE))
          })

test_that(desc = "Read darug enzymes polypeptides attributes",
          code = {
            expect_equal(nrow(parse_drug_enzymes_polypeptides()),
                         0)
            expect_error(parse_drug_enzymes_polypeptides(TRUE))
          })

test_that(desc =
            "Read darug enzymes polypeptides external identifiers attributes",
          code = {
            expect_equal(
              nrow(parse_enzy_poly_ext_identitys()),
                         0)
            expect_error(
              parse_enzy_poly_ext_identitys(TRUE))
          })


test_that(desc = "Read darug enzymes polypeptides synonyms attributes",
          code = {
            expect_equal(nrow(parse_enzy_poly_syn()),
                         0)
            expect_error(parse_enzy_poly_syn(TRUE))
          })

test_that(desc = "Read darug enzymes polypeptides pfams attributes",
          code = {
            expect_equal(nrow(parse_drug_enzymes_polypeptides_pfams()),
                         0)
            expect_error(parse_drug_enzymes_polypeptides_pfams(TRUE))
          })

test_that(desc = "Read darug enzymes polypeptides go classifiers attributes",
          code = {
            expect_equal(nrow(parse_enzy_poly_go()),
                         0)
            expect_error(parse_enzy_poly_go(TRUE))
          })