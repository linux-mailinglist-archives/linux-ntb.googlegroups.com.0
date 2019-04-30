Return-Path: <linux-ntb+bncBD655AMIV4FRB4UTULTAKGQEP47TSUQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D88CFF11
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Apr 2019 19:46:27 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id w200sf403416oiw.1
        for <lists+linux-ntb@lfdr.de>; Tue, 30 Apr 2019 10:46:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556646386; cv=pass;
        d=google.com; s=arc-20160816;
        b=jnVLmpIVwt6Gb0Ub71sNXSn35bIi02vOHR6OEqTY20rWRgQ5huT1liz0fpj+rY8uxL
         UvdjS7ZkVLE4zvb3T/FyvjFKtI3suu4h8/5hSqJEOW7QO9HFaBONvk6WNrHYSahVqKM4
         gVWWO4KNbcr+pjcA+03joT3GGyWwU6KAvTKAOre+GrWbEqNzwn6j/9AWSPdlCuWMvWjJ
         bATyBCh13zaEAGxx0M0JfKsMhLENUAyFGvsLYnmrrUpUm6Jtxj9eBnr7psivkFthO3OY
         gJEOwm04uQugGFwv6rZuUplDHzpzj8XWdKJpCNxtEKGZfg3+A8cWsOT97V3ycwCFvZz6
         hNRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=RQZcMKytDc2//Ij5pUi6QmhmDub8Bz4YaQVDP+4tybc=;
        b=fqczRJ+UXHaxOpIjNxiGkwXN6T0SBhvCp9GJzUuWLkhofqYkaXQINWXVkQNdPnFna/
         JpgPyREvKJWLSFFHx+5nAqQ6umTWResuTe1vbXQo4ZWY5uVr0k494MlXHlpxlJ94DKjH
         xPbvyRiu0pxqyUSx3cgOskxPgSdLZDuf9skduMUZavMTKVfLBTZgr0zV12vhFLENTdS3
         1ZQM0ym5vXEChKHO/QvdlngWe9ZTpLoYad1o/XvPDOsQSdThvEXTYnrlyedM8pq1CUEX
         8J9SDS/mHErak5c/ZEujHyUimmvhrScI3dJt2DyixBuBTHDw+ofTxV8jySUCCNZgR4PZ
         ktLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AmZwnyFn;
       spf=pass (google.com: domain of irfankhan.performancesoftech@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=irfankhan.performancesoftech@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQZcMKytDc2//Ij5pUi6QmhmDub8Bz4YaQVDP+4tybc=;
        b=a7XYm8o7+QjF0/RgOSQMYJwWHM8Jg2uq6wy7NylXsRwawpvu+YjFGN3/T7xnUvZ0pT
         +WnCSJga4i5DnvxB6HkwhKqNQ3O830QQoEzprPqKt0xcElfAVA+xXX6SwiCVDAwOsLrV
         PqIO6peFD7fbQBSw1g71iEXs5AqFCX+WWmRcnykVkus+IcDQnKhi9qBK4OJKKmjSrpIB
         EYZh9X8HorEKQzBZJ515zeRPrRm1JZemRADEugrm1gMieB/HZp2hj1ZB5zw3ZtGstH4x
         L2EtgzCJdle7kgvXG4u4yUQzVURiOWcy4jitmGg4ygq19MmieKLT83c58H6LW47KmQSO
         bA3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RQZcMKytDc2//Ij5pUi6QmhmDub8Bz4YaQVDP+4tybc=;
        b=XjiECTAYgXhJqkuX8J0y8eb+AfZe5P244AO1Ap6bfb7S6j6BdZdptVq5go4Js3ZDJj
         TwR1mzx5ptilp4CHpWR/MtE1YYvCOGcXJmgHNNDsNXpKGDgOzNADjuVUotReM+CRZLwL
         83Ssn7AaizMz/sfgqEeOq1iZB1cgVl2MpewyHT2rdWI7+YdnDARFjHltMQ31A84EKv0a
         y2vYuLzyzD886Bgh0eTz7PdqgXHMUItJnguiOsodFpHMMDbJFuBuj6gdkQySD4eh30vs
         5uYHC/iWd25JIm/fVE3HDZl7YATJ0U4NT56v2ZnK7PR/EAdnKP40TERfJZByu3mSYlxf
         gVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RQZcMKytDc2//Ij5pUi6QmhmDub8Bz4YaQVDP+4tybc=;
        b=WOLJbWJATuHQtBKipYgd6/mLg9gBWbnZLrq2z5jsOndfwQXZBy+TNnFDDWZffNApcx
         6fwWFiv9i4K4HyBn7cGqOhZBUtT4uILAo4yWDoam+OWdtLH3XtDKuvh1Iqlyu1tRzr1x
         HpK21pCxL1V0/ccYQo+9BywgJoQdDDRRVoXKDchgMhpDEWvDeq1FZFrpEo+WpPxChgk+
         Siy2LqHC8iJGFniaSeO7AdhWVaISym4S2MVYfB7+79ObAFAqV8lEb/pXKXspgFVaH7ad
         /PSQDl/fnqX39JPY5SF1n+BLyJEMzXawMNijqPCj68jpi3vLCPVSQGAQ1ZRAjercYDZR
         sRGg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXL9dGTsqUd0VCQrhHiDM6I+UhyJMa/Y6rNiARs4cQuIFUgkRrE
	Yk2ZuUxH9tV/NdSZY0DEPa8=
X-Google-Smtp-Source: APXvYqwvnZmaRPLpy7pMcvulwkmZwcneZ3mDR5J4KJ/AXECtn1eM8+7ZenYpEiq9CSS0vkluept0pg==
X-Received: by 2002:aca:c542:: with SMTP id v63mr3876851oif.1.1556646386112;
        Tue, 30 Apr 2019 10:46:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:6b08:: with SMTP id g8ls400520otp.16.gmail; Tue, 30 Apr
 2019 10:46:24 -0700 (PDT)
X-Received: by 2002:a9d:32c7:: with SMTP id u65mr42761235otb.320.1556646384023;
        Tue, 30 Apr 2019 10:46:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556646384; cv=none;
        d=google.com; s=arc-20160816;
        b=YroFFoog6EiOGvBLu+O7um1m0dHwx+EEKGFwxrgU24m8PIAHQl/N3EeZvvHQdAk7pr
         nrGhChIgHUdmNLkjGHwcsODxfWykzaDsjQf/CA4xpkfH3yFDDXZ3upcKdj89mYPYhYSV
         ruxVLCjSqPeOVCjmTf3JY+GQdT0cOjgDxVdKXX4K6VtEMdep2yqsi9HWSvQsBmiaUacx
         xd84iVhYCO1Fbb6WtVLRF6WFjJ1yaOw5Sc4fxAvUH6OkvXGh9jaQaZsNUNPTW2mxSlCX
         bDBXpcH49MiA9dgT1+8CcAEWC9dCrvgbZAXtOkqsKE/65FUOQa9YAwi8XQ4H9+bUTHtO
         9+IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=06HUTdeG4L8nh31BQawpm0kuW7aH2x6tWTM+s7dyvc0=;
        b=MxheK6eJ73z/LPK12x3XaWviQ/fuY6mrkgmhYNMfRYWDWF4xN5rVOnasKnbnIHOoex
         hWdu0sXbS5IojZU9f4Xs8Z4rBWR8Weo/ui/CQcEGgmliznGcA7oHC2yQKO+dZLYc0lqb
         fN9pWbojmJlDke8x9t6g3ygmw7a+X+cBO57jIb79+G2HFpIXP5fC4ZYByM6UBB/MFwcw
         Lla3h0QYXOcRCbJQ1ZTf5NoHDtsU/CCIZ0IVaBDYhFgDJwH2/H0XSqyhOLljDQC1NK5k
         lPl+8r/KiLisfsh6OOdqjFalRFWZHTplHtGsd1i93NL0mJWV1yKbB/JSpzUan2TTDqno
         AxfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AmZwnyFn;
       spf=pass (google.com: domain of irfankhan.performancesoftech@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=irfankhan.performancesoftech@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id j81si2146581oia.5.2019.04.30.10.46.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Apr 2019 10:46:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of irfankhan.performancesoftech@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Received: by mail-oi1-x22c.google.com with SMTP id l1so10120065oib.0
        for <linux-ntb@googlegroups.com>; Tue, 30 Apr 2019 10:46:24 -0700 (PDT)
X-Received: by 2002:aca:d4cf:: with SMTP id l198mr4071426oig.137.1556646383229;
 Tue, 30 Apr 2019 10:46:23 -0700 (PDT)
MIME-Version: 1.0
From: Irfan Khan <irfankhan.performancesoftech@gmail.com>
Date: Tue, 30 Apr 2019 23:16:24 +0530
Message-ID: <CAFj+=AV0-5qNV48NwGCzwNoZRD2_+-YSVgf=aB80yO6f=DAmdg@mail.gmail.com>
Subject: Senior Dynamics CRM Consultant / Raleigh, NC
To: Irfan khan <irfan.khan@performancesoftech.com>
Content-Type: multipart/alternative; boundary="000000000000b6b2260587c2fa63"
X-Original-Sender: irfankhan.performancesoftech@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AmZwnyFn;       spf=pass
 (google.com: domain of irfankhan.performancesoftech@gmail.com designates
 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=irfankhan.performancesoftech@gmail.com;
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

--000000000000b6b2260587c2fa63
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Senior Dynamics CRM Consultant

Consulting

Raleigh, NC


looking for a *Senior Dynamics CRM Consultant* to join our team for of one
of our critical client relationships. The end customer whom you=E2=80=99ll =
be
consulting is a F1000 organization. This is an exciting opportunity for
someone who brings strong business acumen, strong Dynamics CE (CRM)
cloud skills
and exceptional technical abilities. This engagement has a defined
timeline where you'll be presenting solutions & migration strategies to a
range of technical & non-technical audiences. You=E2=80=99ll be providing s=
ervices
for a range of complex requirements where you are the subject matter expert
the room is looking to for guidance, education & adherence to best
practices. It=E2=80=99s a dynamic & challenging role best suited for curiou=
s,
talented Consultants seeking to take their skill sets to the next level &
beyond.

*TRAVEL:* This is approximately an 8-month engagement. Typically, you=E2=80=
=99ll be
on-site at the customer location in Raleigh, NC. from Mon-Fri each
week. All pre-approved travel expense will be reimbursed.

*Scope of Work*

   - Dynamics CE for Sales - lead, opportunity, quote, account mgmt., sales
   planning & forecasting
   - Internal and external partner sales - significant use of the partner
   portal.
   - High # of integrations - Complexity with MDM and CPQ (configure
   /price/quote) tools also being upgraded with CE implementation.=EF=BB=BF

*Required Skills and Experience*

   - Previous Dynamics Partner Portal experience
   - CE for Sales business process
   - Extensive experience with large Enterprise customers (global preferred=
)
   - Ability to handle customer critical issues & work in demanding
   situations. Perform self-directed learning in a rapidly changing
   environment. Capable of operating in a flexible team environment with
   minimal supervision
   - Able to build and deliver presentations to all client levels of
   personnel.

--=20
*Irfan Khan*
Resource Manager
irfan.khan@performancesoftech.com

Connect With Me on LinkedIn
<https://www.linkedin.com/in/irfanaliofficial/> [image:
=EF=91=86]G-Talk
O: +1 (785)380-7246

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAFj%2B%3DAV0-5qNV48NwGCzwNoZRD2_%2B-YSVgf%3DaB80yO6f%3DDAmdg%40m=
ail.gmail.com.
For more options, visit https://groups.google.com/d/optout.

--000000000000b6b2260587c2fa63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:times ne=
w roman,serif;font-size:small"><h2 style=3D"box-sizing:border-box;margin:0p=
x 0px 0in;padding:0px;direction:ltr;font-family:Arial;font-style:italic;fon=
t-size:11pt;border:none;vertical-align:baseline;color:rgb(0,0,0);line-heigh=
t:1;outline:none">Senior Dynamics CRM Consultant</h2><p style=3D"box-sizing=
:border-box;margin:0px 0px 0in;padding:0px;direction:ltr;font-family:Arial;=
font-weight:bold;font-size:11pt;border:none;font-style:italic;vertical-alig=
n:baseline;line-height:1;outline:none;color:rgb(0,0,0)">Consulting</p><p st=
yle=3D"box-sizing:border-box;margin:0px 0px 0in;padding:0px;direction:ltr;f=
ont-family:Arial;font-weight:bold;font-size:11pt;border:none;font-style:ita=
lic;vertical-align:baseline;line-height:1;outline:none;color:rgb(0,0,0)">Ra=
leigh, NC</p><p style=3D"box-sizing:border-box;margin:0px 0px 0in;padding:0=
px;direction:ltr;font-family:Arial;font-weight:bold;font-size:11pt;border:n=
one;font-style:italic;vertical-align:baseline;line-height:1;outline:none;co=
lor:rgb(0,0,0)"><br></p><p style=3D"box-sizing:border-box;margin:0px 0px 0i=
n;padding:0px;direction:ltr;font-family:Arial;font-weight:bold;font-size:11=
pt;border:none;font-style:italic;vertical-align:baseline;line-height:1;outl=
ine:none;color:rgb(0,0,0)"><span id=3D"gmail-j_id0:j_id31:j_id32:j_id50:j_i=
d60" style=3D"box-sizing:border-box;border:none;font-weight:inherit;font-st=
yle:inherit;font-size:15px;font-family:inherit;vertical-align:baseline;padd=
ing:0px;margin:0px;outline:none"><span id=3D"gmail-j_id0:j_id31:j_id32:j_id=
50:j_id61" style=3D"box-sizing:border-box;border:none;font-weight:inherit;f=
ont-style:inherit;font-family:inherit;vertical-align:baseline;padding:0px;m=
argin:0px;outline:none"></span></span></p><table class=3D"gmail-htmlDetailE=
lementTable" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"box-=
sizing:border-box;background:rgb(255,255,255);margin:0px 0px 1.4em;border:n=
one;font-weight:inherit;font-style:inherit;font-size:15px;font-family:inher=
it;vertical-align:middle;padding:0px;border-spacing:0px;width:1267px;outlin=
e:none"><tbody style=3D"box-sizing:border-box;border:none;font-weight:inher=
it;font-style:inherit;font-size:15px;font-family:inherit;vertical-align:bas=
eline;padding:0px;margin:0px;outline:none"><tr style=3D"box-sizing:border-b=
ox;border:none;font-weight:inherit;font-style:inherit;font-size:15px;font-f=
amily:inherit;vertical-align:baseline;padding:0px;margin:0px;outline:none">=
<td style=3D"box-sizing:border-box;margin:0px;padding:0px;direction:ltr;bor=
der-top:0px;border-right:0px;border-bottom:none;border-left:0px;font-weight=
:400;font-style:inherit;font-size:0.875em;font-family:Raleway,sans-serif;ve=
rtical-align:top;text-align:left;color:rgb(34,34,34);display:table-cell;lin=
e-height:1.125em;outline:none;min-height:35px"><div class=3D"gmail-sfdc_ric=
htext" id=3D"gmail-j_id0:j_id31:j_id32:j_id50:j_id61j_id0:j_id31:j_id32:j_i=
d50:j_id61_00N3600000S9vxl_div" style=3D"box-sizing:border-box;margin:0px;p=
adding:0px;direction:ltr;border:none;font-weight:inherit;font-style:inherit=
;font-size:13.6667px;font-family:Arial,Helvetica,sans-serif;vertical-align:=
baseline;display:block;float:none;height:auto;line-height:1;color:rgb(0,0,0=
);outline:none"><p style=3D"box-sizing:border-box;margin:0px 0px 1em;paddin=
g:0px;direction:ltr;font-family:Arial;font-weight:inherit;font-size:13.6667=
px;line-height:1;border:none;font-style:inherit;vertical-align:baseline;dis=
play:block;float:none;height:auto;outline:none;color:rgb(0,0,0)"><span styl=
e=3D"box-sizing:border-box;border:none;font-weight:inherit;font-style:inher=
it;font-size:10pt;font-family:arial,sans-serif;vertical-align:baseline;padd=
ing:0px;margin:0px;color:rgb(62,62,60);outline:none">looking for a<span>=C2=
=A0</span></span><b style=3D"box-sizing:border-box;font-weight:bold;line-he=
ight:inherit"><u style=3D"box-sizing:border-box">Senior Dynamics CRM Consul=
tant</u></b><span style=3D"box-sizing:border-box;border:none;font-weight:in=
herit;font-style:inherit;font-size:10pt;font-family:arial,sans-serif;vertic=
al-align:baseline;padding:0px;margin:0px;color:rgb(62,62,60);outline:none">=
=C2=A0to join our team for of one of our critical client relationships. The=
 end customer=C2=A0whom you=E2=80=99ll be consulting is a=C2=A0F1000 organi=
zation.=C2=A0This is an exciting opportunity for someone who brings strong =
business acumen, strong<span>=C2=A0</span></span><span style=3D"box-sizing:=
border-box;border:none;font-weight:inherit;font-style:inherit;font-size:10p=
t;font-family:arial,sans-serif;vertical-align:baseline;padding:0px;margin:0=
px;outline:none">Dynamics CE (CRM) cloud</span><span style=3D"box-sizing:bo=
rder-box;border:none;font-weight:inherit;font-style:inherit;font-size:10pt;=
font-family:arial,sans-serif;vertical-align:baseline;padding:0px;margin:0px=
;color:rgb(62,62,60);outline:none"><span>=C2=A0</span>skills and=C2=A0excep=
tional technical abilities.=C2=A0This engagement has a=C2=A0defined timelin=
e=C2=A0where you&#39;ll be presenting solutions &amp; migration strategies =
to a range of technical &amp; non-technical audiences. You=E2=80=99ll be pr=
oviding services for a range of complex requirements where you are the subj=
ect matter expert the room is looking to for guidance, education &amp; adhe=
rence to best practices. It=E2=80=99s a dynamic &amp; challenging role best=
 suited for curious, talented Consultants seeking to take their skill sets =
to the next level &amp; beyond.</span></p><p style=3D"box-sizing:border-box=
;margin:0px 0px 1em;padding:0px;direction:ltr;font-family:Arial;font-weight=
:inherit;font-size:13.6667px;line-height:1;border:none;font-style:inherit;v=
ertical-align:baseline;display:block;float:none;height:auto;outline:none;co=
lor:rgb(0,0,0)"><b style=3D"box-sizing:border-box;font-weight:bold;line-hei=
ght:inherit">TRAVEL:</b><span style=3D"box-sizing:border-box;border:none;fo=
nt-weight:inherit;font-style:inherit;font-size:10pt;font-family:arial,sans-=
serif;vertical-align:baseline;padding:0px;margin:0px;color:rgb(62,62,60);ou=
tline:none">=C2=A0This is approximately an 8-month engagement. Typically, y=
ou=E2=80=99ll be on-site at the customer location in Raleigh, NC. from Mon-=
Fri=C2=A0each week.=C2=A0All pre-approved travel expense will be reimbursed=
.</span></p><p style=3D"box-sizing:border-box;margin:0px 0px 1em;padding:0p=
x;direction:ltr;font-family:Arial;font-weight:inherit;font-size:13.6667px;l=
ine-height:1;border:none;font-style:inherit;vertical-align:baseline;display=
:block;float:none;height:auto;outline:none;color:rgb(0,0,0)"><b style=3D"bo=
x-sizing:border-box;font-weight:bold;line-height:inherit"><u style=3D"box-s=
izing:border-box">Scope of Work</u></b></p><ul style=3D"box-sizing:border-b=
ox;margin:1em 1em 1em 40px;padding:0px;direction:ltr;font-size:15px;line-he=
ight:1.6;list-style:none;font-family:inherit;border:none;font-weight:inheri=
t;font-style:inherit;vertical-align:baseline;outline:none"><li style=3D"box=
-sizing:border-box;margin:0px;padding:0px;direction:ltr;border:none;font-we=
ight:inherit;font-style:inherit;vertical-align:baseline;line-height:14.6667=
px;list-style:disc outside;font-size:11pt;font-family:Arial;outline:none;co=
lor:rgb(51,51,51)"><span style=3D"box-sizing:border-box;border:none;font-we=
ight:inherit;font-style:inherit;font-size:10pt;font-family:arial,sans-serif=
;vertical-align:baseline;padding:0px;margin:0px;color:rgb(62,62,60);outline=
:none">Dynamics CE for Sales - lead, opportunity, quote, account mgmt., sal=
es planning &amp; forecasting</span></li><li style=3D"box-sizing:border-box=
;margin:0px;padding:0px;direction:ltr;border:none;font-weight:inherit;font-=
style:inherit;vertical-align:baseline;line-height:14.6667px;list-style:disc=
 outside;font-size:11pt;font-family:Arial;outline:none;color:rgb(51,51,51)"=
><span style=3D"box-sizing:border-box;border:none;font-weight:inherit;font-=
style:inherit;font-size:10pt;font-family:arial,sans-serif;vertical-align:ba=
seline;padding:0px;margin:0px;color:rgb(62,62,60);outline:none">Internal an=
d external partner sales - significant use of the partner portal.</span></l=
i><li style=3D"box-sizing:border-box;margin:0px;padding:0px;direction:ltr;b=
order:none;font-weight:inherit;font-style:inherit;vertical-align:baseline;l=
ine-height:14.6667px;list-style:disc outside;font-size:11pt;font-family:Ari=
al;outline:none;color:rgb(51,51,51)"><span style=3D"box-sizing:border-box;b=
order:none;font-weight:inherit;font-style:inherit;font-size:10pt;font-famil=
y:arial,sans-serif;vertical-align:baseline;padding:0px;margin:0px;color:rgb=
(62,62,60);outline:none">High # of integrations - Complexity with MDM and C=
PQ (configure /price/quote) tools also being upgraded with CE implementatio=
n.=EF=BB=BF</span></li></ul><p style=3D"box-sizing:border-box;margin:0px 0p=
x 1em;padding:0px;direction:ltr;font-family:Arial;font-weight:inherit;font-=
size:13.6667px;line-height:1;border:none;font-style:inherit;vertical-align:=
baseline;display:block;float:none;height:auto;outline:none;color:rgb(0,0,0)=
"><b style=3D"box-sizing:border-box;font-weight:bold;line-height:inherit"><=
u style=3D"box-sizing:border-box">Required Skills and Experience</u></b></p=
><ul style=3D"box-sizing:border-box;margin:1em 1em 1em 40px;padding:0px;dir=
ection:ltr;font-size:15px;line-height:1.6;list-style:none;font-family:inher=
it;border:none;font-weight:inherit;font-style:inherit;vertical-align:baseli=
ne;outline:none"><li style=3D"box-sizing:border-box;margin:0px;padding:0px;=
direction:ltr;border:none;font-weight:inherit;font-style:inherit;vertical-a=
lign:baseline;line-height:14.6667px;list-style:disc outside;font-size:11pt;=
font-family:Arial;outline:none;color:rgb(51,51,51)"><span style=3D"box-sizi=
ng:border-box;border:none;font-weight:inherit;font-style:inherit;font-size:=
10pt;font-family:arial,sans-serif;vertical-align:baseline;padding:0px;margi=
n:0px;outline:none">Previous Dynamics Partner Portal experience</span></li>=
<li style=3D"box-sizing:border-box;margin:0px;padding:0px;direction:ltr;bor=
der:none;font-weight:inherit;font-style:inherit;vertical-align:baseline;lin=
e-height:14.6667px;list-style:disc outside;font-size:11pt;font-family:Arial=
;outline:none;color:rgb(51,51,51)"><span style=3D"box-sizing:border-box;bor=
der:none;font-weight:inherit;font-style:inherit;font-size:10pt;font-family:=
arial,sans-serif;vertical-align:baseline;padding:0px;margin:0px;outline:non=
e">CE for Sales business process</span></li><li style=3D"box-sizing:border-=
box;margin:0px;padding:0px;direction:ltr;border:none;font-weight:inherit;fo=
nt-style:inherit;vertical-align:baseline;line-height:14.6667px;list-style:d=
isc outside;font-size:11pt;font-family:Arial;outline:none;color:rgb(51,51,5=
1)"><span style=3D"box-sizing:border-box;border:none;font-weight:inherit;fo=
nt-style:inherit;font-size:10pt;font-family:arial,sans-serif;vertical-align=
:baseline;padding:0px;margin:0px;outline:none">Extensive experience with la=
rge Enterprise customers (global preferred)</span></li><li style=3D"box-siz=
ing:border-box;margin:0px;padding:0px;direction:ltr;border:none;font-weight=
:inherit;font-style:inherit;vertical-align:baseline;line-height:14.6667px;l=
ist-style:disc outside;font-size:11pt;font-family:Arial;outline:none;color:=
rgb(51,51,51)"><span style=3D"box-sizing:border-box;border:none;font-weight=
:inherit;font-style:inherit;font-size:10pt;font-family:arial,sans-serif;ver=
tical-align:baseline;padding:0px;margin:0px;outline:none">Ability to handle=
 customer critical issues &amp; work in demanding situations. Perform self-=
directed learning in a rapidly changing environment. Capable of operating i=
n a flexible team environment with minimal supervision</span></li><li style=
=3D"box-sizing:border-box;margin:0px;padding:0px;direction:ltr;border:none;=
font-weight:inherit;font-style:inherit;vertical-align:baseline;line-height:=
14.6667px;list-style:disc outside;font-size:11pt;font-family:Arial;outline:=
none;color:rgb(51,51,51)"><span style=3D"box-sizing:border-box;border:none;=
font-weight:inherit;font-style:inherit;font-size:10pt;font-family:arial,san=
s-serif;vertical-align:baseline;padding:0px;margin:0px;outline:none">Able t=
o build and deliver presentations to all client levels of personnel.</span>=
</li></ul></div></td></tr></tbody></table></div>-- <br><div dir=3D"ltr" cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"font-size:small"><font f=
ace=3D"times new roman, serif" size=3D"2" color=3D"#990000"><b>Irfan Khan</=
b></font><div style=3D"font-family:arial,sans-serif;font-size:12.8px"><font=
 face=3D"times new roman, serif" size=3D"2" style=3D"color:rgb(136,136,136)=
">Resource Manager</font></div><div style=3D"font-family:arial,sans-serif;f=
ont-size:12.8px"><font face=3D"times new roman, serif" size=3D"2"><font col=
or=3D"#999999"><span style=3D"white-space:nowrap"><a href=3D"mailto:irfan.k=
han@performancesoftech.com" style=3D"color:rgb(17,85,204)" target=3D"_blank=
">irfan.khan@performancesoftech.com</a>=C2=A0</span></font><div style=3D"co=
lor:rgb(153,153,153);white-space:nowrap;display:inline"></div></font><div s=
tyle=3D"color:rgb(0,0,0);font-family:&quot;times new roman&quot;,serif;disp=
lay:inline;font-size:small"></div><font face=3D"times new roman, serif" siz=
e=3D"2"><br><span style=3D"color:rgb(0,0,0)">Connect With Me on=C2=A0</span=
><a href=3D"https://www.linkedin.com/in/irfanaliofficial/" style=3D"color:r=
gb(34,34,34)" target=3D"_blank">LinkedIn</a><span style=3D"color:rgb(0,0,0)=
">=C2=A0<img src=3D"https://ssl.gstatic.com/mail/emoji/v7/png48/emoji_u1f44=
6.png" alt=3D"=EF=91=86" style=3D"margin:0px 0.2ex;vertical-align:middle;he=
ight:24px;width:24px"></span></font><span style=3D"color:rgb(153,153,153);f=
ont-family:&quot;times new roman&quot;,serif;font-size:small;white-space:no=
wrap">G-Talk<span style=3D"color:rgb(0,0,0)"></span></span><span style=3D"c=
olor:rgb(0,0,0);font-family:&quot;times new roman&quot;,serif;font-size:sma=
ll"></span></div><div style=3D"font-family:arial,sans-serif;font-size:12.8p=
x"><font face=3D"times new roman, serif" size=3D"2"><font color=3D"#0000ff"=
>O:</font><font color=3D"#0000ff">=C2=A0+1=C2=A0</font><font color=3D"#0000=
ff">(785)380-7246</font><br></font></div><div style=3D"font-family:arial,sa=
ns-serif;font-size:12.8px"><img src=3D"https://docs.google.com/uc?export=3D=
download&amp;id=3D0B1PUjVcXwtrNYldYblBtd0xXcFk&amp;revid=3D0B1PUjVcXwtrNSUJ=
LbVVBTGFCTjIzK2JPR3diUWJVdXlEVDU4PQ" width=3D"200" height=3D"44" style=3D"f=
ont-family:&quot;times new roman&quot;,serif;font-size:small"></div></div><=
/div></div></div></div></div></div></div></div></div></div></div>

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
om/d/msgid/linux-ntb/CAFj%2B%3DAV0-5qNV48NwGCzwNoZRD2_%2B-YSVgf%3DaB80yO6f%=
3DDAmdg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/linux-ntb/CAFj%2B%3DAV0-5qNV48NwGCzwNoZRD2_%2B-YSVg=
f%3DaB80yO6f%3DDAmdg%40mail.gmail.com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

--000000000000b6b2260587c2fa63--
