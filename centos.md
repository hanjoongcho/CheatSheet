# VMware CentOS Image 설치 및 기본환경 설정하기

## 01. 이미지 다운로드
CentOS 6.10 다운로드 링크:  
https://www.osboxes.org/centos/#centos-7-lemp-info

## 02. Virtual Machine 생성하기
Adding Converted VMDK Virtual Disk to VMware Virtual Machine:  
https://kb.acronis.com/content/1721

## 03. SSH 활성화 하기
https://medium.com/@taufiq_ibrahim/enable-ssh-on-centos-fresh-install-25329569c120
```
// Install OpenSSH Server and Client
yum -y install openssh-server openssh-clients

// Enable on start
chkconfig sshd on

// Restart SSHD
service sshd restart
```

## 04. open-jdk 설치하기
https://zetawiki.com/wiki/CentOS_JDK_%EC%84%A4%EC%B9%98
```
// 설치가능 확인
yum list java*jdk-devel

// 설치
yum install java-1.8.0-openjdk-devel.x86_64

// 설치 확인
rpm -qa java*jdk-devel
javac -version 
```

## 05. 환경변수 확인
https://shaeod.tistory.com/748   
http://ehpub.co.kr/4-%EB%A6%AC%EB%88%85%EC%8A%A4-%ED%99%98%EA%B2%BD-%EB%B3%80%EC%88%98-%EB%AA%A9%EB%A1%9D%EC%9D%84-%ED%99%95%EC%9D%B8%ED%95%A0-%EB%95%8C%EB%8A%94-expert-%EB%AA%85%EB%A0%B9%EC%9D%84-%EC%82%AC%EC%9A%A9/

## 05-01. 환경변수 편집
https://blog.hanumoka.net/2018/04/30/centOs-20180430-centos-install-jdk/
```
[root@localhost etc]# echo $JAVA_HOME

[root@localhost etc]# which javac
/usr/bin/javac
[root@localhost etc]# readlink /usr/bin/javac
/etc/alternatives/javac
[root@localhost etc]# readlink /etc/alternatives/javac
/usr/lib/jvm/java-1.8.0-openjdk.x86_64/bin/javac
[root@localhost etc]# vi /etc/profile
[root@localhost etc]# source /etc/profile
[root@localhost etc]# echo $JAVA_HOME
/usr/lib/jvm/java-1.8.0-openjdk.x86_64/
[root@localhost etc]#

```

## 06. Apache Tomcat 설치
https://victorydntmd.tistory.com/224

## 07. 방화벽 예외설정
http://blog.plura.io/?p=4519  
https://www.first2host.co.uk/f/open-port-iptables/  
https://unix.stackexchange.com/questions/109443/open-port-80-in-centos-6-5
