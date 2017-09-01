view: looker_factapplication {
  sql_table_name: BOIFS.LOOKER_FACTAPPLICATION ;;

  dimension: accountnumber {
    type: string
    sql: ${TABLE}.ACCOUNTNUMBER ;;
  }

  dimension: aer {
    type: string
    sql: ${TABLE}.AER ;;
  }

  dimension: applicantkey {
    type: string
    sql: ${TABLE}.APPLICANTKEY ;;
  }

  dimension: applicationdatekey {
    type: string
    sql: ${TABLE}.APPLICATIONDATEKEY ;;
  }

  dimension: applicationkey {
    type: string
    sql: ${TABLE}.APPLICATIONKEY ;;
  }

  dimension: applicationnumber {
    type: string
    sql: ${TABLE}.APPLICATIONNUMBER ;;
  }

  dimension: applicationstatuskey {
    type: string
    sql: ${TABLE}.APPLICATIONSTATUSKEY ;;
  }

  dimension: apr {
    type: string
    sql: ${TABLE}.APR ;;
  }

  dimension: bk_fact_table {
    type: string
    sql: ${TABLE}.BK_FACT_TABLE ;;
  }

  dimension: boidecisiondatekey {
    type: string
    sql: ${TABLE}.BOIDECISIONDATEKEY ;;
  }

  dimension: bwa_address_score {
    type: string
    sql: ${TABLE}.BWA_ADDRESS_SCORE ;;
  }

  dimension: bwa_personal_score {
    type: string
    sql: ${TABLE}.BWA_PERSONAL_SCORE ;;
  }

  dimension: campaignkey {
    type: string
    sql: ${TABLE}.CAMPAIGNKEY ;;
  }

  dimension: cancelleddatekey {
    type: string
    sql: ${TABLE}.CANCELLEDDATEKEY ;;
  }

  dimension: cii {
    type: string
    sql: ${TABLE}.CII ;;
  }

  dimension: col {
    type: string
    sql: ${TABLE}.COL ;;
  }

  dimension: counciltax {
    type: string
    sql: ${TABLE}.COUNCILTAX ;;
  }

  dimension: debttoincome {
    type: string
    sql: ${TABLE}.DEBTTOINCOME ;;
  }

  dimension: delphiscore {
    type: string
    sql: ${TABLE}.DELPHISCORE ;;
  }

  dimension: dimcallcreditkey {
    type: string
    sql: ${TABLE}.DIMCALLCREDITKEY ;;
  }

  dimension: directdebitamount {
    type: string
    sql: ${TABLE}.DIRECTDEBITAMOUNT ;;
  }

  dimension: docsrequested {
    type: string
    sql: ${TABLE}.DOCSREQUESTED ;;
  }

  dimension: e1_e_02 {
    type: string
    sql: ${TABLE}.E1_E_02 ;;
  }

  dimension: expiredflag {
    type: string
    sql: ${TABLE}.EXPIREDFLAG ;;
  }

  dimension: factcallcreditkey {
    type: string
    sql: ${TABLE}.FACTCALLCREDITKEY ;;
  }

  dimension: finaldecisionkey {
    type: string
    sql: ${TABLE}.FINALDECISIONKEY ;;
  }

  dimension: grossannualincome {
    type: string
    sql: ${TABLE}.GROSSANNUALINCOME ;;
  }

  dimension: initial888 {
    type: string
    sql: ${TABLE}.INITIAL888 ;;
  }

  dimension: initialdecisionkey {
    type: string
    sql: ${TABLE}.INITIALDECISIONKEY ;;
  }

  dimension: insert_audit_key {
    type: string
    sql: ${TABLE}.INSERT_AUDIT_KEY ;;
  }

  dimension: installmentamountfinal {
    type: string
    sql: ${TABLE}.INSTALLMENTAMOUNTFINAL ;;
  }

  dimension: interestfinal {
    type: string
    sql: ${TABLE}.INTERESTFINAL ;;
  }

  dimension: latestdecisionkey {
    type: string
    sql: ${TABLE}.LATESTDECISIONKEY ;;
  }

  dimension: latestlettersent {
    type: string
    sql: ${TABLE}.LATESTLETTERSENT ;;
  }

  dimension: latestlettervariation {
    type: string
    sql: ${TABLE}.LATESTLETTERVARIATION ;;
  }

  dimension: latestreasoncodes1 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES1 ;;
  }

  dimension: latestreasoncodes10 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES10 ;;
  }

  dimension: latestreasoncodes11 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES11 ;;
  }

  dimension: latestreasoncodes12 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES12 ;;
  }

  dimension: latestreasoncodes13 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES13 ;;
  }

  dimension: latestreasoncodes14 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES14 ;;
  }

  dimension: latestreasoncodes15 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES15 ;;
  }

  dimension: latestreasoncodes16 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES16 ;;
  }

  dimension: latestreasoncodes17 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES17 ;;
  }

  dimension: latestreasoncodes18 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES18 ;;
  }

  dimension: latestreasoncodes19 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES19 ;;
  }

  dimension: latestreasoncodes2 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES2 ;;
  }

  dimension: latestreasoncodes20 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES20 ;;
  }

  dimension: latestreasoncodes3 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES3 ;;
  }

  dimension: latestreasoncodes4 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES4 ;;
  }

  dimension: latestreasoncodes5 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES5 ;;
  }

  dimension: latestreasoncodes6 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES6 ;;
  }

  dimension: latestreasoncodes7 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES7 ;;
  }

  dimension: latestreasoncodes8 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES8 ;;
  }

  dimension: latestreasoncodes9 {
    type: string
    sql: ${TABLE}.LATESTREASONCODES9 ;;
  }

  dimension: lettercode {
    type: string
    sql: ${TABLE}.LETTERCODE ;;
  }

  dimension: lettervariation {
    type: string
    sql: ${TABLE}.LETTERVARIATION ;;
  }

  dimension: loanamountapplied {
    type: string
    sql: ${TABLE}.LOANAMOUNTAPPLIED ;;
  }

  dimension: loanamountfinal {
    type: string
    sql: ${TABLE}.LOANAMOUNTFINAL ;;
  }

  dimension: loanamountwritten {
    type: string
    sql: ${TABLE}.LOANAMOUNTWRITTEN ;;
  }

  dimension: loantermapplication {
    type: string
    sql: ${TABLE}.LOANTERMAPPLICATION ;;
  }

  dimension: loantermfinal {
    type: string
    sql: ${TABLE}.LOANTERMFINAL ;;
  }

  dimension: loantermwritten {
    type: string
    sql: ${TABLE}.LOANTERMWRITTEN ;;
  }

  dimension: monthlymortgageorrentamount {
    type: string
    sql: ${TABLE}.MONTHLYMORTGAGEORRENTAMOUNT ;;
  }

  dimension: monthlyrepaymentcontractual {
    type: string
    sql: ${TABLE}.MONTHLYREPAYMENTCONTRACTUAL ;;
  }

  dimension: monthlyrepaymentfinal {
    type: string
    sql: ${TABLE}.MONTHLYREPAYMENTFINAL ;;
  }

  dimension: monthlyrepaymentsloanothers {
    type: string
    sql: ${TABLE}.MONTHLYREPAYMENTSLOANOTHERS ;;
  }

  dimension: mortgage {
    type: string
    sql: ${TABLE}.MORTGAGE ;;
  }

  dimension: ndicato {
    type: string
    sql: ${TABLE}.NDICATO ;;
  }

  dimension: netdisposableincome {
    type: string
    sql: ${TABLE}.NETDISPOSABLEINCOME ;;
  }

  dimension: netmonthlyincome {
    type: string
    sql: ${TABLE}.NETMONTHLYINCOME ;;
  }

  dimension: nonrevcommit {
    type: string
    sql: ${TABLE}.NONREVCOMMIT ;;
  }

  dimension: noofdependents {
    type: string
    sql: ${TABLE}.NOOFDEPENDENTS ;;
  }

  dimension: numberofpolicyrulestriggered {
    type: string
    sql: ${TABLE}.NUMBEROFPOLICYRULESTRIGGERED ;;
  }

  dimension: optin_91_bwn {
    type: string
    sql: ${TABLE}.OPTIN_91BWN ;;
  }

  dimension: otheroutgoings {
    type: string
    sql: ${TABLE}.OTHEROUTGOINGS ;;
  }

  dimension: outstandingbalancecreditcards {
    type: string
    sql: ${TABLE}.OUTSTANDINGBALANCECREDITCARDS ;;
  }

  dimension: outstandingbalanceloans {
    type: string
    sql: ${TABLE}.OUTSTANDINGBALANCELOANS ;;
  }

  dimension: partnerkey {
    type: string
    sql: ${TABLE}.PARTNERKEY ;;
  }

  dimension: productkey {
    type: string
    sql: ${TABLE}.PRODUCTKEY ;;
  }

  dimension: referoutcomeskey {
    type: string
    sql: ${TABLE}.REFEROUTCOMESKEY ;;
  }

  dimension: rent {
    type: string
    sql: ${TABLE}.RENT ;;
  }

  dimension: reprocesscount {
    type: string
    sql: ${TABLE}.REPROCESSCOUNT ;;
  }

  dimension: revcommit {
    type: string
    sql: ${TABLE}.REVCOMMIT ;;
  }

  dimension: riskscore {
    type: string
    sql: ${TABLE}.RISKSCORE ;;
  }

  dimension: sp_g_38 {
    type: string
    sql: ${TABLE}.SP_G_38 ;;
  }

  dimension: takenupdecisiondatekey {
    type: string
    sql: ${TABLE}.TAKENUPDECISIONDATEKEY ;;
  }

  dimension: totaldebtconsolidationamount {
    type: string
    sql: ${TABLE}.TOTALDEBTCONSOLIDATIONAMOUNT ;;
  }

  dimension: totalmortgagebalancebureau {
    type: string
    sql: ${TABLE}.TOTALMORTGAGEBALANCEBUREAU ;;
  }

  dimension: totalpayablefinal {
    type: string
    sql: ${TABLE}.TOTALPAYABLEFINAL ;;
  }

  dimension: totalunsecuredbalancebureau {
    type: string
    sql: ${TABLE}.TOTALUNSECUREDBALANCEBUREAU ;;
  }

  dimension: update_audit_key {
    type: string
    sql: ${TABLE}.UPDATE_AUDIT_KEY ;;
  }

  dimension: weightedaprapplied {
    type: string
    sql: ${TABLE}.WEIGHTEDAPRAPPLIED ;;
  }

  dimension: weightedaprfinal {
    type: string
    sql: ${TABLE}.WEIGHTEDAPRFINAL ;;
  }

  dimension: weightedloantermapplied {
    type: string
    sql: ${TABLE}.WEIGHTEDLOANTERMAPPLIED ;;
  }

  dimension: weightedloantermfinal {
    type: string
    sql: ${TABLE}.WEIGHTEDLOANTERMFINAL ;;
  }

  dimension: weightedpbr {
    type: string
    sql: ${TABLE}.WEIGHTEDPBR ;;
  }

  dimension: weightedriskscoreapplied {
    type: string
    sql: ${TABLE}.WEIGHTEDRISKSCOREAPPLIED ;;
  }

  dimension: weightedriskscorefinal {
    type: string
    sql: ${TABLE}.WEIGHTEDRISKSCOREFINAL ;;
  }

  dimension: writtendatekey {
    type: string
    sql: ${TABLE}.WRITTENDATEKEY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
