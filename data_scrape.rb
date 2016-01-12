#!/usr/bin/env ruby

require 'benchmark'
require 'csv'
require 'pp'
require 'smarter_csv'

contacts_filepath = '../_backups/2016.01.11.utf8/Contact.csv'
campaign_members_filepath = '../_backups/2016.01.11.utf8/CampaignMember.csv'

Benchmark.bm do |bm|
	bm.report do
    contacts = SmarterCSV.process(contacts_filepath)
  end

  #bm.report do |bm|
    #campaign_members = SmarterCSV.process(campaign_members_filepath)
  #end
end
