#!/usr/bin/perl

    use HTTP::Request;
    use LWP::UserAgent;

system ("cls");
system ("title  (Yakamoz)...");
print "\t\t//\n";  
print "\t\t__\n";
print "\t\t\t PHPmyadmin Finder v.x.x\n";
print "\t\t\t Edited by LinuxMaster\n";
print "\t\t\t Web : http://nsc-group.org\n";
print "\t\t\t Version In English\n";
print "\t\t__\n";
print "\n\n";
sleep (1);
    print "\n\n";
    print "\t HOST=> (ex: http://www.site.com)\n";
    print "\t HOST=> :";
    $host=<STDIN>;
    chomp($host);
    if($host !~ /http:\/\//) { $host = "http://$host"; };

print "\n\n";
print "\t\t*-*-*-*-*-* Scanning *-*-*-*-*-*\n";
print "\n\n";
@p = ("/phpMyAdmin/",
"/phpmyadmin/",
"/PMA/",
"/admin/",
"/dbadmin/",
"/mysql/",
"/myadmin/",
"/phpmyadmin2/",
"/phpMyAdmin2/",
"/phpMyAdmin-2/",
"/php-my-admin/",
"/phpMyAdmin-2.2.3/",
"/phpMyAdmin-2.2.6/",
"/phpMyAdmin-2.5.1/",
"/phpMyAdmin-2.5.4/",
"/phpMyAdmin-2.5.5-rc1/",
"/phpMyAdmin-2.5.5-rc2/",
"/phpMyAdmin-2.5.5/",
"/phpMyAdmin-2.5.5-pl1/",
"/phpMyAdmin-2.5.6-rc1/",
"/phpMyAdmin-2.5.6-rc2/",
"/phpMyAdmin-2.5.6/",
"/phpMyAdmin-2.5.7/",
"/phpMyAdmin-2.5.7-pl1/",
"/phpMyAdmin-2.6.0-alpha/",
"/phpMyAdmin-2.6.0-alpha2/",
"/phpMyAdmin-2.6.0-beta1/",
"/phpMyAdmin-2.6.0-beta2/",
"/phpMyAdmin-2.6.0-rc1/",
"/phpMyAdmin-2.6.0-rc2/",
"/phpMyAdmin-2.6.0-rc3/",
"/phpMyAdmin-2.6.0/",
"/phpMyAdmin-2.6.0-pl1/",
"/phpMyAdmin-2.6.0-pl2/",
"/phpMyAdmin-2.6.0-pl3/",
"/phpMyAdmin-2.6.1-rc1/",
"/phpMyAdmin-2.6.1-rc2/",
"/phpMyAdmin-2.6.1/",
"/phpMyAdmin-2.6.1-pl1/",
"/phpMyAdmin-2.6.1-pl2/",
"/phpMyAdmin-2.6.1-pl3/",
"/phpMyAdmin-2.6.2-rc1/",
"/phpMyAdmin-2.6.2-beta1/",
"/phpMyAdmin-2.6.2-rc1/",
"/phpMyAdmin-2.6.2/",
"/phpMyAdmin-2.6.2-pl1/",
"/phpMyAdmin-2.6.3/",
"/phpMyAdmin-2.6.3-rc1/",
"/phpMyAdmin-2.6.3/",
"/phpMyAdmin-2.6.3-pl1/",
"/phpMyAdmin-2.6.4-rc1/",
"/phpMyAdmin-2.6.4-pl1/",
"/phpMyAdmin-2.6.4-pl2/",
"/phpMyAdmin-2.6.4-pl3/",
"/phpMyAdmin-2.6.4-pl4/",
"/phpMyAdmin-2.6.4/",
"/phpMyAdmin-2.7.0-beta1/",
"/phpMyAdmin-2.7.0-rc1/",
"/phpMyAdmin-2.7.0-pl1/",
"/phpMyAdmin-2.7.0-pl2/",
"/phpMyAdmin-2.7.0/",
"/phpMyAdmin-2.8.0-beta1/",
"/phpMyAdmin-2.8.0-rc1/",
"/phpMyAdmin-2.8.0-rc2/",
"/phpMyAdmin-2.8.0/",
"/phpMyAdmin-2.8.0.1/",
"/phpMyAdmin-2.8.0.2/",
"/phpMyAdmin-2.8.0.3/",
"/phpMyAdmin-2.8.0.4/",
"/phpMyAdmin-2.8.1-rc1/",
"/phpMyAdmin-2.8.1/",
"/phpMyAdmin-2.8.2/",
"/sqlmanager/",
"/mysqlmanager/",
"/p/m/a/",
"/PMA2005/",
"/pma2005/",
"/phpmanager/",
"/php-myadmin/",
"/phpmy-admin/",
"/webadmin/",
"/sqlweb/",
"/websql/",
"/webdb/",
"/mysqladmin/",
"/mysql-admin/");

foreach $myadmin(@p){

$url = $host.$myadmin;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($request);
if ($response->is_success){print "Found : $url\n";}
if ($response->content=~ /Access Denied/){print "Found : $url =>[Error & Access Denied]\n";}
else {print "NotFound : $myadmin\n";}

}