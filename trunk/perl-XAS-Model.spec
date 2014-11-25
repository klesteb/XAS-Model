Name:           perl-XAS-Model
Version:        0.01
Release:        1%{?dist}
Summary:        A set of processes to manage spool files
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            http://scm.kesteb.us/git/XAS-Model/trunk/
Source0:        XAS-Model-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl(Module::Build)
BuildRequires:  perl(Test::More)
Requires:       perl(XAS) >= 0.07
Requires:       perl(DBIx::Class) >= 0.0
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
A set of processes to manage spool files

%prep
%setup -q -n XAS-Model-%{version}

%build
%{__perl} Build.PL installdirs=vendor
./Build

%install
rm -rf $RPM_BUILD_ROOT

./Build install destdir=$RPM_BUILD_ROOT create_packlist=0
./Build redhat destdir=$RPM_BUILD_ROOT

find $RPM_BUILD_ROOT -depth -type d -exec rmdir {} 2>/dev/null \;
%{_fixperms} $RPM_BUILD_ROOT/*

%check
./Build test

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
%doc Changes README
%{perl_vendorlib}/*
%config(noreplace) /etc/sysconfig/xas-spooler
%config(noreplace) /etc/logrotate.d/xas-spooler
%config(noreplace) /etc/xas/xas-spooler.ini
/usr/share/man/*
/usr/sbin/*
/etc/init.d/*
/etc/xas/*

%changelog
* Tue Mar 18 2014 "kesteb <kevin@kesteb.us>" 0.01-1
- Created for the v0.01 release.
