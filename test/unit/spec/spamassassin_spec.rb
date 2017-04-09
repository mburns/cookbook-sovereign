# encoding: UTF-8

# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'chefspec'
require_relative 'spec_helper'

describe 'paramount::spamassassin' do
  before { stub_resources }

  let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

  %w(paramount::amavis onddo-spamassassin).each do |recipe|
    it "includes #{recipe}" do
      expect(chef_run).to include_recipe recipe
    end
  end
end
