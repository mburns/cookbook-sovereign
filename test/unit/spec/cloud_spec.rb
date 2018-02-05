# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'chefspec'
require_relative 'spec_helper'

describe 'paramount::cloud' do
  before { stub_resources }

  cached(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }
end
