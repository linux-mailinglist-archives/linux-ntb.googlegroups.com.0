Return-Path: <linux-ntb+bncBDK2JZONSUPRBFMC67TAKGQE6N2JZ3A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1E420F6A
	for <lists+linux-ntb@lfdr.de>; Thu, 16 May 2019 21:59:17 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id x15sf1763546wrn.11
        for <lists+linux-ntb@lfdr.de>; Thu, 16 May 2019 12:59:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558036757; cv=pass;
        d=google.com; s=arc-20160816;
        b=0gEXg7rIDmzOi8lllDF6eoA1S+LUcwpQSSkL3CbfFlyEflwBGqZstshyZXDgNXEUiX
         7PQCrA1cXw712JlMv6LW0uYaSv0gcn+UqkDoQ3CPrOCfQzYNjLRVYAxQQpqW1ycEKMJL
         MrNLR5Gn+Twf22XfL/jNz6/9soU6+c84soA5wUuojSa4ossedpwAYgtUlKwhKxBCZBrb
         X+E69gWw8B6GWw7wabXiGAqYZl2RW2VzZWt4tZP6vjl2+8rz3RJvCJ4xpnW25TaR5YjZ
         GcwKHZFF9P8S/C29Qjg3pBN8QgP/Z5rjn4geC3xLDGZJD/3Ui5v/bcpoWkV8EKQaZsB3
         PlwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Idxf5WMo/62Y2QstFZRJzNJIf9bccr3aFLwlFiRKYgY=;
        b=zgCxEb2+rE5fX3CoHvLL6mP7BMTsXkyWaFx1hnrWBCsq3nHGkNOBoE62yUlE1Vbx7p
         DMAqAHinw4J5cHKPcyJxC6CPSqOVDJnwITFHhyhWxEoPZaGb8gEuars96c390C7LC7Ge
         csL2hpP7HBc9aC/2KJJA3pNPxawV4LWGGz8NQyFkFWJ3neWGC2RHTbQTtIh9lGtdnX/7
         9P4oBZjG8LS9//XBPLagtaho5Tbvn/LjBwrwLovToGDa98VT7I/lo3o8FWMHAybpVhkW
         GLifdB/71uia9od2ejlmJbuW+3HdvLAjBu3QEFo/2uuQD90c2IFhyUaT1a00/8Hb9o3E
         dTsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iUVo3yYe;
       spf=pass (google.com: domain of sai1.solugenix@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=sai1.solugenix@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Idxf5WMo/62Y2QstFZRJzNJIf9bccr3aFLwlFiRKYgY=;
        b=cURRDLs+XBdE78Gsx+pwcGu+6nOphZ9mr0sOeinrkIArV0A+iOQ8pD0Nqu1oX/XMK5
         AsE7fAhC0BLLXRM+tRSopXzzjttFtsJSXJ/vXb1TwTQ/LZcnRVwM4Jsbwv51rOv38Drv
         mDoNHT4Irjs0NMstRke8RPOAhvMxs/5Rf7ssJuVVRUvHlbqQuHHp0qhff93lM5zQO0FF
         oRDmVfrPdHqRdBymGwo+GoUDGMMrtl5OB6gzeej5Gk3P8g9q/Abv5pK/OkDA80O1l8WW
         Eo2oqA2eL/CiRmr0MPkJpDm27NcXoTHEU4Jy8kTIrT6jX8hEZRBaEx5uVYApMW0Kbyuj
         5Z+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Idxf5WMo/62Y2QstFZRJzNJIf9bccr3aFLwlFiRKYgY=;
        b=IKg/G/EIvM+Yz8VtmBwtYVrArcF2hNKwbguyVvvJuLwTmJ/NHlvHoqsUc6KVABUw1o
         Yzv96DvOvK8Yj9d4u1QrRxOjNApMTLMWRhnJlUA4lMPr+kEkpCBwdfLYIQPpAlnb8pv4
         iiGmU/cqU9zviDU5jQI3qO2qO2mxgZ6WqM6Eu9eDp1zpKhcptE4qmoXNZwILNDA70eyQ
         bKmcBaqCbbvgZeFHbtAQzpLczIkSmP1nxwALxEwbTZ4Ka/a2vwOKU0bkUhBud4MDIlfU
         xdNzlO30x1zXYitX6Fn6nfz2LsL17d70tab36UPLtZGYKLNzDSSxzWMeu7/pnKdY1a+J
         98ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Idxf5WMo/62Y2QstFZRJzNJIf9bccr3aFLwlFiRKYgY=;
        b=mAVKuWJM9Z07NRLXEibtLPLSGclf/XYdohp1n7ikdaQ+VJEY6+kgJsyPxk3NpcLEmY
         8l6ZvBG8VFYDFnUTHOjuHk5DnPBmt6heN61+KttHVDmjTxEENvogSsk/xUF1ke0RuXU5
         spa3v8K/JPl/4UArzCCtQkOoEXi8FWSYxAtI3Tf1iGQEy4aPVhGnGcsaOdCcmCZKBxJs
         lGCKElKL+GV6nJGMLxL6TwaMg0WxbPNk3BUapq+lZt1igezisac4wEgd5fbP1PT8IN/D
         TAd4LNtwBZTEy1ldhnOnL4xBx61maIRe+pVGTFKyVUtLYs8890gXCnR6qGmESC41CAuI
         NQtg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW7t/PJI8r0QpUyc1Vogu+OifnxF6FfsVvlYGQwQ2sZhSB4ZCV0
	YusrETJNM96Y1VwL8uRtyjk=
X-Google-Smtp-Source: APXvYqzjQtwYNFzLf5YZECr+4wuFBu0OHoRpOUbGjDHPQpgVkjQCbVJ+L/+Mdd2MJyTZU5HIzZ4RGA==
X-Received: by 2002:a5d:6145:: with SMTP id y5mr21272072wrt.96.1558036757325;
        Thu, 16 May 2019 12:59:17 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:66ce:: with SMTP id k14ls1780448wrw.4.gmail; Thu, 16 May
 2019 12:59:16 -0700 (PDT)
X-Received: by 2002:a5d:4604:: with SMTP id t4mr31194676wrq.93.1558036756745;
        Thu, 16 May 2019 12:59:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558036756; cv=none;
        d=google.com; s=arc-20160816;
        b=hmkHSMhf/2QIhXY9FN9eFXZ03eOA2gLvHJEBPtIh5T67BgfUGb8TJzHrl8g2uIoOQQ
         BH5U/v03a+iN1G3mOXUcFYuSAwZ/diZGF0B9LEGV9fCbrUuVjd7jiIBR7CcXPBRp1uZp
         zPxxIixUx4Kqu5Yr9SkF272S0FeBxJuQrXHsyWH1xS8blDkwu8GbmDH8PaUj4uw3ySCe
         oMGzztH0KnrZXda/5uyMMJ0bDIExpi9fzL49b3SUtwcMVU4Tq9BrR72I6/Z+/m3IibIZ
         jyIU8ZQcYMwD7AnpqyLQNfmdZe+Re5iAjD2A0bTXdcDq1wVn1k9fBcwPEMIY5pY3B5w7
         gZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=bKF7rdMS1PEBxtabJQq30v970aMHohzlgcHF8ca/VGI=;
        b=VGI+BGF0Udh/6IsZQMbtWyz/W6UDjhcfTqpZWYqRQ13Au/gR966Ws7Qw70D1bDHsqN
         YVmCN5H+pKsog0C83uPrHY7oL4z3eZGXIzuLo88PEJkPauGBmkOwirNvcxZFOOEFakM0
         pkhABSHvCpuNtlz0SsCrrjfjwaEgGpzEL3GBRxNrK90JWRplKQYUukadM5eHbV+slanv
         P1+gPz7//5NMLPmEVoIF7hzAjdQBEWOEYvwxagvatveGyTlwbZPAWDfN+9nTfznc5G8s
         hwZxpC0S4Mqm3RBlMMfmquUCbjfs0F1YUfhZLATcyZnGt/oDoeLaSe3BocaADUft2ly2
         8/Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iUVo3yYe;
       spf=pass (google.com: domain of sai1.solugenix@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=sai1.solugenix@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id d14si1254672wrj.3.2019.05.16.12.59.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 12:59:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sai1.solugenix@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id c17so3619777lfi.2
        for <linux-ntb@googlegroups.com>; Thu, 16 May 2019 12:59:16 -0700 (PDT)
X-Received: by 2002:a05:6512:309:: with SMTP id t9mr24758943lfp.103.1558036756168;
 Thu, 16 May 2019 12:59:16 -0700 (PDT)
MIME-Version: 1.0
From: Sai Kumar <sai1.solugenix@gmail.com>
Date: Thu, 16 May 2019 12:59:04 -0700
Message-ID: <CAAQxFq7-veggjHY-+h=nRosKeeh5P--sLxnOTu4JekKBjQ7_2g@mail.gmail.com>
Subject: Urgent Need : Salesforce Developer @ Irvine CA ( Direct Client )
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000066061b058906b3d9"
X-Original-Sender: sai1.solugenix@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iUVo3yYe;       spf=pass
 (google.com: domain of sai1.solugenix@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=sai1.solugenix@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--00000000000066061b058906b3d9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,



Greetings from Solugenix!!!

My Name is Sai Kumar, working as "Recuiter" for Solugenix.



*Solugenix* is an information technology services firm that has a rich
history of providing comprehensive technology services and solutions for
more than four decades. Since 1969, *Solugenix Corporation* has been
fulfilling the IT services needs of some of the most respected global
corporations in the U.S.





We found your resume in one of the job boards. Your skills seem to be a
good match for the position description I have attached below. Please send
your resume to sai.nakka@solugenix.com  if you are interested in being
considered for this opportunity.



Even if you are not available, but if you know someone who would fit this
job, please don't hesitate to pass this email on to them.



*Position Title: Salesforce Developer*

*Job Location: Irvine, CA   ( Locals Preferred
)
*

*Duration: Long Term Contract    *



Notes from Client.

Experience with migration from classic to lighting of salesforce experience

Workflows and salesforce reports

Salesforce data loader



*Notes*

Immediate need for a Salesforce Developer to work on PCS Central

Must be well versed with CRM systems and Salesforce specifically (with
hands-on SF experience =E2=80=93 maybe some lightweight configuration exper=
ience)

Must have financial services experience (wealth management experience is a
huge plus =E2=80=93 knowledge of/experience with client on-boarding, client
management)

This is a client facing role so this person must have excellent
communication skills. Will be spending some time in Irvine and LA.

experience using Salesforce.com (SFDC) required. Jira experience is
preferred.
Manage enhancements within SFDC, assist team on projects, run/pull reports
from SFDC.

Financial services experience (wealth management experience is a huge plus
=E2=80=93 knowledge of/experience with client on-boarding, client managemen=
t)

Strong business acumen and communication skills.

Users are in LAO and the resource will be working from Irvine office, he
will gather salesforce requirements or changes from users and work with
technical team which is sitting in Irvine office

He will travel to Irvine on a need basis to provide training to users and
for UAT=E2=80=99s

Bachelor degree in related field is preferred.
 -Reviews, analyzes, and evaluates business systems and user needs.

-Documents requirements, defines scope and objectives, and formulates
systems to parallel overall business strategies.

-Requires at least 7 years of experience.





*Thanks and Regards,*



[image: cid:image006.png@01D4BD76.95F0E4D0]

Sai Kumar,

*Recruiter*



*Primary:* 949-468-0052

*Internal Extension:* 1009

*Email:* sai.nakka@solugenix.com <sai.nakka@solugenix.com%20@solugenix.com>

Delivering on business promises for 50 years

[image: cid:image002.png@01D0C49A.9EEF1260]
<https://www.facebook.com/Solugenix>  [image:
cid:image003.png@01D0C49A.9EEF1260]
<https://www.linkedin.com/company/solugenix>  [image:
cid:image004.png@01D0C49A.9EEF1260] <https://twitter.com/solugenix>  [image=
:
cid:image005.png@01D0C49A.9EEF1260] <https://www.youtube.com/user/solugenix=
>

Your employment with the Company will be on an at-will basis such that both
you and the Company have the right to terminate the employment relationship
at any time with or without notice.  Nothing in this e-mail should be
construed as creating any guaranteed length of employment.  This email is
not intended to be a solicitation. It is targeted at recruiting &
consulting professionals. If you have received this in error, please accept
our apologies & reply with REMOVE as subject to be removed from our mailing
list. We regret any inconvenience caused.

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAAQxFq7-veggjHY-%2Bh%3DnRosKeeh5P--sLxnOTu4JekKBjQ7_2g%40mail.gm=
ail.com.
For more options, visit https://groups.google.com/d/optout.

--00000000000066061b058906b3d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;fo=
nt-size:11pt;font-family:Calibri,sans-serif">Hi,</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Greetings from Solugenix!!!</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">My Name is Sai Kumar, working as &quot;Recuiter=
&quot; for
Solugenix.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Solugenix</b> is an information technology s=
ervices firm
that has a rich history of providing comprehensive technology services and
solutions for more than four decades. Since 1969, <b>Solugenix Corporation<=
/b>
has been fulfilling the IT services needs of some of the most respected glo=
bal
corporations in the U.S. </p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">We found your resume in one of the job boards. =
Your skills
seem to be a good match for the position description I have attached below.
Please send your resume to <a href=3D"mailto:sai.nakka@solugenix.com" style=
=3D"color:rgb(5,99,193)">sai.nakka@solugenix.com</a>=C2=A0
if you are interested in being considered for this opportunity. </p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans=
-serif">Even if you are not available, but
if you know someone who would fit this job, please don&#39;t hesitate to pa=
ss this
email on to them.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-IN">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Position Title: Salesforce Developer</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b><span lang=3D"EN-IN">Job
Location: Irvine, CA=C2=A0=C2=A0=C2=A0( Locals Preferred
)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Duration: <span class=3D"gmail-beelinedropdo=
wnnowidthview">Long
Term Contract </span>=C2=A0=C2=A0=C2=A0</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-IN">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-IN" style=3D"background:yellow=
">Notes from Client.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-IN" style=3D"background:yellow=
">Experience with migration from classic to
lighting of salesforce experience</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-IN" style=3D"background:yellow=
">Workflows and salesforce reports</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-IN" style=3D"background:yellow=
">Salesforce data loader</span><span lang=3D"EN-IN"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Segoe UI&quot;,sans-serif">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b><span style=3D"font-size:10pt;font-family:&q=
uot;Segoe UI&quot;,sans-serif">Notes</span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Immediate need for a Salesforce Developer to wo=
rk on PCS
Central</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Must be well versed with CRM systems and Salesf=
orce
specifically (with hands-on SF experience =E2=80=93 maybe some lightweight
configuration experience)</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Must have financial services experience (wealth=
 management
experience is a huge plus =E2=80=93 knowledge of/experience with client on-=
boarding,
client management)</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">This is a client facing role so this person mus=
t have
excellent communication skills. Will be spending some time in Irvine and LA=
.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span class=3D"gmail-beelinelabel">experience u=
sing Salesforce.com
(SFDC) required. Jira experience is preferred. </span><br>
<span class=3D"gmail-beelinelabel">Manage enhancements within SFDC, assist =
team on
projects, run/pull reports from SFDC. </span><span class=3D"gmail-beelinela=
bel"><span lang=3D"EN-IN"></span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Financial services experience (wealth managemen=
t experience
is a huge plus =E2=80=93 knowledge of/experience with client on-boarding, c=
lient
management)</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span class=3D"gmail-beelinelabel">Strong busin=
ess acumen and
communication skills.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Users are in LAO and the resource will be worki=
ng from
Irvine office, he will gather salesforce requirements or changes from users=
 and
work with technical team which is sitting in Irvine office</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">He will travel to Irvine on a need basis to pro=
vide training
to users and for UAT=E2=80=99s</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span class=3D"gmail-beelinelabel">Bachelor deg=
ree in related field is
preferred. </span><br>
<span class=3D"gmail-beelinelabel">=C2=A0</span>-Reviews, analyzes, and eva=
luates
business systems and user needs. <span lang=3D"EN-IN"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">-Documents requirements, defines scope and obje=
ctives, and
formulates systems to parallel overall business strategies. </p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">-Requires at least 7 years of experience.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Thanks and Regards,</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<table class=3D"gmail-MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpa=
dding=3D"0" style=3D"border-collapse:collapse">
 <tbody><tr style=3D"height:87.75pt">
  <td width=3D"217" style=3D"width:162.6pt;border-top:none;border-bottom:no=
ne;border-left:none;border-right:1pt solid rgb(166,166,166);padding:0in 5.4=
pt;height:87.75pt">
  <p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;margin=
:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><span styl=
e=3D"font-size:10pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:rgb(6=
4,64,64)"><img border=3D"0" width=3D"120" height=3D"120" style=3D"height: 1=
.25in; width: 1.25in;" alt=3D"cid:image006.png@01D4BD76.95F0E4D0"></span></=
p>
  </td>
  <td width=3D"266" style=3D"width:199.2pt;padding:0in 5.4pt;height:87.75pt=
">
  <p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><span style=3D"font-size:14pt;color:black">Sa=
i Kumar,</span></p>
  <p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><b><span style=3D"font-size:10pt;font-family:=
&quot;Segoe UI&quot;,sans-serif;color:rgb(64,64,64)">Recruiter</span></b></=
p>
  <p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><b><span style=3D"color:rgb(64,64,64)">=C2=A0=
</span></b></p>
  <p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><b><span style=3D"color:rgb(0,176,240)">Prima=
ry:</span></b><span style=3D"color:rgb(64,64,64)"> </span><span lang=3D"EN-=
IN">949-468-0052
  </span></p>
  <p class=3D"MsoNormal" style=3D"line-height:105%;margin:0in 0in 0.0001pt;=
font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"color:rgb(=
0,176,240)">Internal Extension:</span></b> 1009<span style=3D"color:rgb(38,=
38,38)"></span></p>
  <p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><b><span style=3D"font-size:10pt;font-family:=
&quot;Segoe UI&quot;,sans-serif;color:rgb(0,176,240)">Email:</span></b><spa=
n style=3D"font-size:10pt;font-family:&quot;Segoe UI&quot;,sans-serif;color=
:rgb(64,64,64)"> </span><span style=3D"color:rgb(64,64,64)"><a href=3D"mail=
to:sai.nakka@solugenix.com%20@solugenix.com" style=3D"color:rgb(5,99,193)">=
sai.nakka@solugenix.com
  </a></span><span style=3D"font-size:10pt;font-family:&quot;Segoe UI&quot;=
,sans-serif;color:rgb(64,64,64)"></span></p>
  </td>
 </tr>
 <tr style=3D"height:30.6pt">
  <td width=3D"217" style=3D"width:162.6pt;padding:0in 5.4pt;height:30.6pt"=
>
  <p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;margin=
:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><span styl=
e=3D"font-size:9pt;font-family:&quot;Open Sans&quot;;color:rgb(0,148,201)">=
Delivering on
  business promises for 50 years</span><span style=3D"font-size:10pt;font-f=
amily:&quot;Segoe UI&quot;,sans-serif;color:rgb(64,64,64)"></span></p>
  </td>
  <td width=3D"266" style=3D"width:199.2pt;padding:0in 5.4pt;height:30.6pt"=
>
  <p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><a href=3D"https://www.facebook.com/Solugenix=
" style=3D"color:rgb(5,99,193)"><span style=3D"font-size:10pt;font-family:&=
quot;Segoe UI&quot;,sans-serif;color:rgb(64,64,64);text-decoration-line:non=
e"><img border=3D"0" width=3D"24" height=3D"24" style=3D"height: 0.25in; wi=
dth: 0.25in;" alt=3D"cid:image002.png@01D0C49A.9EEF1260"></span></a>=C2=A0 =
<a href=3D"https://www.linkedin.com/company/solugenix" style=3D"color:rgb(5=
,99,193)"><span style=3D"font-size:10pt;font-family:&quot;Segoe UI&quot;,sa=
ns-serif;color:rgb(64,64,64);text-decoration-line:none"><img border=3D"0" w=
idth=3D"24" height=3D"24" style=3D"height: 0.25in; width: 0.25in;" alt=3D"c=
id:image003.png@01D0C49A.9EEF1260"></span></a><span style=3D"font-size:10pt=
;font-family:&quot;Segoe UI&quot;,sans-serif;color:rgb(64,64,64)">=C2=A0 </=
span><a href=3D"https://twitter.com/solugenix" style=3D"color:rgb(5,99,193)=
"><span style=3D"font-size:10pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:rgb(64,64,64);text-decoration-line:none"><img border=3D"0" width=3D"=
24" height=3D"24" style=3D"height: 0.25in; width: 0.25in;" alt=3D"cid:image=
004.png@01D0C49A.9EEF1260"></span></a><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:rgb(64,64,64)">=C2=A0 </span><a =
href=3D"https://www.youtube.com/user/solugenix" style=3D"color:rgb(5,99,193=
)"><span style=3D"font-size:10pt;font-family:&quot;Segoe UI&quot;,sans-seri=
f;color:rgb(64,64,64);text-decoration-line:none"><img border=3D"0" width=3D=
"24" height=3D"24" style=3D"height: 0.25in; width: 0.25in;" alt=3D"cid:imag=
e005.png@01D0C49A.9EEF1260"></span></a><span style=3D"font-size:10pt;font-f=
amily:&quot;Segoe UI&quot;,sans-serif;color:rgb(64,64,64)"></span></p>
  </td>
 </tr>
</tbody></table>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:8pt">Your employment w=
ith the
Company will be on an at-will basis such that both you and the Company have=
 the
right to terminate the employment relationship at any time with or without
notice.=C2=A0 Nothing in this e-mail should be construed as creating any
guaranteed length of employment.=C2=A0 This email is not intended to be a
solicitation. It is targeted at recruiting &amp; consulting professionals. =
If
you have received this in error, please accept our apologies &amp; reply wi=
th
REMOVE as subject to be removed from our mailing list. We regret any
inconvenience caused. </span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p></div>

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
om/d/msgid/linux-ntb/CAAQxFq7-veggjHY-%2Bh%3DnRosKeeh5P--sLxnOTu4JekKBjQ7_2=
g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CAAQxFq7-veggjHY-%2Bh%3DnRosKeeh5P--sLxnOTu4Jek=
KBjQ7_2g%40mail.gmail.com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

--00000000000066061b058906b3d9--
