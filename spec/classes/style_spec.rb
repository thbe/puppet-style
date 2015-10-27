require 'spec_helper'

describe "style" do

  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      it { is_expected.to compile.with_all_deps }

      it { is_expected.to contain_class('style::package') }
      it { is_expected.to contain_class('style::config') }
      it { is_expected.to contain_package('dmidecode') }
      it { is_expected.to contain_package('dstat') }
      it { is_expected.to contain_package('iftop') }
      it { is_expected.to contain_package('iotop') }
      it { is_expected.to contain_package('htop') }
      it { is_expected.to contain_package('ncdu') }
      it { is_expected.to contain_package('ncftp') }
      it { is_expected.to contain_package('nmap') }
      it { is_expected.to contain_package('pv') }
      it { is_expected.to contain_package('rsync') }
      it { is_expected.to contain_package('screen') }
      it { is_expected.to contain_package('strace') }
      it { is_expected.to contain_package('tree') }
      it { is_expected.to contain_package('unzip') }
      it { is_expected.to contain_package('wget') }
      it { is_expected.to contain_file('/etc/profile.d/custom.sh') }

      case facts[:osfamily]
      when 'Debian'
        it { is_expected.to contain_package('vim') }
        it { is_expected.to contain_package('xauth') }
        it { is_expected.to contain_package('glances') }
      when 'RedHat'
        it { is_expected.to contain_package('vim-enhanced') }
        it { is_expected.to contain_package('xorg-x11-xauth') }
        if facts[:lsbmajdistrelease] = '5'
          it { is_expected.to contain_package('redhat-lsb') }
        else
          it { is_expected.to contain_package('redhat-lsb-core') }
          it { is_expected.to contain_package('glances') }
        end
      else
        it { is_expected.to contain_warning('The current operating system is not supported!') }
      end
    end
  end
end
