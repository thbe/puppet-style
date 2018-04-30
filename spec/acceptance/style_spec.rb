require 'spec_helper_acceptance'

describe 'style' do
  let(:manifest) {
    <<-CLASSPARAMETER
class { 'style': }
CLASSPARAMETER
  }

  it 'should apply without errors' do
    apply_manifest(manifest, :catch_failures => true)
  end

  it 'should apply a second time without changes' do
    @result = apply_manifest(manifest)
    expect(@result.exit_code).to be_zero
  end

  describe file('/etc/profile.d/custom.sh') do
    it { should be_file }
    it { should exist }
  end

  describe package('dmidecode') do
    it { should be_installed }
  end

  describe package('dstat') do
    it { should be_installed }
  end

  describe package('htop') do
    it { should be_installed }
  end

  describe package('iftop') do
    it { should be_installed }
  end

  describe package('iotop') do
    it { should be_installed }
  end

  describe package('ncdu') do
    it { should be_installed }
  end

  describe package('ncftp') do
    it { should be_installed }
  end

  describe package('nmap') do
    it { should be_installed }
  end

  describe package('pv') do
    it { should be_installed }
  end

  describe package('rsync') do
    it { should be_installed }
  end

  describe package('screen') do
    it { should be_installed }
  end

  describe package('sslscan') do
    it { should be_installed }
  end

  describe package('strace') do
    it { should be_installed }
  end

  describe package('tree') do
    it { should be_installed }
  end

  describe package('unzip') do
    it { should be_installed }
  end

  describe package('wget') do
    it { should be_installed }
  end
end
