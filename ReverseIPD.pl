#!/usr/bin/perl -w
# Reverse IP  Domain Checker ...!
# Уебсайт : http://nsc-group.org
# Автор : LinuxMaster
use LWP::Simple;
system(($^O eq 'MSWin32') ? 'cls' : 'clear');

print "\n\n\t\t\t[+] Reverse IP Domain Checker [+]
\n\n\t\t\t   [    Coded By : LinuxMaster    ]
\n\n\t\t     [*]   http://nsc-group.org [*]
\n\n\n Plz Enter Server IP =>\t\t";
$ip = <STDIN>;
$page = get "http://www.bing.com/search?q=ip%3A".$ip."&qs=n&pq=ip%3A".$ip."&sc=8-29";
$page2= get "http://www.bing.com/search?q=ip%3A".$ip."&qs=n&pq=ip%3A".$ip."&sc=8-29&first=11";
$page3= get "http://www.bing.com/search?q=ip%3A".$ip."&qs=n&pq=ip%3A".$ip."&sc=8-29&first=21";
open (l_site,">>Sites.txt");
print l_site "\nSites In $ip\n";
print "\n------------------\n\tPage 1\n------------------ \n";
while($page =~ /<cite>(.*?)<\/cite>/gi){
print "\n$1\n";
open (l_site,">>Sites.txt");
print l_site "\n$1\n";
}
print "\n------------------\n\tPage 2\n------------------ \n";
while($page2 =~ /<cite>(.*?)<\/cite>/gi){
print "\n$1\n";
open (l_site1,">>Sites.txt");
print l_site1 "\n$1\n";
}
print "\n------------------\n\tPage 3\n------------------ \n";
while($page3 =~ /<cite>(.*?)<\/cite>/gi){
print "\n$1\n";
open (l_site2,">>Sites.txt");
print l_site2 "\n$1\n";
}
print "\n\n\t\tDone !\n\n";
system('pause');
