Return-Path: <linux-ntb+bncBCELXQMOTUFBB4HRTLTQKGQE3BWI3MI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDC7280BE
	for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 17:14:57 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id d6sf5433444ybj.16
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 08:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rW71U8nj8HlFJLkXaEucKkWxqs7Gsx1MS7QKEpDi0mM=;
        b=PS4Ot6QpJVtc0HXs6AbKxNLBioTD9dXN6WhwhaS6EmCHcS5fnBHibksagOznoKlBuW
         7JeGhkfOqjr/5YrGxJF+kWD/B6quoEJotO03NXamMXxyF3Lc9Y7hbZtV3svGP5EKiGtT
         8cQbUUQGSk4UFQt9AP478z1ORJ75FhpmYMK82eJuUJ7PocE9wi9PRm03TzfDBpsKAs5o
         PRDAPYSJnPQ6lVJf4cUlM8ogEuhCkbYK/BYu1dPWhcHrp8kJ4clUid9FEJcYNHISX8zO
         PKGck7bpsxQ/VW20PVHBLOq7BGwTOKRjJ1wMhjLfyn7IC1x+iAsxxX+5Dceav0+HNHIn
         yLQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rW71U8nj8HlFJLkXaEucKkWxqs7Gsx1MS7QKEpDi0mM=;
        b=avEbIbfDZS/kb0uyAdd6FAXKo45v0zh3LPKQLIceT7xPAzPmO7MwDGPC4YvHJrDGoa
         R7+MglbiPdTHXt9beNb29xbLFUkOomfnghWdrQBMWqYqQpKrSascrkw9Imm/hNl8v6gr
         h5w7r5JE8hcKfIjbXs7bgcjyYrLRDGxuYas+4bgn3C3wFYECyIS2CipK0SGE/LfGJ3e/
         NZYc9N+R8uFCLtOuDnzB6ekEHTxXilDV+GZKf/D0C72yuVqA+2GrKVkvfVI9A1NLBwig
         aNrhHqO0BbEaJgwdIlxpcFx10rQyPXltz2AbTlKJcVQnWA1w69E0GzRRKAbRlnjtxvCu
         H6tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rW71U8nj8HlFJLkXaEucKkWxqs7Gsx1MS7QKEpDi0mM=;
        b=jOysb/VEB0ugmWDRz/HHCpYgXwrEUwSr+7h8Hslr4bg5k//cA4EqQkjgMe/jurC7kd
         H5BkKQfJXo0hy96X3lRHHo8K8BF3kgWzzBguxg6CFuBs/iiwvNRc8tligCDygA2E4e8W
         EaBqFVkYr1pvbeozvtT/07uVif/6kMAI/HUYrHtJL0n83m7/KAR5jSHezDp7F2wniS9l
         HhIDMuC37E9alpX8IH3vNF/F5ntYxdvqFMH7Un7o/8hzyWlBsfQaX1XiZYbfjNgB+Tm1
         iMw5E6HQykuTCuiSzJ4IJfHGGZAUqrUGD76fCLd284TmJVrQrGn2QbMDQSYnTgIh4Zsr
         bMMQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXbZftCBvO+TEY4XkQ5luiTM7uHg9gegb6y9tKZihtf+AgvNaEO
	ArVcQaeTh79e4k3o4LrcjB4=
X-Google-Smtp-Source: APXvYqz/Drg46gse8ljABO3HPUzVL2ZaJO0JJpieXbjUwBmcFiipkUJILbsQjmuSzkwwfacAbxlJwA==
X-Received: by 2002:a81:3589:: with SMTP id c131mr43709945ywa.456.1558624496804;
        Thu, 23 May 2019 08:14:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:330e:: with SMTP id z14ls852825ywz.11.gmail; Thu, 23 May
 2019 08:14:56 -0700 (PDT)
X-Received: by 2002:a0d:e80d:: with SMTP id r13mr24764589ywe.90.1558624496446;
        Thu, 23 May 2019 08:14:56 -0700 (PDT)
Date: Thu, 23 May 2019 08:14:55 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <51bbcdb6-4921-4c7d-b945-87148afd904b@googlegroups.com>
Subject: Principle AB Initio Developer//Durham, NC//6 month contract-to-hire
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_522_1662935058.1558624495871"
X-Original-Sender: prasanth@genisists.com
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

------=_Part_522_1662935058.1558624495871
Content-Type: multipart/alternative; 
	boundary="----=_Part_523_345044117.1558624495872"

------=_Part_523_345044117.1558624495872
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

*US Citizen and Green Cards only =E2=80=93 no sponsorship*

*Position: *Principle AB Initio Developer
*Location: *Durham, NC
*Term: *6 month contract-to-hire


*Responsibilities: *

*Looking for a strong technical developer, with hands on experience=20
primarily in: AWS, S3, Hadoop, and related tools used in the Big Data=20
space, and also important is actual **AB INITIO** developer and/or=20
administration experience.*

These technical skills will help ensure that all the technologies running=
=20
in production are appropriately and most efficiently implemented.

   - Act as a technical expert/resource for the team and business partners=
=20
   while leading the analysis, design and development of high volume, low=
=20
   latency applications for mission critical systems delivering=20
   high-availability and performance to best meet customer needs.
   - Independently write well designed, testable, efficient code to support=
=20
   varied and highly complex IT solutions
   - Provide technical leadership to other IT specialists to rapidly=20
   develop and deliver stunning solutions that meet changing business needs=
.
   - Perform all necessary discovery and fact finding to fully understand=
=20
   highly complex business problems and opportunities and independently=20
   execute all assignments.
   - Evaluate options to provide solution buy vs. build recommendations to=
=20
   management.
   - Independently analyze and recommend solutions to development and=20
   production issues while effectively communicating to the project team,=
=20
   applicable vendors and/or the manager in a timely manner.
   - Research and stay abreast of technology trends and IT best practices,=
=20
   with a focus on continuous learning and possible application to the=20
   business.
   - Regularly act in a project lead capacity and/or represent the=20
   department on enterprise-wise project teams.
   - Provide direction and assistance to less experienced team members and=
=20
   may oversee or coordinate work efforts as needed.
   - Assist management with employee development initiatives, including=20
   training.

*Is this a fit? (Requirements): *

   - Bachelors degree in computer science, mathematics, or other relevant=
=20
   technical field OR Associates degree specifically in computer science.=
=20
   Candidates with non-technical degrees may be considered with the complet=
ion=20
   of a relevant technical certification program.
   - 7 years development experience.
   - With no degree, 10 years of experience required.
   - Significant experience and technical expertise with at least one=20
   development language/technology (**strongly prefer: JAVA, PEGA, Ab Initi=
o,=20
   Hadoop, S3**).
   - Proven experience managing projects and collaborating effectively with=
=20
   vendors and business partners for solution delivery.
   - Demonstrated leadership skills required

*Preferred Skills/Experience: *

   - Experience with software development tools (i.e. Attunity, Open=20
   Source, Mulesoft, Ab Initio).
   - Experience with testing methodologies with the stated major=20
   development language(s)/technology.
   - Experience with a major relational database management system=20
   preferred. Experience with NoSQL databases is also a plus.
   - Experience with Linux operating system is a plus. RHEL preferred.
   - Knowledge of messaging engines is helpful.
   - Cloud experience preferred.
   - Strong leadership, coaching and mentoring skills.
   - Excellent relationship management and collaboration skills to=20
   facilitate effective working relationships with varied stakeholders and=
=20
   team members, including vendors.
   - Ability to manage high profile and/or more complex projects and ensure=
=20
   work is completed on time with high quality
   - Excellent problem solving skills, with a focus on understanding=20
   overall business issues and determining innovative solutions
   - Strong verbal and written communication skills, including solid=20
   presentation skills.
   - Must be self-directed, highly organized and adaptable with the ability=
=20
   to effectively multi-task as needed
   - Demonstrates strong familiarity with current and emerging technologies=
=20
   and investigates and suggests new technology to meet business needs.


--=20

* Forward Your Resume To Below Mentioned Email Address. *

 =20

=20

=20

--=20

*Thanks & Regards,*

*Prashanth*

*US IT  RECRUITER*

*Contact : +1 (315)947-0775*

*Email : prasanth@genisists.com <prasanth@genisists.com>*

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/51bbcdb6-4921-4c7d-b945-87148afd904b%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_523_345044117.1558624495872
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font size=3D"2">Hi All,</font><div style=3D"font-siz=
e: small;"><br></div><div style=3D"text-align: center;"><b style=3D"text-al=
ign: start;"><u><span style=3D"color: red;"><font size=3D"4">US Citizen and=
 Green Cards only =E2=80=93 no sponsorship</font></span></u></b><br></div><=
div style=3D"font-size: small;"><br></div><div style=3D"font-size: small;">=
<p class=3D"MsoNormal" style=3D"margin-top: 1em; margin-bottom: 1em; line-h=
eight: normal; background-image: initial; background-position: initial; bac=
kground-repeat: initial;"><span style=3D"font-size: 10pt; font-family: Verd=
ana, sans-serif;"><b>Position:=C2=A0</b>Principle AB Initio Developer<br><b=
>Location:=C2=A0</b>Durham, NC<br><b>Term:=C2=A0</b>6 month contract-to-hir=
e</span></p><p class=3D"MsoNormal" style=3D"margin-top: 1em; margin-bottom:=
 1em; line-height: normal;"><br></p><p class=3D"MsoNormal" style=3D"margin-=
top: 1em; margin-bottom: 1em; line-height: normal; background-image: initia=
l; background-position: initial; background-repeat: initial;"><b><span styl=
e=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Responsibilities:=
=C2=A0</span></b><span style=3D"font-size: 10pt; font-family: &quot;Open Sa=
ns&quot;;"><u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"margin-=
top: 1em; margin-bottom: 1em; line-height: normal; background-image: initia=
l; background-position: initial; background-repeat: initial;"><b><span styl=
e=3D"font-size: 10pt; font-family: Verdana, sans-serif; background: yellow;=
">Looking for a strong technical developer, with hands on experience primar=
ily in: AWS, S3, Hadoop, and related tools used in the Big Data space, and =
also important is actual **AB INITIO** developer and/or administration expe=
rience.</span></b><b><span style=3D"font-size: 10pt; font-family: &quot;Ope=
n Sans&quot;;"><u></u><u></u></span></b></p><p class=3D"MsoNormal" style=3D=
"margin-top: 1em; margin-bottom: 1em; line-height: normal; background-image=
: initial; background-position: initial; background-repeat: initial;"><span=
 style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">These technic=
al skills will help ensure that all the technologies running in production =
are appropriately and most efficiently implemented.</span><span style=3D"fo=
nt-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></=
p><ul type=3D"disc"><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15=
px; background-image: initial; background-position: initial; background-rep=
eat: initial;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-s=
erif;">Act as a technical expert/resource for the team and business partner=
s while leading the analysis, design and development of high volume, low la=
tency applications for mission critical systems delivering high-availabilit=
y and performance to best meet customer needs.</span><span style=3D"font-si=
ze: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><l=
i class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px; background-image: =
initial; background-position: initial; background-repeat: initial;"><span s=
tyle=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Independently w=
rite well designed, testable, efficient code to support varied and highly c=
omplex IT solutions</span><span style=3D"font-size: 10pt; font-family: &quo=
t;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=
=3D"margin: 0px 0px 0px 15px; background-image: initial; background-positio=
n: initial; background-repeat: initial;"><span style=3D"font-size: 10pt; fo=
nt-family: Verdana, sans-serif;">Provide technical leadership to other IT s=
pecialists to rapidly develop and deliver stunning solutions that meet chan=
ging business needs.</span><span style=3D"font-size: 10pt; font-family: &qu=
ot;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" styl=
e=3D"margin: 0px 0px 0px 15px; background-image: initial; background-positi=
on: initial; background-repeat: initial;"><span style=3D"font-size: 10pt; f=
ont-family: Verdana, sans-serif;">Perform all necessary discovery and fact =
finding to fully understand highly complex business problems and opportunit=
ies and independently execute all assignments.</span><span style=3D"font-si=
ze: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><l=
i class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px; background-image: =
initial; background-position: initial; background-repeat: initial;"><span s=
tyle=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Evaluate option=
s to provide solution buy vs. build recommendations to management.</span><s=
pan style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><=
u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px=
; background-image: initial; background-position: initial; background-repea=
t: initial;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-ser=
if;">Independently analyze and recommend solutions to development and produ=
ction issues while effectively communicating to the project team, applicabl=
e vendors and/or the manager in a timely manner.</span><span style=3D"font-=
size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li>=
<li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px; background-image=
: initial; background-position: initial; background-repeat: initial;"><span=
 style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Research and =
stay abreast of technology trends and IT best practices, with a focus on co=
ntinuous learning and possible application to the business.</span><span sty=
le=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u><=
/span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px; backg=
round-image: initial; background-position: initial; background-repeat: init=
ial;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Re=
gularly act in a project lead capacity and/or represent the department on e=
nterprise-wise project teams.</span><span style=3D"font-size: 10pt; font-fa=
mily: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNor=
mal" style=3D"margin: 0px 0px 0px 15px; background-image: initial; backgrou=
nd-position: initial; background-repeat: initial;"><span style=3D"font-size=
: 10pt; font-family: Verdana, sans-serif;">Provide direction and assistance=
 to less experienced team members and may oversee or coordinate work effort=
s as needed.</span><span style=3D"font-size: 10pt; font-family: &quot;Open =
Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"mar=
gin: 0px 0px 0px 15px; background-image: initial; background-position: init=
ial; background-repeat: initial;"><span style=3D"font-size: 10pt; font-fami=
ly: Verdana, sans-serif;">Assist management with employee development initi=
atives, including training.</span><span style=3D"font-size: 10pt; font-fami=
ly: &quot;Open Sans&quot;;"><u></u><u></u></span></li></ul><p class=3D"MsoN=
ormal" style=3D"margin-top: 1em; margin-bottom: 1em; line-height: normal; b=
ackground-image: initial; background-position: initial; background-repeat: =
initial;"><b><span style=3D"font-size: 10pt; font-family: Verdana, sans-ser=
if;">Is this a fit? (Requirements):=C2=A0</span></b><span style=3D"font-siz=
e: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></p><ul =
type=3D"disc"><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px; ba=
ckground-image: initial; background-position: initial; background-repeat: i=
nitial;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;"=
>Bachelors degree in computer science, mathematics, or other relevant techn=
ical field OR Associates degree specifically in computer science. Candidate=
s with non-technical degrees may be considered with the completion of a rel=
evant technical certification program.</span><span style=3D"font-size: 10pt=
; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li class=
=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px; background-image: initial=
; background-position: initial; background-repeat: initial;"><span style=3D=
"font-size: 10pt; font-family: Verdana, sans-serif;">7 years development ex=
perience.</span><span style=3D"font-size: 10pt; font-family: &quot;Open San=
s&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin=
: 0px 0px 0px 15px; background-image: initial; background-position: initial=
; background-repeat: initial;"><span style=3D"font-size: 10pt; font-family:=
 Verdana, sans-serif;">With no degree, 10 years of experience required.</sp=
an><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u>=
</u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px=
 15px; background-image: initial; background-position: initial; background-=
repeat: initial;"><span style=3D"font-size: 10pt; font-family: Verdana, san=
s-serif;">Significant experience and technical expertise with at least one =
development language/technology (**strongly prefer: JAVA, PEGA, Ab Initio, =
Hadoop, S3**).</span><span style=3D"font-size: 10pt; font-family: &quot;Ope=
n Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"m=
argin: 0px 0px 0px 15px; background-image: initial; background-position: in=
itial; background-repeat: initial;"><span style=3D"font-size: 10pt; font-fa=
mily: Verdana, sans-serif;">Proven experience managing projects and collabo=
rating effectively with vendors and business partners for solution delivery=
.</span><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;=
"><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0p=
x 0px 15px; background-image: initial; background-position: initial; backgr=
ound-repeat: initial;"><span style=3D"font-size: 10pt; font-family: Verdana=
, sans-serif;">Demonstrated leadership skills required</span><span style=3D=
"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span=
></li></ul><p class=3D"MsoNormal" style=3D"margin-top: 1em; margin-bottom: =
1em; line-height: normal; background-image: initial; background-position: i=
nitial; background-repeat: initial;"><b><span style=3D"font-size: 10pt; fon=
t-family: Verdana, sans-serif;">Preferred Skills/Experience:=C2=A0</span></=
b><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u><=
/u><u></u></span></p><ul type=3D"disc"><li class=3D"MsoNormal" style=3D"mar=
gin: 0px 0px 0px 15px; background-image: initial; background-position: init=
ial; background-repeat: initial;"><span style=3D"font-size: 10pt; font-fami=
ly: Verdana, sans-serif;">Experience with software development tools (i.e. =
Attunity, Open Source, Mulesoft, Ab Initio).</span><span style=3D"font-size=
: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li =
class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px; background-image: in=
itial; background-position: initial; background-repeat: initial;"><span sty=
le=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Experience with t=
esting methodologies with the stated major development language(s)/technolo=
gy.</span><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot=
;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px =
0px 0px 15px; background-image: initial; background-position: initial; back=
ground-repeat: initial;"><span style=3D"font-size: 10pt; font-family: Verda=
na, sans-serif;">Experience with a major relational database management sys=
tem preferred. Experience with NoSQL databases is also a plus.</span><span =
style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></=
u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px; ba=
ckground-image: initial; background-position: initial; background-repeat: i=
nitial;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;"=
>Experience with Linux operating system is a plus. RHEL preferred.</span><s=
pan style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><=
u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px=
; background-image: initial; background-position: initial; background-repea=
t: initial;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-ser=
if;">Knowledge of messaging engines is helpful.</span><span style=3D"font-s=
ize: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><=
li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px; background-image:=
 initial; background-position: initial; background-repeat: initial;"><span =
style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Cloud experien=
ce preferred.</span><span style=3D"font-size: 10pt; font-family: &quot;Open=
 Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"ma=
rgin: 0px 0px 0px 15px; background-image: initial; background-position: ini=
tial; background-repeat: initial;"><span style=3D"font-size: 10pt; font-fam=
ily: Verdana, sans-serif;">Strong leadership, coaching and mentoring skills=
.</span><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;=
"><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0p=
x 0px 15px; background-image: initial; background-position: initial; backgr=
ound-repeat: initial;"><span style=3D"font-size: 10pt; font-family: Verdana=
, sans-serif;">Excellent relationship management and collaboration skills t=
o facilitate effective working relationships with varied stakeholders and t=
eam members, including vendors.</span><span style=3D"font-size: 10pt; font-=
family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoN=
ormal" style=3D"margin: 0px 0px 0px 15px; background-image: initial; backgr=
ound-position: initial; background-repeat: initial;"><span style=3D"font-si=
ze: 10pt; font-family: Verdana, sans-serif;">Ability to manage high profile=
 and/or more complex projects and ensure work is completed on time with hig=
h quality</span><span style=3D"font-size: 10pt; font-family: &quot;Open San=
s&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin=
: 0px 0px 0px 15px; background-image: initial; background-position: initial=
; background-repeat: initial;"><span style=3D"font-size: 10pt; font-family:=
 Verdana, sans-serif;">Excellent problem solving skills, with a focus on un=
derstanding overall business issues and determining innovative solutions</s=
pan><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u=
></u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0p=
x 15px; background-image: initial; background-position: initial; background=
-repeat: initial;"><span style=3D"font-size: 10pt; font-family: Verdana, sa=
ns-serif;">Strong verbal and written communication skills, including solid =
presentation skills.</span><span style=3D"font-size: 10pt; font-family: &qu=
ot;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" styl=
e=3D"margin: 0px 0px 0px 15px; background-image: initial; background-positi=
on: initial; background-repeat: initial;"><span style=3D"font-size: 10pt; f=
ont-family: Verdana, sans-serif;">Must be self-directed, highly organized a=
nd adaptable with the ability to effectively multi-task as needed</span><sp=
an style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u=
></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px;=
 background-image: initial; background-position: initial; background-repeat=
: initial;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-seri=
f;">Demonstrates strong familiarity with current and emerging technologies =
and investigates and suggests new technology to meet business needs.</span>=
</li></ul><br></div></div><span style=3D"font-size: small;">--=C2=A0</span>=
<br><div><span style=3D"font-size: small;"><br></span></div><div><div style=
=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin: 1em 0in; lin=
e-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;=
, serif;"><b><u><span style=3D"color: rgb(76, 17, 48);">=C2=A0Forward Your =
Resume To Below Mentioned Email Address.=C2=A0</span></u></b><u></u><u></u>=
</p><div><p class=3D"MsoNormal" style=3D"margin: 1em 0in; line-height: norm=
al; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><=
i><span style=3D"color: rgb(204, 0, 0);">=C2=A0=C2=A0</span></i></b><u></u>=
<u></u></p></div><div><p class=3D"MsoNormal" style=3D"margin: 1em 0in; line=
-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;,=
 serif;"><u></u>=C2=A0<u></u></p></div><p class=3D"MsoNormal" style=3D"marg=
in: 1em 0in; line-height: normal; font-size: 12pt; font-family: &quot;Times=
 New Roman&quot;, serif;"><u></u>=C2=A0<u></u></p></div><p class=3D"MsoNorm=
al" style=3D"margin: 1em 0in; line-height: normal; font-size: 12pt; font-fa=
mily: &quot;Times New Roman&quot;, serif;">--=C2=A0<u></u><u></u></p><div s=
tyle=3D"font-size: small;"><p style=3D"margin: 1em 0in; line-height: normal=
; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><i>=
<span style=3D"font-family: Arial, sans-serif;">Thanks &amp; Regards,</span=
></i></b></p><p style=3D"margin: 1em 0in; line-height: normal; font-size: 1=
2pt; font-family: &quot;Times New Roman&quot;, serif;"><b><i><span style=3D=
"font-family: Arial, sans-serif;">Prashanth</span></i></b></p><p style=3D"m=
argin: 1em 0in; line-height: normal; font-size: 12pt; font-family: &quot;Ti=
mes New Roman&quot;, serif;"><b><i><span style=3D"font-family: Arial, sans-=
serif;">US IT=C2=A0 RECRUITER</span></i></b></p><p style=3D"margin: 1em 0in=
; line-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&=
quot;, serif;"><b><i><span style=3D"font-family: Arial, sans-serif;">Contac=
t : +1 (315)947-0775</span></i></b></p><p style=3D"margin: 1em 0in; line-he=
ight: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, se=
rif;"><b><i><span style=3D"font-family: Arial, sans-serif;">Email :=C2=A0<a=
 href=3D"mailto:prasanth@genisists.com" target=3D"_blank" rel=3D"nofollow" =
style=3D"color: rgb(17, 85, 204); cursor: pointer;">prasanth@genisists.com<=
/a></span></i></b><u></u><u></u></p><div><p class=3D"MsoNormal" style=3D"ma=
rgin: 1em 0in; line-height: normal; font-size: 12pt; font-family: &quot;Tim=
es New Roman&quot;, serif;"><span style=3D"font-family: Arial, sans-serif;"=
><img border=3D"0" width=3D"199" height=3D"57" src=3D"https://ci3.googleuse=
rcontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp0FhTmwRvKw4LQgks=
3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pCzpxtpwBgNsbnemBgpHa=
JdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9GZVwfTdzwY8rOrpS2MX=
5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?export=3Ddownload&amp;id=3D1fy=
CxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV0lwa2FFS2syRWx=
CbGdlYUxaUFpjL0N3PQ"></span></p></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:linux-ntb@googlegrou=
ps.com">linux-ntb@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/51bbcdb6-4921-4c7d-b945-87148afd904b%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/51bbcdb6-4921-4c7d-b945-87148afd904b%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_523_345044117.1558624495872--

------=_Part_522_1662935058.1558624495871--
