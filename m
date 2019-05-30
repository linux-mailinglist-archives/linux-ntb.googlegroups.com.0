Return-Path: <linux-ntb+bncBCDZ33GYSUERBWGBX7TQKGQEZ4MFMLQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id A766F2FCB8
	for <lists+linux-ntb@lfdr.de>; Thu, 30 May 2019 15:55:36 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id v21sf863530ljh.15
        for <lists+linux-ntb@lfdr.de>; Thu, 30 May 2019 06:55:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559224536; cv=pass;
        d=google.com; s=arc-20160816;
        b=HGU5DnNOR4DOr0ck3z38icbu6XqrirHNk2uW93XLu7a7rs7IK5R25eFBjTBT2TKNrr
         GXfiWmL2/Jloa2njftRB6ag8UFwCL6Wp8Slk/h3HFgOBUgIPOkAFMkmn4/HPEhGNzu2O
         sNzdV4va/RQYxo3j6Fg3WE/+gCE6ZnaNRig8e1tpF9vbGocSGfLGX48zg6/Qi5N26Qqb
         S6obUBfHv/aXbMbGdUtToWp1EnEa58np2/gUMzb1U91lxjvzkm3GWEp4EbOr2fbTJBME
         /mOZO+RzEVYtE5ISS2cPjwvaLqhBHg1m9i64tPKrcvj3Acb497x3U1rEVwmHSffK8Np7
         zkaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=shepEOuD/4YjB69nBafsBT/kdUJUBeGCVK6Bj1bGdZs=;
        b=EjAan+U8cEH7gWU6vaOeA6ygyuLdKhpCMLZQA18BxpCtBxY66dhMiQGcvsXwxDCl7J
         ok4E0Y9MOOejtrhyulXGBCq6oASoeQe+UstHKG/Y0thri4WzJ3vPLlihWikHAMmcssxe
         9d0/onkQvIh8K3QB2HINCtGpazNX88GHp6LZyQHAZrmVuUPMcx2wqndZN7FoVTYoqiX9
         hK0qlb8DQiU1XicJEkzltNADJU1DdQkQYP9DyqXOCDOc6d+pMzo2rImIpi47rp/Nmu8q
         l44q7t6JjxkZ7h/sLP5G0QhE149YA6INsN4me6NaeSLELdY2dWgkprpN/FMX1xQUWX8P
         0AYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=2FwXBHpm;
       spf=neutral (google.com: 2a00:1450:4864:20::244 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=shepEOuD/4YjB69nBafsBT/kdUJUBeGCVK6Bj1bGdZs=;
        b=V5YYcQ5cS26UMzRFV6ta6u1bp0/lY6mb+hdaQi6rj3cR0/GQ/pPin7dwQG6GzQk5C/
         iHnogagQmoKMd4dsGnIYTuCSETZaKLGaS/wF7UkJ6xHgF3b1FQToXQTx0+BYfbWJlXgG
         qQ2E7aLe2crFg4M6FaiYeNG8gIAOco+7K64LXJZVElnCGVaC1oSOOf+73lj5wvJqnwt9
         zQzn7k0LFOU1sQdTsqlWP0+iOhg+bYYAYVSgHzPJiGyGPIC0OY7siicfttoKYAIYPKBu
         tnOdu3uYz4C3YCEQxg/RXKN1k7bZyUXgSg0HJ+FVBZR6DJXg/DLFDugKb+tia6+nPABn
         3ObQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=shepEOuD/4YjB69nBafsBT/kdUJUBeGCVK6Bj1bGdZs=;
        b=J8qrjUgY+YB7dLGT0Oiq3Ik7T4prGZTqiI/qSNe7HHHEK1z5u+KFMt63YN7EqpSG5q
         /KrKxVMuotdVtkPjCH6EG67ZlNJfjNrT9IDt6BPcEWjVJsIq03J9RZsH1VhkO8bSJpHN
         dJqhCThqZv66Sn1EiZWmfWCUWLTX/G3jqI4YflLPRgcVtYPiySk6NMOXq+C5jxyac9Aw
         J0RM5SCaesT75rNsCFBzjHFiu3TtpGM78IPOhtWzGA/iPLv7p3UWEksBPndCzaM7rU02
         VpV3pv0+rU+zDYXz+Nl6EuqWs77SChX5YzeBJ4xqdGANZfi3c7ifBibQXB2UitP5pBlW
         +7yw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWoMxcu0kED4R6XU5Xvs50BlC2blEyVVwx64eDPeJNSwesWRXel
	e7E5tgZAD5G64JQyn078plI=
X-Google-Smtp-Source: APXvYqzcdTkw0PvdYdu1niMuif+L1jWauQztiyEcAbDNpROdd4jhr5MtekRY3i/dC2sVcos6UoxmCQ==
X-Received: by 2002:a2e:82c5:: with SMTP id n5mr2126641ljh.175.1559224536185;
        Thu, 30 May 2019 06:55:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9744:: with SMTP id f4ls399246ljj.8.gmail; Thu, 30 May
 2019 06:55:35 -0700 (PDT)
X-Received: by 2002:a2e:404:: with SMTP id 4mr2164724lje.55.1559224535620;
        Thu, 30 May 2019 06:55:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559224535; cv=none;
        d=google.com; s=arc-20160816;
        b=PsPC5TnUzHt7x7Y6WkNB4DtoL1cJB8q1sv26bLCk9QTmDgDFc7QyQKqMI377HEBwkk
         8VL4FiTmso9I1ADTH7/eQP7Fk/632GdRK6hQi6QytpZWMlnWQyFV6Ez1VtpL31cdLVPl
         2/KwoZJWj4Us4zaWV/hL3C1mJA0O96R/UfCBFBEuw3mwkwYY7nYjNkTP1k2eOKeqmWtg
         osF8w6J044ARKYXGUa5Z6JuJL33KsnZamHYrSVlED503FiV4PSPaxJxnapR0FDHEHtVe
         u3hg3ngMlcjIpEiD+Z6IVJttypQLDipiO2O0s0Z8rXQny0tS4dpchYZyYDqOf0t6H3eN
         D4+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=tu1BSn8PBYu8wbAPhP2z9YyZIgB5nisyOk+D5a3+rN8=;
        b=I2KfAQkKXnV4Ps/iYkla5PoSObk3FVL1xfI0cHuw4ox0HzyjB8KgbzxgVDCitD7J33
         mZB0EM5o9flusSS4yzJJPLEwDK26EfenuXN3lw66cnLJNDmANrRxd63+resyscsQVjsX
         bUoZtzTouf7//jg2Z1laCSr+uskhkU1qGr9vhiuQoJYQW4h87Iy7nE8S0tmaC8JNPo0v
         S/ypQNfxbMN4aJ9UKFrWQytx8VENrvRy2LjBxs7X9s1cP6s/aw8Njmfzo+JCqXwndSer
         ZI1MupFyIt8Iohu0y0+ArP+HPXlzxjwTb2UEgm+XpbuSfGyXVn4przm5FOq4Zb0bc7KT
         r2/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=2FwXBHpm;
       spf=neutral (google.com: 2a00:1450:4864:20::244 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id f23si127869lfm.3.2019.05.30.06.55.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 06:55:35 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::244 is neither permitted nor denied by best guess record for domain of uma@genisists.com) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id m22so5910549ljc.3
        for <linux-ntb@googlegroups.com>; Thu, 30 May 2019 06:55:35 -0700 (PDT)
X-Received: by 2002:a2e:9f44:: with SMTP id v4mr2226567ljk.85.1559224535390;
 Thu, 30 May 2019 06:55:35 -0700 (PDT)
MIME-Version: 1.0
From: uma shankar <uma@genisists.com>
Date: Thu, 30 May 2019 19:25:21 +0530
Message-ID: <CAMSH8srC2FvoO6ZmUj0rhCU==HCroK=FK1_=hGqtZkZXc3q2sA@mail.gmail.com>
Subject: Immediate Hire - Sales force Developer//6 months+//Arizona/NJ//
 Direct Client
To: umashankar6596@gmail.com
Content-Type: multipart/alternative; boundary="0000000000008eb37d058a1b4049"
X-Original-Sender: uma@genisists.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623
 header.b=2FwXBHpm;       spf=neutral (google.com: 2a00:1450:4864:20::244 is
 neither permitted nor denied by best guess record for domain of
 uma@genisists.com) smtp.mailfrom=uma@genisists.com
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

--0000000000008eb37d058a1b4049
Content-Type: text/plain; charset="UTF-8"

Hi All,



*The following requirement is open with our client.*

Role: *Sales force Developer*

Contract: *6 months+*

Location: *Arizona/NJ*

Client: *Direct*



*Experience:*

v  8+ years in Software Development.

v  5+ years experience in Cloud Technology and an in-depth understanding of
the primary concepts and terminology.

v  5+ years working on Sales force applications (Lightning is a must-have.)

v  5+ years experience using Force.com (Advanced understanding of SFDC
Triggers and Controllers, VF page development, sObjects, SOQL etc)

v  3+ year hands-on experience in an Agile development team.

v  Experience in object oriented development is a must.

v  Experience with SOAP and REST Web Services and integration using APIs is
a must.

v  Experience with source control, branching strategies and using code
repositories a must.

v  Sales force certification preferred.

v  Background in leveraging ETL products and tools (e.g. IBM DataStage,
Informatica, etc.) for data management is preferred.

v  Previous experience of Test Driven development is preferred.

v  Previous experience in a lead role within a team of engineers.

v  Advanced understanding of the Salesforce platform and its primary
functions.

v  Ability to learn new technologies and embrace the challenge learning
presents.

v  A self-starter, comfortable having conversations with business partners.

v  Robust and current knowledge of web standards, emerging technologies,
and trends.

v  Ability to think abstractly and deal with ambiguous/under-defined
problems.

v  An excellent communicator, both verbally and written.


-- 

*Thanks & Regards*

*Umashankar*

*US IT Recruiter*

*Genisis Technology Solutions*

*Email: **uma@genisists.com* <uma@genisists.com>

*Desk number: 315-320-3439*
[image: uma@genisists.com] <uma@genisists.com>

[image: Mailtrack]
<https://mailtrack.io?utm_source=gmail&utm_medium=signature&utm_campaign=signaturevirality5&>
Sender
notified by
Mailtrack
<https://mailtrack.io?utm_source=gmail&utm_medium=signature&utm_campaign=signaturevirality5&>
05/30/19,
7:25:14 PM

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAMSH8srC2FvoO6ZmUj0rhCU%3D%3DHCroK%3DFK1_%3DhGqtZkZXc3q2sA%40mail.gmail.com.
For more options, visit https://groups.google.com/d/optout.

--0000000000008eb37d058a1b4049
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/dce7e08=
57d8f462c03df7ce6ef6fd7661f4c964d.png?u=3D4349944"><p class=3D"MsoNormal" s=
tyle=3D"margin:0in 0in 10pt;line-height:16.8667px;font-size:11pt;font-famil=
y:Calibri,sans-serif"><span style=3D"font-family:Cambria,serif">Hi All,</sp=
an></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 10pt;line-height:16.8=
667px;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fa=
mily:Cambria,serif">=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin=
:0in 0in 10pt;line-height:16.8667px;font-size:11pt;font-family:Calibri,sans=
-serif"><b><span style=3D"font-size:10.5pt;line-height:16.1px;font-family:C=
ambria,serif;background-image:initial;background-position:initial;backgroun=
d-size:initial;background-repeat:initial;background-origin:initial;backgrou=
nd-clip:initial">The following requirement is open with our client.</span><=
/b><span style=3D"font-family:Cambria,serif"></span></p><p class=3D"MsoNorm=
al" style=3D"margin:0in 0in 10pt;line-height:16.8667px;font-size:11pt;font-=
family:Calibri,sans-serif"><span style=3D"font-family:Cambria,serif">Role:=
=C2=A0<b>Sales force Developer</b></span></p><p class=3D"MsoNormal" style=
=3D"margin:0in 0in 10pt;line-height:16.8667px;font-size:11pt;font-family:Ca=
libri,sans-serif"><span style=3D"font-family:Cambria,serif">Contract:=C2=A0=
<b>6 months+</b></span></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 1=
0pt;line-height:16.8667px;font-size:11pt;font-family:Calibri,sans-serif"><s=
pan style=3D"font-family:Cambria,serif">Location:=C2=A0<b>Arizona/NJ</b></s=
pan></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 10pt;line-height:16.=
8667px;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-f=
amily:Cambria,serif">Client:=C2=A0<b>Direct</b></span></p><p class=3D"MsoNo=
rmal" style=3D"margin:0in 0in 10pt;line-height:16.8667px;font-size:11pt;fon=
t-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,serif">=C2=
=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 10pt;line-heig=
ht:16.8667px;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=
=3D"font-family:Cambria,serif">Experience:</span></b></p><p class=3D"gmail-=
m_8192281554135247167gmail-MsoListParagraphCxSpFirst" style=3D"margin:0in 0=
in 0.0001pt 0.5in;line-height:16.8667px;font-size:11pt;font-family:Calibri,=
sans-serif"><span style=3D"font-family:Wingdings">v<span style=3D"font-vari=
ant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-=
size:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=
=C2=A0</span></span><span style=3D"font-family:Cambria,serif">8+ years in S=
oftware Development.</span></p><p class=3D"gmail-m_8192281554135247167gmail=
-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt 0.5in;line-he=
ight:16.8667px;font-size:11pt;font-family:Calibri,sans-serif"><span style=
=3D"font-family:Wingdings">v<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span></span><sp=
an style=3D"font-family:Cambria,serif">5+ years experience in Cloud Technol=
ogy and an in-depth understanding of the primary concepts and terminology.<=
/span></p><p class=3D"gmail-m_8192281554135247167gmail-MsoListParagraphCxSp=
Middle" style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:16.8667px;font-s=
ize:11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Wingdin=
gs">v<span style=3D"font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;=
Times New Roman&quot;">=C2=A0=C2=A0</span></span><span style=3D"font-family=
:Cambria,serif">5+ years working on Sales force applications (Lightning is =
a must-have.)</span></p><p class=3D"gmail-m_8192281554135247167gmail-MsoLis=
tParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:16=
.8667px;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-=
family:Wingdings">v<span style=3D"font-variant-numeric:normal;font-variant-=
east-asian:normal;font-stretch:normal;font-size:7pt;line-height:normal;font=
-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span></span><span style=
=3D"font-family:Cambria,serif">5+ years experience using Force.com (Advance=
d understanding of SFDC Triggers and Controllers, VF page development, sObj=
ects, SOQL etc)</span></p><p class=3D"gmail-m_8192281554135247167gmail-MsoL=
istParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:=
16.8667px;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"fon=
t-family:Wingdings">v<span style=3D"font-variant-numeric:normal;font-varian=
t-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:normal;fo=
nt-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span></span><span styl=
e=3D"font-family:Cambria,serif">3+ year hands-on experience in an Agile dev=
elopment team.</span></p><p class=3D"gmail-m_8192281554135247167gmail-MsoLi=
stParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:1=
6.8667px;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font=
-family:Wingdings">v<span style=3D"font-variant-numeric:normal;font-variant=
-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:normal;fon=
t-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span></span><span style=
=3D"font-family:Cambria,serif">Experience in object oriented development is=
 a must.</span></p><p class=3D"gmail-m_8192281554135247167gmail-MsoListPara=
graphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:16.8667=
px;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-famil=
y:Wingdings">v<span style=3D"font-variant-numeric:normal;font-variant-east-=
asian:normal;font-stretch:normal;font-size:7pt;line-height:normal;font-fami=
ly:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span></span><span style=3D"fo=
nt-family:Cambria,serif">Experience with SOAP and REST Web Services and int=
egration using APIs is a must.</span></p><p class=3D"gmail-m_81922815541352=
47167gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt 0.5=
in;line-height:16.8667px;font-size:11pt;font-family:Calibri,sans-serif"><sp=
an style=3D"font-family:Wingdings">v<span style=3D"font-variant-numeric:nor=
mal;font-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-h=
eight:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span></=
span><span style=3D"font-family:Cambria,serif">Experience with source contr=
ol, branching strategies and using code repositories a must.</span></p><p c=
lass=3D"gmail-m_8192281554135247167gmail-MsoListParagraphCxSpMiddle" style=
=3D"margin:0in 0in 0.0001pt 0.5in;line-height:16.8667px;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-family:Wingdings">v<span st=
yle=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font-stre=
tch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times New Rom=
an&quot;">=C2=A0=C2=A0</span></span><span style=3D"font-family:Cambria,seri=
f">Sales force certification preferred.</span></p><p class=3D"gmail-m_81922=
81554135247167gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0=
001pt 0.5in;line-height:16.8667px;font-size:11pt;font-family:Calibri,sans-s=
erif"><span style=3D"font-family:Wingdings">v<span style=3D"font-variant-nu=
meric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:7=
pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=
</span></span><span style=3D"font-family:Cambria,serif">Background in lever=
aging ETL products and tools (e.g. IBM DataStage, Informatica, etc.) for da=
ta management is preferred.</span></p><p class=3D"gmail-m_81922815541352471=
67gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt 0.5in;=
line-height:16.8667px;font-size:11pt;font-family:Calibri,sans-serif"><span =
style=3D"font-family:Wingdings">v<span style=3D"font-variant-numeric:normal=
;font-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-heig=
ht:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span></spa=
n><span style=3D"font-family:Cambria,serif">Previous experience of Test Dri=
ven development is preferred.</span></p><p class=3D"gmail-m_819228155413524=
7167gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt 0.5i=
n;line-height:16.8667px;font-size:11pt;font-family:Calibri,sans-serif"><spa=
n style=3D"font-family:Wingdings">v<span style=3D"font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-he=
ight:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span></s=
pan><span style=3D"font-family:Cambria,serif">Previous experience in a lead=
 role within a team of engineers.</span></p><p class=3D"gmail-m_81922815541=
35247167gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt =
0.5in;line-height:16.8667px;font-size:11pt;font-family:Calibri,sans-serif">=
<span style=3D"font-family:Wingdings">v<span style=3D"font-variant-numeric:=
normal;font-variant-east-asian:normal;font-stretch:normal;font-size:7pt;lin=
e-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span=
></span><span style=3D"font-family:Cambria,serif">Advanced understanding of=
 the Salesforce platform and its primary functions.</span></p><p class=3D"g=
mail-m_8192281554135247167gmail-MsoListParagraphCxSpMiddle" style=3D"margin=
:0in 0in 0.0001pt 0.5in;line-height:16.8667px;font-size:11pt;font-family:Ca=
libri,sans-serif"><span style=3D"font-family:Wingdings">v<span style=3D"fon=
t-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal=
;font-size:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=
=C2=A0=C2=A0</span></span><span style=3D"font-family:Cambria,serif">Ability=
 to learn new technologies and embrace the challenge learning presents.</sp=
an></p><p class=3D"gmail-m_8192281554135247167gmail-MsoListParagraphCxSpMid=
dle" style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:16.8667px;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Wingdings"=
>v<span style=3D"font-variant-numeric:normal;font-variant-east-asian:normal=
;font-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Tim=
es New Roman&quot;">=C2=A0=C2=A0</span></span><span style=3D"font-family:Ca=
mbria,serif">A self-starter, comfortable having conversations with business=
 partners.</span></p><p class=3D"gmail-m_8192281554135247167gmail-MsoListPa=
ragraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:16.86=
67px;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-fam=
ily:Wingdings">v<span style=3D"font-variant-numeric:normal;font-variant-eas=
t-asian:normal;font-stretch:normal;font-size:7pt;line-height:normal;font-fa=
mily:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span></span><span style=3D"=
font-family:Cambria,serif">Robust and current knowledge of web standards, e=
merging technologies, and trends.</span></p><p class=3D"gmail-m_81922815541=
35247167gmail-MsoListParagraphCxSpMiddle" style=3D"margin:0in 0in 0.0001pt =
0.5in;line-height:16.8667px;font-size:11pt;font-family:Calibri,sans-serif">=
<span style=3D"font-family:Wingdings">v<span style=3D"font-variant-numeric:=
normal;font-variant-east-asian:normal;font-stretch:normal;font-size:7pt;lin=
e-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0</span=
></span><span style=3D"font-family:Cambria,serif">Ability to think abstract=
ly and deal with ambiguous/under-defined problems.</span></p><p class=3D"gm=
ail-m_8192281554135247167gmail-MsoListParagraphCxSpLast" style=3D"margin:0i=
n 0in 10pt 0.5in;line-height:16.8667px;font-size:11pt;font-family:Calibri,s=
ans-serif"><span style=3D"font-family:Wingdings">v<span style=3D"font-varia=
nt-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-s=
ize:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=
=C2=A0</span></span><span style=3D"font-family:Cambria,serif">An excellent =
communicator, both verbally and written.=C2=A0 =C2=A0=C2=A0</span></p><br c=
lass=3D"gmail-Apple-interchange-newline"><div><br></div>-- <br><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><p style=3D"text-align=
:left;margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif=
"><span><b><span style=3D"font-size:10.5pt;font-family:Cambria,serif;border=
:1pt none windowtext;padding:0in;background-image:initial;background-positi=
on:initial;background-repeat:initial">Thanks &amp; Regards<u></u><u></u></s=
pan></b></span></p><p style=3D"text-align:left;margin:0in 0in 0.0001pt;font=
-size:11pt;font-family:Calibri,sans-serif"><span><b><span style=3D"font-siz=
e:10.5pt;font-family:Cambria,serif;border:1pt none windowtext;padding:0in;b=
ackground-image:initial;background-position:initial;background-repeat:initi=
al"><u>Umashankar</u><u></u></span></b></span></p><p style=3D"text-align:le=
ft;margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><=
span><b><span style=3D"font-size:10.5pt;font-family:Cambria,serif;border:1p=
t none windowtext;padding:0in;background-image:initial;background-position:=
initial;background-repeat:initial">US IT Recruiter<u></u><u></u></span></b>=
</span></p><p style=3D"text-align:left;margin:0in 0in 0.0001pt;font-size:11=
pt;font-family:Calibri,sans-serif"><span><b><span style=3D"font-size:10.5pt=
;font-family:Cambria,serif;border:1pt none windowtext;padding:0in;backgroun=
d-image:initial;background-position:initial;background-repeat:initial">Geni=
sis Technology Solutions<u></u><u></u></span></b></span></p><p style=3D"tex=
t-align:left;margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,san=
s-serif"><span><b><span style=3D"font-size:10.5pt;font-family:Cambria,serif=
;border:1pt none windowtext;padding:0in;background-image:initial;background=
-position:initial;background-repeat:initial">Email:=C2=A0</span></b></span>=
<a href=3D"mailto:uma@genisists.com" style=3D"color:rgb(17,85,204)" target=
=3D"_blank"><b><span style=3D"font-family:Cambria,serif">uma@genisists.com<=
/span></b></a><b><span style=3D"font-family:Cambria,serif"><u></u><u></u></=
span></b></p><p style=3D"text-align:left;margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span><b><span style=3D"font-size:10.5=
pt;font-family:Cambria,serif;border:1pt none windowtext;padding:0in;backgro=
und-image:initial;background-position:initial;background-repeat:initial">De=
sk number: 315-320-3439</span></b></span></p><div style=3D"text-align:left;=
font-family:arial,helvetica,sans-serif"><a href=3D"mailto:uma@genisists.com=
" target=3D"_blank"><img src=3D"https://docs.google.com/uc?export=3Ddownloa=
d&amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV=
0lwa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" width=3D"200" height=3D"58" alt=3D"uma@g=
enisists.com"></a></div></div></div></div></div></div></div><br><div class=
=3D"mt-signature">
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
                    <span style=3D"color:transparent;font-size:0">05/30/19,=
 7:25:14 PM</span>
                </td>
                <td>
                   =20
                </td>
            </tr>
        </tbody></table>
    </div></div>

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
om/d/msgid/linux-ntb/CAMSH8srC2FvoO6ZmUj0rhCU%3D%3DHCroK%3DFK1_%3DhGqtZkZXc=
3q2sA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/linux-ntb/CAMSH8srC2FvoO6ZmUj0rhCU%3D%3DHCroK%3DFK1_%=
3DhGqtZkZXc3q2sA%40mail.gmail.com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

--0000000000008eb37d058a1b4049--
