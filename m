Return-Path: <linux-ntb+bncBCU2BIMV74DRBYG43TUQKGQEZSGU3YI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 6289871C51
	for <lists+linux-ntb@lfdr.de>; Tue, 23 Jul 2019 17:57:21 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id o2sf9409840lji.14
        for <lists+linux-ntb@lfdr.de>; Tue, 23 Jul 2019 08:57:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563897441; cv=pass;
        d=google.com; s=arc-20160816;
        b=C9luiOTRkxoNoA6TtzDIf+vnckpGjXl8P5k2VjZ5OJJkZLh3QWfX6+86uVY74lv4do
         att67kSCPq80YsxshBzuR9i0VWRlKOklIYeHbnPNVceBaz7gQJlDm5h63d9XKdVijx7y
         rPaOjdhVlHknk+MyrhnHa4DRrAWuaU9gflSUhBh31a/OtiHF5z7ZmE0Nkr0JGC1cA3zF
         8ouGy76B3o8HIahFH6bBsxYZL3xLIBtXvFszYjSdGaJGVmM5yV50gp6EzdmKgiWc8UXc
         AQ6o641T/N0RIdDHmCI1jO8uX2gVUDnegCyyvVejrw5VDNK0emCpZY4id+CEFeDPks4i
         /nNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=+usvIrN6QgcP7VCAjkBncOk3+oLmGogkMafvBKeccko=;
        b=bfYTBYoUn5qebodU8fh2OXyMhhik8X4MAmJKp6A66D5VWvcmoOf3FioxqOnNHzlNn7
         QveMDx+taqAlgRDEFWU8TxDJOZ34TITSRSFU0DlndO23D9QJ9QofhN2KS5HnBB9cm/r8
         rggvzDkvxLvxJZnUbsG5y4BVpo/7AiF4FemNg31QgG+CGLGJliDNizHlUixa9R+QWlxV
         Y31ievWTX9iPQvKPJMgUrJy9+gby4+mQocAV2+bbt54z2grhtpRRWs+mrqoUzuobVi1c
         /Pz8e4Sy/1ow7dD0iF1D0Ea1qqGdKSPg60jQByemoeXGB/XZxpMGemZhQtjukfEHRRLH
         gXVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=xPPaglJf;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of vamsi@genisists.com) smtp.mailfrom=vamsi@genisists.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+usvIrN6QgcP7VCAjkBncOk3+oLmGogkMafvBKeccko=;
        b=PB9mbsOJ9q2hE/n7/5nHK686nUXeKrHCl0ONNgmKrKIQvJCZ3lfmk8n8y2Pu39bLCn
         tjqMDGpQ/MrvCnunvOFJefBZTAwUHsQtzRiapX1AlkLnhKyrLuDdmppoElDBq6IpsXmI
         RS5GA9+h5dzE9H0VUSzJ6jtgfYGLBaqrzfKBuBxR1rKzQAggidwYOYaXu+CVhTFXsGDK
         vRwOzrDM2n8+pL2cUP4zFtnejJ2VmPdtgKwWSOcAYFnAH+hsoYMJfgmBTtXsPgjQFDZT
         pOh7u4zZjVdqbWEFwDodfe7KJ5HLloi/HmRLMltBqvh10JUNypm91c2qLFH+IXsoku4+
         7kVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+usvIrN6QgcP7VCAjkBncOk3+oLmGogkMafvBKeccko=;
        b=aWbXHlG/9Pmeh8qnxU+HfZuYM6m4dOvFhbHkzs6MfGWA9K/YMBXuDevX5VPpjImriS
         ZI7RbcmbEMC0R6yf6+dTw/35xbWyED6iBH0swPNYQh+1Kor5hPKnOqFdPW/dukRpibPv
         626so/v4Jmm9UCSEUt2Mor4hJWGPPqOdQ3u6pcmCOVVy4WdigTjxl+DDn05jBB/UydtN
         xu7Q0hI4QZB65UlUdA6WmjDp9jH4DFjnd8e9EhRqwuSIcF9gwW8aTvznM4/Wmv4QGwdn
         ohpfzxmJVg73X5+L1D1D2ynkvMz6O7BEQnCcQ8fy74zUNCAY9tw30fSfusnFubT9Gp8+
         S1cg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWKEexQW02G/fgw0DZZk/jyqGy+fWTv3ljq+E8BfwIA1B+poOtT
	rMkcRildojsEMJAJdL+j1qA=
X-Google-Smtp-Source: APXvYqwWz1D0pq+Zi7uUoEXB2YQpAsyi018aSo0okGY09z+VVANAzSNtfH0bb/qBTIu+WjfTR5ANYQ==
X-Received: by 2002:a2e:7315:: with SMTP id o21mr32250837ljc.3.1563897440762;
        Tue, 23 Jul 2019 08:57:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:157:: with SMTP id c23ls4934951ljd.8.gmail; Tue, 23
 Jul 2019 08:57:20 -0700 (PDT)
X-Received: by 2002:a2e:3c1a:: with SMTP id j26mr40278087lja.230.1563897440292;
        Tue, 23 Jul 2019 08:57:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563897440; cv=none;
        d=google.com; s=arc-20160816;
        b=nwFKCEMCp8nGIo/jyB0mKMyK2d8b932tEzohx5tmzv99Rdz5YDudvmozdWoacIdNHY
         yHzdOiWTPTT4i/g5USLYxvfBAL4UPG72jgYs3nQtvJg85CGbm8mKPRfXeUfI2meEP3tt
         x0G5FcbaQzidWntGxVdhI8v/ZKNhaAZwkoW0KRPyMrg8nNtYzYiUjKkqCdU/zLATALe0
         rs/J0G/cSTryR0QzqKuvR1itFo62eEiLCXkE43WOUkikwtb9U/J/v9jUe86ENxHcjIjQ
         4dnFyohPjS97Kcjx4G5BYg5A0YPzeGkUKJBCheFTuLESw3O21xOjAtO69RswPxGoCGae
         KTqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=4ht2z3wgpsrMAmhYb0Pj8yeKJdBLFgVjoE2bAHBcoi4=;
        b=i+eKsp4AabeqKzI8OjsRMHaEL/Cw/HwERc7R9LQnH2Bq4FNjJuuPcm5nBY6+oJIyvN
         MlmPpluVegBV12sq5MC91uHFYHcpCj+5UDJkuuDdZGMU7KUnJSfp3HJfMOj1gHa6Pqj9
         MO31101YMQ5SDiLPsZgiaB3WFiBcxMBIVv90WAfUfxx4TT5e996+S2cWXdwr5tC7MneW
         yGw7EKDEEObb66cnpopQ2Kzl8DQ4LI4EP2gMXxv8N/ml1SjM4fwY2pfUeTsMGIYh7z77
         GOzKZEsNsZ8705xQFvYOrTwAdEDoHySbwJ9NHu2HzU7jqweT2WwIghrUsnrSKHLAUrCu
         sVhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=xPPaglJf;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of vamsi@genisists.com) smtp.mailfrom=vamsi@genisists.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id f26si1962862lfp.5.2019.07.23.08.57.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 08:57:20 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of vamsi@genisists.com) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id s15so17618772wmj.3
        for <linux-ntb@googlegroups.com>; Tue, 23 Jul 2019 08:57:20 -0700 (PDT)
X-Received: by 2002:a05:600c:118a:: with SMTP id i10mr68149111wmf.162.1563897439514;
 Tue, 23 Jul 2019 08:57:19 -0700 (PDT)
MIME-Version: 1.0
From: vamsi krishna banda <vamsi@genisists.com>
Date: Tue, 23 Jul 2019 21:27:08 +0530
Message-ID: <CALgF8_VFC4xTAoBoaUVjX6=VjYy5qkGtLHKa9OE=JXoEXJ9TGw@mail.gmail.com>
Subject: Today's Wonderful Multiple Requirements Across USA
To: vamsi krishna banda <vamsi@genisists.com>
Content-Type: multipart/alternative; boundary="000000000000591007058e5b3f63"
X-Original-Sender: vamsi@genisists.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623
 header.b=xPPaglJf;       spf=neutral (google.com: 2a00:1450:4864:20::343 is
 neither permitted nor denied by best guess record for domain of
 vamsi@genisists.com) smtp.mailfrom=vamsi@genisists.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

--000000000000591007058e5b3f63
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Network,



Hope you are doing great

Please go through the below requirement and if you have any suitable
candidates drop me an Email at vamsi@genisists.com* (or)*  (315)989-0824



Java Fullstack Developer

experience: 6 to 8years (candidate's DOB 1990 below)

Visa: No OPTs and CPTs



Newark, DE

Required Strengths and Capabilities

Very strong experience in Spring 4.X, Spring MVC, Hibernate or an
equivalent ORM, Web Services =E2=80=93 SOAP / RESTful

=E2=80=A2     Very strong experience in enterprise level J2EE platforms usi=
ng J2EE
design patterns, Spring boot, Spring Security, Microservice

=C2=B7         Minimum of 5-7 plus years of experience

=C2=B7         Advanced knowledge of application, data and infrastructure
architecture disciplines and *clean code*

=C2=B7         Hands on experience and working proficiency in developmental=
 tool
sets, *CI/CD*

=C2=B7         Experience in UI development using ReactJS, HTML5, CSS,
JavaScript etc.

=C2=B7         Experience in *TDD,* *automated testing including unit,
integration and acceptance testing*

=C2=B7         Experience of working on *high data volume processing* appli=
cations
(batch and/or real-time)







.Net Developer with Java

Location: Plano, TX

Only contract

experience: 6 to 8 years (candidate's DOB 1990 below)

Visa: No OPTs and CPTs





Give one profile and kindly stick on to old req ( Plz discuss with in the
team and work )



=C2=B7         Must have 8+ years of development experience in enterprise
application development projects using DotNet technology

=C2=B7         T-Shaped development experience (75% in .NET and 25% Core Ja=
va
development)

=C2=B7         75%: Must have strong hands on experience in .Net 4.5, .NET =
MVC,
ASP .NET, AJAX, NUNIT

=C2=B7         25%: Must have hands on experience in Core Java, Web Service=
s,
Spring, Collections

=C2=B7         Experience in SQL/PL-SQL

=C2=B7         Experience in design, analysis, development, coding, unit
testing, debug and documentation for complex systems

=C2=B7         Good to have experience in Cloud computing technology

=C2=B7         Good troubleshooting skills

=C2=B7         Experience in Agile projects

=C2=B7         Experience in Tools like Jira, Bitbucket, Splunk SharePoint,
Confluence

=C2=B7         Self-starter, proactive and good communication skills



Java Developer

Columbus, OH

Contract

experience: 6 to 8 years ((candidate's DOB 1990 below)

Visa: No OPTs and CPTs



Candidate must have experience working in Agile environment

=E2=80=A2 Advanced skills in Java, Spring Core, Spring Boot, Spring Securit=
y,
Maven, REST, SQL

=E2=80=A2 Basic skills in Git, Tomcat, Unix, Spring Cloud, TDD

=E2=80=A2 Good to have knowledge on WebSphere, Jenkins, Intellij

=E2=80=A2 + points for experience with Web design, content management or Ma=
rklogic



Java Lead/Associate Architect

Chicago, IL

experience: 6 to 8 years (candidate's DOB 1990 below) )

Visa: No OPTs and CPTs



1.       Good reputed companies background as Tech Lead or Associate
Architects

2.       Good Designing and Development background

3.       Java 1.8, Multithreading, Concurrency, Lamba expressions

4.       Strong in OOPS, Data Structures, Algorithms

5.       Spring 3.5/4.x, Spring boot, microservices, Spring batch/Security

6.       Nice to have Bigdata exposure and Kafka



*Key Skills:*

=E2=80=A2        Solid object oriented design, coding, testing, and debuggi=
ng skills

=E2=80=A2        Strong experience with Java J2EE development (javaS)

=E2=80=A2        Hands on experience in application development using Sprin=
g
framework

=E2=80=A2        Hands on experience with Spring Boot

=E2=80=A2        Knowledge on Spring based webservices (REST SOAP)

=E2=80=A2        Good understanding of JavaScript frameworks like Angular R=
eact

=E2=80=A2        Hands on experience in sql pl sql

=E2=80=A2        Hands on experience working on any JPA implementation (Spr=
ing Data
JPA)

=E2=80=A2        experience working with Maven



*Mongo DB Sr. Developer*

*Location: Columbia, MD.*

experience: 6 to 8 years (candidate's DOB 1990 below)

Visa: No OPTs and CPTs



=E2=80=A2 Spring Data Flow developer
=E2=80=A2 8+ years of experience in working as data pipeline developer
=E2=80=A2 Experience in analyzing data along with data modeling
=E2=80=A2 Experience with creating script for data modeling and data import=
/export
=E2=80=A2 Define Schema, setting up and populating data from various data s=
ources
=E2=80=A2 Experience in creating Profile hubs, decision models, etc
=E2=80=A2 Experience in design and developing application leveraging Mongo =
DB
=E2=80=A2 Nice to have: experience working with SAS - of using Base SAS,
SAS/Macros, SAS/SQL, SAS/STAT=E2=80=99
=E2=80=A2 Desired experience
o Worked in decision processes



Java Developer (Java 1.8, Microservices, Spring 4.x, Angular)

Tampa, FL, Austin TX

Contract

experience: 6 to 8 years (candidate's DOB 1990 below)

Visa: No OPTs and CPTs



Job description:



Candidate must have experience working in Agile environment

=E2=80=A2 Advanced skills in Java, Spring Core, Spring Boot, Microservices,=
 Maven,
REST, SQL

=E2=80=A2 Basic skills in Git, Tomcat, Unix, Spring Cloud, TDD

=E2=80=A2 Good to have knowledge on WebSphere, Jenkins, Intellij

=E2=80=A2 + points for experience with Web design, content management or Ma=
rklogic



 *Job Title : UI Frontend Developer     *

*Location : **Columbus , OH, NYC NY*

experience: 6 to 8years (candidate's DOB 1990 below)

Visa: No OPTs and CPTs



Job Description



=C2=B7         React JS, JavaScript, JQuery, HTML, HTML5, CSS, CSS3, Web
Programming Skills,  Teamwork, Verbal Communication, cross-browser
compatibility, Web User Interface Design (UI), Security Principles,
Object-Oriented Design, Web Services, Multimedia Content Development,
API's.

=C2=B7         Regular exposure to business stakeholders and executive
management, as well as the authority and scope to apply your expertise to
many interesting technical problems.

=C2=B7         Candidate must have a strong understanding of UI, cross-brow=
ser
compatibility, general web functions and standards.

=C2=B7         The position requires constant communication with colleagues=
.

=C2=B7         Experience in planning and delivering software platforms use=
d
across multiple products and organizational units.

=C2=B7         Deep expertise and hands on experience with Web Applications=
 and
programming languages such as HTML, CSS, JavaScript, jQuery and API's.

=C2=B7         Deep functional knowledge or hands on design experience with=
 Web
Services, is needed to be successful in this position.



*Full Stack Developer:*

experience: 6 to 8 years (candidate's DOB 1990 below)

Visa: No OPTs and CPTs



o    4 positions in Houston, TX -

o    2 Positions in Westerville, OH



*Java 8, Spring boot, Angular 6, Junit*, Jasmine, Karma, *Oracle*, Pivotal
Cloud Foundary, *Jenkins*



Bold ones are mandatory, the non-bold are good to have.



*Full stack developer with PCF*

*Houston, TX*

experience: 6 to 8 years (candidate's DOB 1990 below)

Visa: No OPTs and CPTs





Skills: Java 8, Spring boot, Angular
Pivotal Cloud Foundry (PCF) is mandatory



--=20

*Thanks & Regards,*

*B.Vamsi Krishna*

*US IT Recruiter*

*Contact : (315)989-0824*
*Email : vamsi@genisists.com <adityaj@genisists.com>*



[image: Mailtrack]
<https://mailtrack.io?utm_source=3Dgmail&utm_medium=3Dsignature&utm_campaig=
n=3Dsignaturevirality5&>
Sender
notified by
Mailtrack
<https://mailtrack.io?utm_source=3Dgmail&utm_medium=3Dsignature&utm_campaig=
n=3Dsignaturevirality5&>
07/23/19,
09:24:21 PM

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CALgF8_VFC4xTAoBoaUVjX6%3DVjYy5qkGtLHKa9OE%3DJXoEXJ9TGw%40mail.gm=
ail.com.

--000000000000591007058e5b3f63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;l=
ine-height:12.65pt;font-size:11pt;font-family:Calibri,sans-serif">Hi Networ=
k,</p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;background-image:initial;background-position:initial;background-size:init=
ial;background-repeat:initial;background-origin:initial;background-clip:ini=
tial;font-size:11pt;font-family:Calibri,sans-serif">Hope you are doing grea=
t</p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;background-image:i=
nitial;background-position:initial;background-size:initial;background-repea=
t:initial;background-origin:initial;background-clip:initial;line-height:115=
%;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:1=
4pt;color:black">Please go
through the below requirement and if you have any suitable candidates drop =
me
an Email at=C2=A0<a href=3D"mailto:vamsi@genisists.com" target=3D"_blank">v=
amsi@genisists.com</a><b>=C2=A0(or)</b></span>=C2=A0 (315)989-0824</p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Java Fullstack Developer</span><span style=3D"fo=
nt-size:12pt;color:rgb(80,0,80)"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial">experience: 6 to 8years=C2=A0</span><span style=3D"color:red;ba=
ckground-image:initial;background-position:initial;background-size:initial;=
background-repeat:initial;background-origin:initial;background-clip:initial=
">(candidate&#39;s DOB 1990 below)</span><span style=3D"color:rgb(80,0,80);=
background-image:initial;background-position:initial;background-size:initia=
l;background-repeat:initial;background-origin:initial;background-clip:initi=
al">=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Visa: No OPTs and CPTs</span><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:1=
2pt">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80)">Newark, DE</span><span style=3D"font-size:12pt;color:rgb(80,0,80)"=
></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif">Required Strengths and Cap=
abilities <span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">Very strong experience in Sp=
ring 4.X, Spring MVC,
Hibernate or an equivalent ORM, Web Services =E2=80=93 SOAP / RESTful<span =
style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;text-indent:18pt;l=
ine-height:12.65pt;font-size:11pt;font-family:Calibri,sans-serif">=E2=80=A2=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Very strong experience in enterprise
level J2EE platforms using J2EE design patterns, Spring boot, Spring Securi=
ty,
Microservice<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Minimum of 5-7 plus years of experience<span style=3D"font-siz=
e:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Advanced knowledge of application, data and infrastructure arc=
hitecture
disciplines and=C2=A0<b>clean code</b><span style=3D"font-size:12pt"></span=
></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Hands on experience and working proficiency in developmental t=
ool
sets,=C2=A0<b>CI/CD</b><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Experience in UI development using ReactJS, HTML5, CSS, JavaSc=
ript etc.<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Experience in=C2=A0<b>TDD,</b>=C2=A0<b>automated testing inclu=
ding unit,
integration and acceptance testing</b><span style=3D"font-size:12pt"></span=
></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Experience of working on=C2=A0<b>high data volume processing</=
b>=C2=A0applications
(batch and/or real-time)<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<span style=3D"font-si=
ze:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;font-family:&quot;Times New Roman&quot;,serif;background:yellow">=C2=A0</=
span><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,=
serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"background:ye=
llow">.Net Developer with Java</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"background:ye=
llow">Location: Plano, TX</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"background:ye=
llow">Only contract</span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial">experience: 6 to 8 years=C2=A0</span><span style=3D"color:red;b=
ackground-image:initial;background-position:initial;background-size:initial=
;background-repeat:initial;background-origin:initial;background-clip:initia=
l">(candidate&#39;s DOB 1990 below)</span><span style=3D"color:rgb(80,0,80)=
;background-image:initial;background-position:initial;background-size:initi=
al;background-repeat:initial;background-origin:initial;background-clip:init=
ial">=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Visa: No OPTs and CPTs</span><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;font-family:&quot;Times New Roman&quot;,serif">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">Give one profile and kindly =
stick on to old req (
Plz discuss with in the team and work )</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Must have 8+ years of development experience in enterprise app=
lication
development projects using DotNet technology</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>T-Shaped development experience (75% in .NET and 25% Core Java
development)</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>75%: Must have strong hands on experience in .Net 4.5, .NET MV=
C, ASP
.NET, AJAX, NUNIT</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>25%: Must have hands on experience in Core Java, Web Services,=
 Spring,
Collections</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Experience in SQL/PL-SQL</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Experience in design, analysis, development, coding, unit test=
ing, debug
and documentation for complex systems</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Good to have experience in Cloud computing technology</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Good troubleshooting skills</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Experience in Agile projects</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Experience in Tools like Jira, Bitbucket, Splunk SharePoint, C=
onfluence</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Self-starter, proactive and good communication skills</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;font-family:&quot;Times New Roman&quot;,serif">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125);background:yellow">Java Developer</span><span style=3D"font-size:12=
pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125);background:yellow">Columbus, OH</span><span style=3D"font-size:12pt=
"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125);background:yellow">Contract</span><span style=3D"font-size:12pt"></=
span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80)">experience: 6 to 8 years=C2=A0</span><span style=3D"color:red">(<s=
pan style=3D"background-image:initial;background-position:initial;backgroun=
d-size:initial;background-repeat:initial;background-origin:initial;backgrou=
nd-clip:initial">(candidate&#39;s DOB
1990 below)</span></span><span style=3D"color:rgb(80,0,80);background-image=
:initial;background-position:initial;background-size:initial;background-rep=
eat:initial;background-origin:initial;background-clip:initial">=C2=A0</span=
><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Visa: No OPTs and CPTs</span><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125)">=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125)">Candidate must have experience
working in Agile environment</span><span style=3D"font-size:12pt"></span></=
p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125)">=E2=80=A2 Advanced skills in Java, Spring
Core, Spring Boot, Spring Security, Maven, REST, SQL</span><span style=3D"f=
ont-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125)">=E2=80=A2 Basic skills in Git, Tomcat, Unix,
Spring Cloud, TDD</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125)">=E2=80=A2 Good to have knowledge on
WebSphere, Jenkins, Intellij</span><span style=3D"font-size:12pt"></span></=
p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125)">=E2=80=A2 + points for experience with Web
design, content management or Marklogic</span><span style=3D"font-size:12pt=
"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,=
73,125)">=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"background:ye=
llow">Java Lead/Associate Architect</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"background:ye=
llow">Chicago, IL</span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80)">experience: 6 to 8 years=C2=A0</span><span style=3D"color:red;back=
ground-image:initial;background-position:initial;background-size:initial;ba=
ckground-repeat:initial;background-origin:initial;background-clip:initial">=
(candidate&#39;s DOB 1990 below)</span><span style=3D"color:rgb(80,0,80);ba=
ckground-image:initial;background-position:initial;background-size:initial;=
background-repeat:initial;background-origin:initial;background-clip:initial=
">=C2=A0</span><span style=3D"color:red">)</span><span style=3D"color:rgb(8=
0,0,80)">=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Visa: No OPTs and CPTs</span><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif">1.<span style=3D"font-s=
ize:7pt;font-family:&quot;Times New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0</span>Good reputed companies background as Tech Le=
ad or Associate Architects</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif">2.<span style=3D"font-s=
ize:7pt;font-family:&quot;Times New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0</span>Good Designing and Development background</p=
>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif">3.<span style=3D"font-s=
ize:7pt;font-family:&quot;Times New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0</span>Java 1.8, Multithreading, Concurrency, Lamba=
 expressions</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif">4.<span style=3D"font-s=
ize:7pt;font-family:&quot;Times New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0</span>Strong in OOPS, Data Structures, Algorithms<=
/p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif">5.<span style=3D"font-s=
ize:7pt;font-family:&quot;Times New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0</span>Spring 3.5/4.x, Spring boot, microservices, =
Spring batch/Security</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif">6.<span style=3D"font-s=
ize:7pt;font-family:&quot;Times New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0</span>Nice to have Bigdata exposure and Kafka</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<span style=3D"font-si=
ze:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b>Key Skills:</b><span styl=
e=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 2pt 36pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;color:black">=E2=80=A2</span><span style=3D"font-size:7pt;font-family:&qu=
ot;Times New Roman&quot;,serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span>Solid object oriented design, coding, testing, and=
 debugging skills<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 2pt 36pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;color:black">=E2=80=A2</span><span style=3D"font-size:7pt;font-family:&qu=
ot;Times New Roman&quot;,serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span>Strong experience with Java J2EE development (java=
S)<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 2pt 36pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;color:black">=E2=80=A2</span><span style=3D"font-size:7pt;font-family:&qu=
ot;Times New Roman&quot;,serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span>Hands on experience in application development usi=
ng Spring framework<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 2pt 36pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;color:black">=E2=80=A2</span><span style=3D"font-size:7pt;font-family:&qu=
ot;Times New Roman&quot;,serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span>Hands on experience with Spring Boot<span style=3D=
"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 2pt 36pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;color:black">=E2=80=A2</span><span style=3D"font-size:7pt;font-family:&qu=
ot;Times New Roman&quot;,serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span>Knowledge on Spring based webservices (REST SOAP)<=
span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 2pt 36pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;color:black">=E2=80=A2</span><span style=3D"font-size:7pt;font-family:&qu=
ot;Times New Roman&quot;,serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span>Good understanding of JavaScript frameworks like A=
ngular React<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 2pt 36pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;color:black">=E2=80=A2</span><span style=3D"font-size:7pt;font-family:&qu=
ot;Times New Roman&quot;,serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span>Hands on experience in sql pl sql<span style=3D"fo=
nt-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 2pt 36pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;color:black">=E2=80=A2</span><span style=3D"font-size:7pt;font-family:&qu=
ot;Times New Roman&quot;,serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span>Hands on experience working on any JPA implementat=
ion (Spring Data JPA)<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 2pt 36pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t;color:black">=E2=80=A2</span><span style=3D"font-size:7pt;font-family:&qu=
ot;Times New Roman&quot;,serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span>experience working with Maven<span style=3D"font-s=
ize:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<span style=3D"font-si=
ze:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"color:blac=
k;background:yellow">Mongo DB Sr.
Developer</span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"color:blac=
k;background:yellow">Location: Columbia,
MD.</span></b></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80)">experience: 6 to 8=C2=A0years=C2=A0</span><span style=3D"color:red=
;background-image:initial;background-position:initial;background-size:initi=
al;background-repeat:initial;background-origin:initial;background-clip:init=
ial">(candidate&#39;s DOB 1990 below)</span><span style=3D"color:rgb(80,0,8=
0);background-image:initial;background-position:initial;background-size:ini=
tial;background-repeat:initial;background-origin:initial;background-clip:in=
itial">=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Visa: No OPTs and CPTs</span><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:black">=
=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:black">=
=E2=80=A2 Spring Data Flow developer<br>
=E2=80=A2 8+ years of experience in working as data pipeline developer=C2=
=A0<br>
=E2=80=A2 Experience in analyzing data along with data modeling<br>
=E2=80=A2 Experience with creating script for data modeling and data import=
/export<br>
=E2=80=A2 Define Schema, setting up and populating data from various data s=
ources<br>
=E2=80=A2 Experience in creating Profile hubs, decision models, etc<br>
=E2=80=A2 Experience in design and developing application leveraging Mongo =
DB<br>
=E2=80=A2 Nice to have: experience working with SAS - of using Base SAS, SA=
S/Macros,
SAS/SQL, SAS/STAT=E2=80=99<br>
=E2=80=A2 Desired experience<br>
o Worked in decision processes</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<span style=3D"font-si=
ze:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"background:ye=
llow">Java Developer (Java 1.8,
Microservices, Spring 4.x, Angular)</span><span style=3D"font-size:12pt"></=
span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"background:ye=
llow">Tampa, FL, Austin TX</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"background:ye=
llow">Contract</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80)">experience: 6 to 8=C2=A0years=C2=A0</span><span style=3D"color:red=
;background-image:initial;background-position:initial;background-size:initi=
al;background-repeat:initial;background-origin:initial;background-clip:init=
ial">(candidate&#39;s DOB 1990 below)</span><span style=3D"color:rgb(80,0,8=
0);background-image:initial;background-position:initial;background-size:ini=
tial;background-repeat:initial;background-origin:initial;background-clip:in=
itial">=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Visa: No OPTs and CPTs</span><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow"><br>
<br>
</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial">Job description:</span><span style=3D"font-size:12pt"></span></=
p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial"><br>
<br>
</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">Candidate must have experien=
ce working in Agile
environment</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=E2=80=A2 Advanced skills in=
 Java, Spring Core, Spring
Boot, Microservices, Maven, REST, SQL</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=E2=80=A2 Basic skills in Gi=
t, Tomcat, Unix, Spring Cloud,
TDD</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=E2=80=A2 Good to have knowl=
edge on WebSphere, Jenkins,
Intellij</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=E2=80=A2 + points for exper=
ience with Web design, content
management or Marklogic</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<span style=3D"font-si=
ze:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<b><span style=3D"colo=
r:black;background:yellow">Job
Title : UI Frontend Developer=C2=A0 =C2=A0 =C2=A0</span></b><span style=3D"=
font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"color:blac=
k;background:yellow">Location :=C2=A0</span></b><b><span style=3D"backgroun=
d:yellow">Columbus , OH, NYC NY</span></b><span style=3D"color:black">=C2=
=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80)">experience: 6 to 8years=C2=A0</span><span style=3D"color:red;backg=
round-image:initial;background-position:initial;background-size:initial;bac=
kground-repeat:initial;background-origin:initial;background-clip:initial">(=
candidate&#39;s DOB 1990 below)</span><span style=3D"color:rgb(80,0,80);bac=
kground-image:initial;background-position:initial;background-size:initial;b=
ackground-repeat:initial;background-origin:initial;background-clip:initial"=
>=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Visa: No OPTs and CPTs</span><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow"><br>
<br>
</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial">Job Description</span><span style=3D"font-size:12pt"></span></p=
>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow"><br>
<br>
</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>React JS, JavaScript, JQuery, HTML, HTML5, CSS, CSS3, Web Prog=
ramming
Skills, =C2=A0Teamwork, Verbal Communication, cross-browser compatibility, =
Web
User Interface Design (UI), Security Principles, Object-Oriented Design, We=
b
Services, Multimedia Content Development, API&#39;s.=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Regular exposure to business stakeholders and executive manage=
ment, as
well as the authority and scope to apply your expertise to many interesting
technical problems.</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Candidate must have a strong understanding of UI, cross-browse=
r
compatibility, general web functions and standards.</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>The position requires constant communication with colleagues.<=
/p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Experience in planning and delivering software platforms used =
across
multiple products and organizational units.</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Deep expertise and hands on experience with Web Applications a=
nd
programming languages such as HTML, CSS, JavaScript, jQuery and API&#39;s.<=
/p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 36pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Symbol">=C2=B7</span><span style=3D"font-size:7pt;font-family:&quot;Tim=
es New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span>Deep functional knowledge or hands on design experience with W=
eb
Services, is needed to be successful in this position.</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><u><span style=3D"backgro=
und:yellow">Full Stack Developer:</span></u></b><span style=3D"font-size:12=
pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80)">experience: 6 to 8=C2=A0years=C2=A0</span><span style=3D"color:red=
;background-image:initial;background-position:initial;background-size:initi=
al;background-repeat:initial;background-origin:initial;background-clip:init=
ial">(candidate&#39;s DOB 1990 below)</span><span style=3D"color:rgb(80,0,8=
0);background-image:initial;background-position:initial;background-size:ini=
tial;background-repeat:initial;background-origin:initial;background-clip:in=
itial">=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Visa: No OPTs and CPTs</span><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><u>=C2=A0</u></b><span st=
yle=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 72pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-siz=
e:10pt;font-family:&quot;Courier New&quot;">o</span><span style=3D"font-siz=
e:7pt;font-family:&quot;Times New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=
=A0</span>4 positions in
Houston, TX -<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt 72pt;line-height:no=
rmal;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-siz=
e:10pt;font-family:&quot;Courier New&quot;">o</span><span style=3D"font-siz=
e:7pt;font-family:&quot;Times New Roman&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=
=A0</span>2 Positions in
Westerville, OH=C2=A0 =C2=A0 =C2=A0<span style=3D"font-size:12pt"></span></=
p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<span style=3D"font-si=
ze:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"color:blac=
k">Java 8, Spring boot, Angular 6, Junit</span></b><span style=3D"color:bla=
ck">, Jasmine, Karma,=C2=A0<b>Oracle</b>, Pivotal Cloud
Foundary,=C2=A0<b>Jenkins</b></span><span style=3D"font-size:12pt"></span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<span style=3D"font-si=
ze:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">Bold ones are mandatory, the=
 non-bold are good to
have.=C2=A0<span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<span style=3D"font-si=
ze:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><u><span style=3D"backgro=
und:yellow">Full stack developer with PCF</span></u></b><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"background=
:yellow">Houston, TX</span></b><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80)">experience: 6 to 8=C2=A0years=C2=A0</span><span style=3D"color:red=
;background-image:initial;background-position:initial;background-size:initi=
al;background-repeat:initial;background-origin:initial;background-clip:init=
ial">(candidate&#39;s DOB 1990 below)</span><span style=3D"color:rgb(80,0,8=
0);background-image:initial;background-position:initial;background-size:ini=
tial;background-repeat:initial;background-origin:initial;background-clip:in=
itial">=C2=A0</span><span style=3D"font-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:10pt 0cm 0.0001pt;line-height:12.65p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(8=
0,0,80);background:yellow">Visa: No OPTs and CPTs</span><span style=3D"font=
-size:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12p=
t">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<span style=3D"font-si=
ze:12pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">Skills: Java 8, Spring boot,=
 Angular=C2=A0<br>
Pivotal Cloud Foundry (PCF) is mandatory<span style=3D"font-size:12pt"></sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 10pt;line-height:115%;font-s=
ize:11pt;font-family:Calibri,sans-serif">=C2=A0</p><div><br></div>-- <br><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><p style=3D"font-family:arial,helve=
tica,sans-serif"><b><i><span style=3D"line-height:14.95px">Thanks &amp; Reg=
ards,</span></i></b><span style=3D"line-height:14.95px"></span></p><p style=
=3D"font-family:arial,helvetica,sans-serif"><b><i>B.Vamsi Krishna</i></b></=
p><p style=3D"font-family:arial,helvetica,sans-serif"><b><i>US IT Recruiter=
</i></b></p><p><b style=3D"font-family:arial,helvetica,sans-serif"><i><span=
 style=3D"line-height:14.95px"><span style=3D"line-height:14.95px">Contact =
: (315)989-0824</span></span></i></b></p><div style=3D"margin:0px;padding:0=
px 0px 20px;width:958px;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans=
-serif;font-size:medium"><div style=3D"font-size:12.8px"><table cellpadding=
=3D"0"></table></div><div><div></div><div></div><div></div></div><div><div>=
</div><div></div><div style=3D"font-size:12.8px;margin:8px 0px 0px;padding:=
0px"><div><div dir=3D"ltr"><img width=3D"0" height=3D"0" alt=3D"" src=3D"da=
ta:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA=
7" style=3D"display:flex"><b style=3D"font-family:arial,helvetica,sans-seri=
f"><i><span style=3D"line-height:14.95px"><span style=3D"line-height:14.95p=
x">Email :=C2=A0<a href=3D"mailto:adityaj@genisists.com" target=3D"_blank">=
vamsi@genisists.com</a></span></span></i></b></div><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div><br><br></div></div></div></div><=
/div></div></div></div></div><div></div></div></div><div></div></div></div>=
<div style=3D"font-family:arial,helvetica,sans-serif"><a style=3D"color:rgb=
(17,85,204)"><img src=3D"https://docs.google.com/uc?export=3Ddownload&amp;i=
d=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV0lwa2FF=
S2syRWxCbGdlYUxaUFpjL0N3PQ" width=3D"200" height=3D"58"></a></div></div></d=
iv></div></div><br><div class=3D"mt-signature">
        <table border=3D"0" cellpadding=3D"8" cellspacing=3D"0" style=3D"us=
er-select: none;">
            <tbody><tr>
                <td>
                    <a href=3D"https://mailtrack.io?utm_source=3Dgmail&amp;=
utm_medium=3Dsignature&amp;utm_campaign=3Dsignaturevirality5&amp;" class=3D=
"" style=3D"text-decoration:none">
                        <img src=3D"https://s3.amazonaws.com/mailtrack-sign=
ature/sender_notified.gif" alt=3D"Mailtrack" class=3D"" width=3D"32" height=
=3D"32">
                    </a>
                </td>
                <td>
                    <span style=3D"color:#777">Sender notified by</span> <b=
r>
                    <a href=3D"https://mailtrack.io?utm_source=3Dgmail&amp;=
utm_medium=3Dsignature&amp;utm_campaign=3Dsignaturevirality5&amp;" class=3D=
"mt-install" style=3D"color:#4374f7">Mailtrack</a>
                    <span style=3D"color:transparent;font-size:0">07/23/19,=
 09:24:21 PM</span>
                </td>
                <td>
                   =20
                </td>
            </tr>
        </tbody></table>
    </div><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=3D"" st=
yle=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/387ca7c596ba9ea=
534a346b49e257a51425337f6.png?u=3D4540260"></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CALgF8_VFC4xTAoBoaUVjX6%3DVjYy5qkGtLHKa9OE%3DJXoEXJ9TG=
w%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CALgF8_VFC4xTAoBoaUVjX6%3DVjYy5qkGtLHKa9OE%3DJX=
oEXJ9TGw%40mail.gmail.com</a>.<br />

--000000000000591007058e5b3f63--
