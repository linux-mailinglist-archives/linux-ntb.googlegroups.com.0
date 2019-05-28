Return-Path: <linux-ntb+bncBCELXQMOTUFBBH46WXTQKGQEU63XTTQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D11A32C9A9
	for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 17:09:20 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id b189sf19185362ywa.19
        for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 08:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1ZXaKyyFtt0NqC9RXp74z0DHdp3uaCStM6fHyutMQt8=;
        b=I1lBCMxgs/N6In9xdOAcb8p09ZqBJjmGyelIRRNtqlIQEb1ErDKgD5u4uEVj8ye5km
         xy8IbGW46q4gf0+4dwgxLnnYEed6dgTA0Ijc3Dlxc3alfeqKCBGSN4pfpF/PDDinS6yD
         61Ksn7EGzwZLLUnAauKh1VoT4eSK6MBGhzMpoyFKvOFMl4x1P+bdmHAyZjgV1qtNKx1l
         e3+Pplj6SDRBVwVA4vt1L5AilRDhKqwgEoN2ldKf2pBub/QDsdqsBrOHnEgZ7Vghg7eC
         /rj/iUlsjSRJjlZ7MhgtFQ4Hs9/rw3gIJqhkif2LNzryANZLwqMrFBdUZKMKyDzDeQWc
         94xA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ZXaKyyFtt0NqC9RXp74z0DHdp3uaCStM6fHyutMQt8=;
        b=eADR6qDCoXKMVJYEuhsXCgXceaRH1YMmQeMVz9W0GeGBJ7esPGTBv8IiGN7tMOhLbX
         aENKipLI88RpI6IAtm/sNXrlniiYFXAfsaC2CGkwrhUKdP9Pw5GZXWM6E4DABCzNwOmI
         p6RX9xmC5vwItT/Wg3tc3ckg7GdhKAaryaF6BnEqx6DZqekbSbimcDPGDIKhUur7pZjC
         AUvhzyvuq46p4uYuKBgA2K2Ply3Ot7y12QgqCOE7Ptld0LDXiTMvgdP2CKZK5bIt3euV
         qjRI/b8lNvi5B/il7WaUb8hl9mxLz5GInroRc1959hZaJ0NcEwLwSVlkWiQyVOLzpiXE
         hLfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ZXaKyyFtt0NqC9RXp74z0DHdp3uaCStM6fHyutMQt8=;
        b=k1W4xqJ5lB66ERg+WroJDslfj/S39lS6pfRg5qWT2XIvWVWwOdqwX4QxGAZtXGN1VW
         d3KzJlYVgDiXq595bQOMktWjl7mVmDWl6fNvLZkOfsbLeTzgbcF7OvJkBoT/2jAUba69
         OeI6/sdRrRIE12Ou5L2jQgM8ICJswy5DOI5i9Hzpkz39+HI8zwzHzHQ65b62jUooohPG
         BwlKBpWlA3YvUzg/vx8t2hnZi3a2XTSjHB9ubTeIqwzzI5NjBxyWj4sRoykjRtgRYQrL
         I2XsUfCYsw8tD7A4TmzZpoDtE3mkIEzZa/MpqOrwrnxQ+kly76+NW93xbRvjsV4Cf9hG
         /YtQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXoLVbQoLUFnMw8EykZfOkl11NURIYstx9SKtyX+YJTrLuy8PjY
	ZfcC+u3PA9e/YahZuO15zxM=
X-Google-Smtp-Source: APXvYqzWVVE7QRBvoBaWEUFUdKgySB0qjFw7edJTQiMeJkMUDeSTqxAQA27URapsIjzwHI2Xc5CJ+Q==
X-Received: by 2002:a25:a289:: with SMTP id c9mr9063397ybi.352.1559056159778;
        Tue, 28 May 2019 08:09:19 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:d90e:: with SMTP id q14ls2281323ybg.4.gmail; Tue, 28 May
 2019 08:09:19 -0700 (PDT)
X-Received: by 2002:a25:7496:: with SMTP id p144mr11562847ybc.507.1559056159342;
        Tue, 28 May 2019 08:09:19 -0700 (PDT)
Date: Tue, 28 May 2019 08:09:18 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <f0990275-f94e-40a8-b345-5800c7f4f6ad@googlegroups.com>
Subject: Looking For ServiceNow Developer/Engineer
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2292_343020801.1559056158783"
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

------=_Part_2292_343020801.1559056158783
Content-Type: multipart/alternative; 
	boundary="----=_Part_2293_1075153962.1559056158783"

------=_Part_2293_1075153962.1559056158783
Content-Type: text/plain; charset="UTF-8"

*WE HAVE URGENT REQUIREMENT FOR  SERVICENOW DEVELOPER / ENGINEER*

*IN HEALTH INSURANCE FIELD*

Position: Sr. ServiceNow Developer/Engineer 
Location: Durham North Carolina 27707
Term: 6 Months plus
Experience:8+years


SENIOR ServiceNow Developer Wth 8+ Years Exp.. 



Day-to-Day Responsibilities:


   - Convert user stories into technical solutions.
   - Maintains technology currency and capacity planning in support of 
   established SLAs.
   - Proactively provides information and ongoing consultation for IT and 
   business areas as well as vendors directly or indirectly affected by 
   ServiceNow Application.
   - Leads the requirement gathering sessions collaborating with IT 
   stakeholders, service owners and partners.
   - Provides operational readiness through the engineering, planning, 
   coordination, and execution of performance and tuning analysis, systems 
   support, and incident and problem resolution.
   - Provides detailed guidance and consultation in solutioning production 
   incidents when required.
   - Collaborates with vendors on infrastructure designs to ensure the 
   final product is what was architected or designed.
   -  
   - 
   - Is this a good fit? (Requirements):
   - 
   - Bachelors degree and 8+ years of systems ServiceNow Developer 
   experience is required.
   - In lieu of degree, 10+ years of systems ServiceNow Developer.
   - Direct experience in one or more of the following technical 
   specialties: application development, application integration, Web 
   Services, Scripting, and/or database programming.
   - Experience automating tasks associated with technical specialties.
   - Experience successfully leading ITSM projects and initiatives.
   - Experience in multiple technical specialties preferred.
   - Experience in one or more of the following technologies (aligning with 
   relevant technical specialties): Integrating ServiceNow with other 
   Enterprise Application via API, using REST/SOAP web services, Scripting 
   Workflow, ServiceNow Discovery,
   - Must be able to work independently and be self sufficient in defining 
   and realizing infrastructure designs.
   - Team and customer service oriented, flexible and adaptable with proven 
   ability to solve problems in a collaborative and timely manner.
   - Solid background in data collection, analysis, and reporting.
   - Proven debugging skills
   - Excellent oral and written communication and presentation skills
   - Flexible and adaptable with focus on effectively managing change.


*Forward Your Profiles to Below Mentioned Email Id*

*Hurry...!*

*Thanks & Regards,*

*Prashanth*

*US IT  RECRUITER*

*+1 (315)947-0775*

*Email : prasanth@genisists.com <prasanth@genisists.com>*

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/f0990275-f94e-40a8-b345-5800c7f4f6ad%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_2293_1075153962.1559056158783
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"text-align: center;"><font size=3D"4" color=
=3D"#ffffff"><b><i><u style=3D"background-color: rgb(19, 79, 92);">WE HAVE =
URGENT REQUIREMENT FOR=C2=A0 SERVICENOW DEVELOPER / ENGINEER</u></i></b></f=
ont></div><div style=3D"text-align: center;"><font size=3D"4" color=3D"#fff=
fff"><b><i><u style=3D"background-color: rgb(32, 18, 77);"><br></u></i></b>=
</font></div><div style=3D"text-align: center;"><font color=3D"#ffffff" siz=
e=3D"4"><b><i><u style=3D"background-color: rgb(102, 0, 0);">IN HEALTH INSU=
RANCE FIELD</u></i></b></font></div><div style=3D"font-size: small;"><br></=
div><span style=3D"font-size: small;">Position: Sr. ServiceNow Developer/En=
gineer=C2=A0</span><br style=3D"font-size: small;"><span style=3D"font-size=
: small;">Location: Durham North Carolina 27707</span><br style=3D"font-siz=
e: small;"><span style=3D"font-size: small;">Term: 6 Months plus</span><br =
style=3D"font-size: small;"><span style=3D"font-size: small;">Experience:8+=
years</span><br style=3D"font-size: small;"><br style=3D"font-size: small;"=
><br style=3D"font-size: small;"><font color=3D"#eeeeee"><font size=3D"4" s=
tyle=3D"background-color: rgb(102, 102, 102);">SENIOR ServiceNow Developer =
Wth 8+ Years Exp.</font><span style=3D"font-size: small;">.=C2=A0</span></f=
ont><br style=3D"font-size: small;"><br style=3D"font-size: small;"><br sty=
le=3D"font-size: small;"><br style=3D"font-size: small;"><span style=3D"fon=
t-size: small;">Day-to-Day Responsibilities:</span><br style=3D"font-size: =
small;"><br style=3D"font-size: small;"><ul style=3D"font-size: small;"><li=
 style=3D"margin-left: 15px;">Convert user stories into technical solutions=
.</li><li style=3D"margin-left: 15px;">Maintains technology currency and ca=
pacity planning in support of established SLAs.</li><li style=3D"margin-lef=
t: 15px;">Proactively provides information and ongoing consultation for IT =
and business areas as well as vendors directly or indirectly affected by Se=
rviceNow Application.</li><li style=3D"margin-left: 15px;">Leads the requir=
ement gathering sessions collaborating with IT stakeholders, service owners=
 and partners.</li><li style=3D"margin-left: 15px;">Provides operational re=
adiness through the engineering, planning, coordination, and execution of p=
erformance and tuning analysis, systems support, and incident and problem r=
esolution.</li><li style=3D"margin-left: 15px;">Provides detailed guidance =
and consultation in solutioning production incidents when required.</li><li=
 style=3D"margin-left: 15px;">Collaborates with vendors on infrastructure d=
esigns to ensure the final product is what was architected or designed.</li=
><li style=3D"margin-left: 15px;">=C2=A0</li><li style=3D"margin-left: 15px=
;"><br></li><li style=3D"margin-left: 15px;">Is this a good fit? (Requireme=
nts):</li><li style=3D"margin-left: 15px;"><br></li><li style=3D"margin-lef=
t: 15px;">Bachelors degree and 8+ years of systems ServiceNow Developer exp=
erience is required.</li><li style=3D"margin-left: 15px;">In lieu of degree=
, 10+ years of systems ServiceNow Developer.</li><li style=3D"margin-left: =
15px;">Direct experience in one or more of the following technical specialt=
ies: application development, application integration, Web Services, Script=
ing, and/or database programming.</li><li style=3D"margin-left: 15px;">Expe=
rience automating tasks associated with technical specialties.</li><li styl=
e=3D"margin-left: 15px;">Experience successfully leading ITSM projects and =
initiatives.</li><li style=3D"margin-left: 15px;">Experience in multiple te=
chnical specialties preferred.</li><li style=3D"margin-left: 15px;">Experie=
nce in one or more of the following technologies (aligning with relevant te=
chnical specialties): Integrating ServiceNow with other Enterprise Applicat=
ion via API, using REST/SOAP web services, Scripting Workflow, ServiceNow D=
iscovery,</li><li style=3D"margin-left: 15px;">Must be able to work indepen=
dently and be self sufficient in defining and realizing infrastructure desi=
gns.</li><li style=3D"margin-left: 15px;">Team and customer service oriente=
d, flexible and adaptable with proven ability to solve problems in a collab=
orative and timely manner.</li><li style=3D"margin-left: 15px;">Solid backg=
round in data collection, analysis, and reporting.</li><li style=3D"margin-=
left: 15px;">Proven debugging skills</li><li style=3D"margin-left: 15px;">E=
xcellent oral and written communication and presentation skills</li><li sty=
le=3D"margin-left: 15px;">Flexible and adaptable with focus on effectively =
managing change.</li></ul><div><font size=3D"2"><br></font></div><div><font=
 color=3D"#eeeeee" size=3D"2"><b><u style=3D"background-color: rgb(56, 118,=
 29);">Forward Your Profiles to Below Mentioned Email Id</u></b></font></di=
v><div><font size=3D"2"><br></font></div><b><i><u><font size=3D"4" color=3D=
"#eeeeee" style=3D"background-color: rgb(116, 27, 71);">Hurry...!</font></u=
></i></b><div><font size=3D"4"><b><i><u><br></u></i></b></font></div><div><=
p style=3D"font-size: small; font-family: arial, helvetica, sans-serif;"><b=
><i><span style=3D"line-height: 14.95px;">Thanks &amp; Regards,</span></i><=
/b><span style=3D"line-height: 14.95px;"></span></p><p style=3D"font-size: =
small; font-family: arial, helvetica, sans-serif;"><b><i><span style=3D"lin=
e-height: 14.95px;">Prashanth</span></i></b></p><p style=3D"font-size: smal=
l; font-family: arial, helvetica, sans-serif;"><b><i><span style=3D"line-he=
ight: 14.95px;"></span></i></b><b><i><span style=3D"line-height: 14.95px;">=
<b><i><span style=3D"line-height: 14.95px;">US IT=C2=A0 RECRUITER</span></i=
></b><span style=3D"line-height: 14.95px;"></span></span></i></b></p><p sty=
le=3D"font-size: small; font-family: arial, helvetica, sans-serif;"><b><i><=
span style=3D"line-height: 14.95px;"><b><i><span style=3D"line-height: 14.9=
5px;">+1 (315)947-0775</span></i></b></span></i></b></p><p style=3D"font-si=
ze: small;"><font face=3D"arial, helvetica, sans-serif"><b><i>Email :=C2=A0=
<a href=3D"mailto:prasanth@genisists.com" target=3D"_blank" data-mt-detrack=
-inspected=3D"true" style=3D"color: rgb(17, 85, 204);">prasanth@genisists.c=
om</a></i></b></font></p><div style=3D"font-size: small; font-family: arial=
, helvetica, sans-serif;"><a data-mt-detrack-inspected=3D"true"><img src=3D=
"https://ci3.googleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3m=
NnYNVp0FhTmwRvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv=
4pCzpxtpwBgNsbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG=
8s9GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?export=
=3Ddownload&amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6=
JWBvzS25CV0lwa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" width=3D"200" height=3D"58" cl=
ass=3D"CToWUd"></a></div></div></div>

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
om/d/msgid/linux-ntb/f0990275-f94e-40a8-b345-5800c7f4f6ad%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/f0990275-f94e-40a8-b345-5800c7f4f6ad%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_2293_1075153962.1559056158783--

------=_Part_2292_343020801.1559056158783--
