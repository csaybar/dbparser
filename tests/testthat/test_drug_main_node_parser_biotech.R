context("test biotech drug main attributes parsers")

library(dbparser)
library(testthat)
library(XML)
library(tibble)
library(purrr)


biotech <- "drugbank_record_biotech.xml"
test_that(
  desc = "Read database",
  code = {
    expect_true(
      read_drugbank_xml_db(
        system.file("extdata", biotech, package = "dbparser")
      )
    )
  }
)

test_that(
  desc = "Read darug primary key attribute",
  code = {
    expect_match(drug()[1][["primary_key"]], "DB00001")
    expect_error(drug(TRUE))
  }
)

test_that(
  desc = "Read darug other keys attribute",
  code = {
    expect_match(drug()$other_keys, "BIOD00024")
    expect_error(drug(TRUE))
  }
)

test_that(
  desc = "Read darug groups attributes",
  code = {
    expect_match(
      as.character(drug_groups()[1][["group"]]),
      "approved"
    )
    expect_error(drug_groups(TRUE))
  }
)

test_that(
  desc = "Read darug articles attributes",
  code = {
    expect_match(
      as.character(drug_articles()[["pubmed-id"]][1]),
      "16244762"
    )
    expect_error(drug_articles(TRUE))
  }
)

test_that(
  desc = "Read darug books attributes",
  code = {
    expect_equal(nrow(drug_books()), 0)
    expect_error(drug_books(TRUE))
  }
)

test_that(
  desc = "Read darug links attributes",
  code = {
    expect_match(
      as.character(drug_links()[1][["title"]]),
      "Google books"
    )
    expect_error(drug_links(TRUE))
  }
)

test_that(
  desc = "Read darug classification attributes",
  code = {
    expect_match(
      drug_classification()[1][["parent_key"]],
      "DB00001"
    )
    expect_error(drug_classification(TRUE))
  }
)

test_that(
  desc = "Read darug syn attributes",
  code = {
    expect_match(
      drug_syn()[["synonym"]][[1]],
      "Hirudin variant-1"
    )
    expect_error(drug_syn(TRUE))
  }
)

test_that(
  desc = "Read darug articles attributes",
  code = {
    expect_match(
      as.character(drug_articles()[["pubmed-id"]][1]),
      "16244762"
    )
    expect_error(drug_articles(TRUE))
  }
)

test_that(
  desc = "Read darug products attributes",
  code = {
    expect_match(
      as.character(drug_products()[["name"]][1]),
      "Refludan"
    )
    expect_error(drug_products(TRUE))
  }
)

test_that(
  desc = "Read darug mixtures attributes",
  code = {
    expect_match(
      as.character(drug_mixtures()[["name"]][1]),
      "Refludan"
    )
    expect_error(drug_mixtures(TRUE))
  }
)

test_that(
  desc = "Read darug packagers attributes",
  code = {
    expect_match(
      as.character(drug_packagers()[["name"]][1]),
      "Bayer Healthcare"
    )
    expect_error(drug_packagers(TRUE))
  }
)

test_that(
  desc = "Read darug manufacturers attributes",
  code = {
    expect_match(
      as.character(drug_manufacturers()[["manufacturer"]][[1]]),
      "Bayer healthcare pharmaceuticals inc"
    )
    expect_error(drug_manufacturers(TRUE))
  }
)

test_that(
  desc = "Read darug prices attributes",
  code = {
    expect_match(
      as.character(drug_prices()[["currency"]][[1]]),
      "USD"
    )
    expect_error(drug_prices(TRUE))
  }
)

test_that(
  desc = "Read darug categories attributes",
  code = {
    expect_match(
      as.character(drug_categories()[["mesh-id"]][[1]]),
      "D000602"
    )
    expect_error(drug_categories(TRUE))
  }
)

test_that(
  desc = "Read darug affected organisms attributes",
  code = {
    expect_match(
      as.character(
        drug_affected_organisms()[["affected_organism"]][[1]]
      ),
      "Humans and other mammals"
    )
    expect_error(drug_affected_organisms(TRUE))
  }
)

test_that(
  desc = "Read darug dosages attributes",
  code = {
    expect_match(
      as.character(drug_dosages()[["route"]][[1]]),
      "Intravenous"
    )
    expect_error(drug_dosages(TRUE))
  }
)

test_that(
  desc = "Read darug atc codes attributes",
  code = {
    expect_match(
      as.character(drug_atc_codes()[["atc_code"]][[1]]),
      "B01AE02"
    )
    expect_error(drug_atc_codes(TRUE))
  }
)

test_that(
  desc = "Read darug ahfs codes attributes",
  code = {
    expect_equal(
      nrow(drug_ahfs_codes()),
      0
    )
    expect_error(drug_ahfs_codes(TRUE))
  }
)

test_that(
  desc = "Read darug pdb entries attributes",
  code = {
    expect_equal(
      nrow(drug_pdb_entries()),
      0
    )
    expect_error(drug_pdb_entries(TRUE))
  }
)

test_that(
  desc = "Read darug patents attributes",
  code = {
    expect_match(
      as.character(drug_patents()[["country"]][[1]]),
      "United States"
    )
    expect_error(drug_patents(TRUE))
  }
)

test_that(
  desc = "Read darug interactions attributes",
  code = {
    expect_match(
      as.character(drug_interactions()[["name"]][[1]]),
      "St. John's Wort"
    )
    expect_error(drug_interactions(TRUE))
  }
)

test_that(
  desc = "Read darug food interactions attributes",
  code = {
    expect_equal(
      nrow(drug_food_interactions()),
      0
    )
    expect_error(drug_food_interactions(TRUE))
  }
)

test_that(
  desc = "Read darug sequences attributes",
  code = {
    expect_match(
      as.character(drug_sequences()[["format"]][[1]]),
      "FASTA"
    )
    expect_error(drug_sequences(TRUE))
  }
)

test_that(
  desc = "Read darug experimental properties attributes",
  code = {
    expect_match(
      as.character(drug_exp_prop()[["kind"]][[1]]),
      "Melting Point"
    )
    expect_error(drug_exp_prop(TRUE))
  }
)

test_that(
  desc = "Read darug external identifiers attributes",
  code = {
    expect_match(
      as.character(
        drug_ex_identity()[["resource"]][[1]]
      ),
      "Drugs Product Database \\(DPD\\)"
    )
    expect_error(drug_ex_identity(TRUE))
  }
)

test_that(
  desc = "Read darug external links attributes",
  code = {
    expect_match(
      as.character(drug_external_links()[["resource"]][[1]]),
      "RxList"
    )
    expect_error(drug_external_links(TRUE))
  }
)


test_that(
  desc = "Read darug snp effects attributes",
  code = {
    expect_equal(
      nrow(drug_snp_effects()),
      0
    )
    expect_error(drug_snp_effects(TRUE))
  }
)

test_that(
  desc = "Read darug snp adverse drug reactions attributes",
  code = {
    expect_equal(
      nrow(drug_snp_adverse_reactions ()),
      0
    )
    expect_error(drug_snp_adverse_reactions (TRUE))
  }
)
