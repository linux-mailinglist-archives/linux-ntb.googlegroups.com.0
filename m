Return-Path: <linux-ntb+bncBDI75TEARUGRBVF5WXTQKGQETY2KPLQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5A72CB91
	for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 18:16:21 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 68sf10505855otu.18
        for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 09:16:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559060180; cv=pass;
        d=google.com; s=arc-20160816;
        b=QT8Jtru6iKiH0jVyh9ANNKND1rJ6wQCuIc7tDNnFCJp65JTDgXUkCWuQKf4MV2dYev
         CGaiRgvucDBznOeSH6LpQXFe4QHFrCb+a37Js4oDZc9qJ5UGN1n4th4AH1If1KQezsD8
         B6s0qrvyFYlO5sLXxEqAu/pp1lE4fsYto2dnQcADaYgcyJYHjvz1atgdHMiZOB+ECmX9
         djF4M6lL5XgFAegxx+DpZ3BzjIE7ElGqCnHARqAcOE1Rf0HIrBEfPcaBeKRqYjOjTBmz
         bH1OXHeT6CVENHWfCfum5w9CK5rgxMdnmDNQPE/XEkb25HeEfQ+HT3Q1M9LZlK/SxwvJ
         3L+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dddWVPWIumJBLAMEe0viZlGhIouZGhAOfi0tlyF3zUA=;
        b=n5alEhbM9iPqsVpogLZhysAy9BQZz5e4EqHeZpP9gWn7yOcPbwb8BuRJBogi7Ez+El
         rq3NWt7ZQG23QyNXi5r1ICEL+YWf9dQdi+o2TGHQQNHSBmSxwFds+BLEEmNWft07aRwf
         z0NAJ2OVGvX8t7y6sYdECM60Tbpi2ASUgWJnxaRZ0fdOXgROgFk+2Yt8O9PL9+ITRHdv
         1tzHYIYuvlTe/ZpvdyupJxHRgcUj1m8JXkO2pid/DMRu0JpWzlxbm36a1NjPBBXifGJb
         bvtbKh++wvCT00t90A0g16Y68a3l5z+A2tpwSAqt6gt37qcYxRQy5rDFd4/knQL111GE
         qGuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O7b6wY71;
       spf=pass (google.com: domain of chris4all12345@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=chris4all12345@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dddWVPWIumJBLAMEe0viZlGhIouZGhAOfi0tlyF3zUA=;
        b=UPj1rDhW8xvgq8ysZ6Y8ReqCKRVjqaQ29HuTQTR4jg7WIWf2U+qob6ZDZcv9hT4dGY
         c1yV3NAytmxusP5mTdaNDMdV8NZlRAQalrNc2XH1MqTuhwKNekH54fFl1kng9DMSHSvh
         P2J6q0Gh/7RHcWAjwzDL4tQ/WMblLB0Rc3NDFasj3rFxP4DPJhRKA9WJ29RJQE2SoHgP
         V8E6pdGfmD1AkUM+xhreylZh7Y3Qqc/s+boiDH1jUw2RthLy5b5lEHbNLpX9wGHBYqXt
         01zziPPlEeF6T2CjEUpKWXRlQs81wvnObi3oGvSp90ZhfS1AVN8lyzwy7mDeH+0ZNAsk
         gutg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dddWVPWIumJBLAMEe0viZlGhIouZGhAOfi0tlyF3zUA=;
        b=mckc/z2TZO5Tnt7tFUUC3kQt4qTwaoRRTY/jFksHBOooQ8E21FoAdP8CILYuZlc3We
         hGogVRkazVaD7lspgOwxBUKtFpiya/3J0FfQcLBMVz8YU+Of06nR/D38SC08BzK3W0tr
         oZHj7ca7iShNwKMNLPdxgh41iewTIpm6dzyX4Y7OtunbvYv4toe8qJMKnlkOT65A5FfU
         yfGZbHQHTxPcl5yzBRhQd8pTeRkjAaHUzJ/+Or+8lLYmvwhJule6cxds3V+XWcw3b932
         xD4pomhCKHJ9VXvUfQefMgV67JE5gc+xtnj8AcQ18Den99iHz/RFcbvSGLd7Kb/PIE6g
         XPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dddWVPWIumJBLAMEe0viZlGhIouZGhAOfi0tlyF3zUA=;
        b=qB8OCuAme594XvQ08NerYON2dQqaJ9tEEA8csiomKlnXbvcSrDVPkZkBkhCF6Y8ej3
         Iif6Y2shLyl6cFDiaB2/UbN142naIrw4zsGnaBm40LFcZXFyviJ7mDgH1RVuPozFDWuM
         uEZKbf2I3MAAJ/X5rToPfy7F0ySawQEjoTLi+jfXux/l7J5w49b0VD7yl5H2nT20dSUt
         dD2ewT8NbrSUdi8H/Is6Yg1lbT6eAw8mhOC5IvSoQMKoQx4bz+znt4S5Vu3nGatx1sE4
         p13xX+ZpREmZVbiUJZhD/9KnFOPrcEhuAPE8Z8p6n1ulmbs3myRrmtNUFE9YZl4ZxGlI
         75/w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWL72KnsvRpwVqS/y2WhITnJhfCr3sj1GYJdqxrg11LYDPRF+tb
	ODow5XgG/oZquWvhQG6+tCI=
X-Google-Smtp-Source: APXvYqwTsEy1C/VeZKcPU1vR21zqNTXEHlleyuOHWM6Lbe4fF5kT89ZHyVCzPC9wNR+EGRY4a/7syQ==
X-Received: by 2002:a9d:224c:: with SMTP id o70mr31777979ota.261.1559060180235;
        Tue, 28 May 2019 09:16:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:ba2:: with SMTP id 31ls3566156oth.2.gmail; Tue, 28 May
 2019 09:16:19 -0700 (PDT)
X-Received: by 2002:a9d:7cd2:: with SMTP id r18mr28716otn.345.1559060179808;
        Tue, 28 May 2019 09:16:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559060179; cv=none;
        d=google.com; s=arc-20160816;
        b=G0K9CjEOh1Z2Kxn1q28BlsvhEIBVA02F7l/CCtJRLwfW9mo0ca6tz9uriktGl9/Jeg
         POb7YzmtAWTR4XIclQkSx9zdOWreoQiNFTnvcz31YUbccgqKPiCwCrf7rMcrFTt7cUOd
         sltIgLeu4L7DPXF+WJX7g99v54g+pWYTxv6iT675XkMMqR5Y/erAL4/6JvIzn7vXZXPb
         d2/3zx5H/Ikdn+sNDd3qOFdTO74C6/Ax6Z99ErXb09w0LOLGtaUIje/HXWx+sP5Z1Dt7
         yaRvKG8qhRSTrpbSUIn/8+J1wq5L4wkavgsaatVveiqnQVsIRtRliTE8zP0jAet6DEtP
         36ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=sI3I9RkW37xWuZrWK8En9OM7f/Mj+Gd3SfIG29n7Q4o=;
        b=TnOy7cx17Yygo9UaRjoU+ZCYayr6t/tscIdyhampw56I9x5MTaQB9ovwWNagTn6l9X
         ZMUtKaGs+HggaE9ZlcNSFRFUi9/B5y/34tG51HNkrl8U3vA8As76eHaI952UKcMGabq5
         vnGtidK1Uci5Bgdso/p64C0VRm8sAOjndJQpXDybsMO1o38wQ0Xl/487xwtOrM+kQLcc
         byrb8L11WWYO8U6/PJMK2DrBGpgp4+dWod9TialDmzxNHBvC5F1qBotYcOlJEQr6Oe7F
         hJd1G1gOrG+jcKUSuACtrvlnahvhJIoJXCS8Gn9N+TwmdTNUcmay5BhC8UaOw22YeD3o
         8EJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O7b6wY71;
       spf=pass (google.com: domain of chris4all12345@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=chris4all12345@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id 9si588383oti.2.2019.05.28.09.16.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 May 2019 09:16:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of chris4all12345@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id i125so21346779qkd.6
        for <linux-ntb@googlegroups.com>; Tue, 28 May 2019 09:16:19 -0700 (PDT)
X-Received: by 2002:a0c:b78a:: with SMTP id l10mr74542230qve.62.1559060179442;
 Tue, 28 May 2019 09:16:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ae38:0:0:0:0:0 with HTTP; Tue, 28 May 2019 09:16:18
 -0700 (PDT)
In-Reply-To: <06f801d51560$c64e1f70$52ea5e50$@com>
References: <06f801d51560$c64e1f70$52ea5e50$@com>
From: chris evans <chris4all12345@gmail.com>
Date: Tue, 28 May 2019 17:16:18 +0100
Message-ID: <CA+Pap5jYxic8ZGFwCkiEYYAzW1updgF3Hyq5Y5xAVwP6MnXkWw@mail.gmail.com>
Subject: Re: Seeking a ServiceNow Developer/Engineer for our client in the
 health insurance field!
To: Umashankar <uma@genisists.com>
Cc: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000002de1ae0589f4fc17"
X-Original-Sender: chris4all12345@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O7b6wY71;       spf=pass
 (google.com: domain of chris4all12345@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=chris4all12345@gmail.com;
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

--0000000000002de1ae0589f4fc17
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Need a private shopper in Los Angeles USA

On Tuesday, May 28, 2019, Umashankar <uma@genisists.com> wrote:

> Hi All,
>
>
>
> *Seeking a **ServiceNow Developer/Engineer for** our client in the health
> insurance field!*
>
> *Position:* ServiceNow Developer/Engineer
> *Location: *Durham North Carolina 27707
> *Term: *6 Months plus
>
>
>
> SENIOR ServiceNow DEVELOPER WITH 8+ YEARS.
>
>
>
> *Day-to-Day Responsibilities:*
>
> =C2=B7  Convert user stories into technical solutions.
>
> =C2=B7  Maintains technology currency and capacity planning in support of
> established SLAs.
>
> =C2=B7  Proactively provides information and ongoing consultation for IT =
and
> business areas as well as vendors directly or indirectly affected by
> ServiceNow Application.
>
> =C2=B7  Leads the requirement gathering sessions collaborating with IT
> stakeholders, service owners and partners.
>
> =C2=B7  Provides operational readiness through the engineering, planning,
> coordination, and execution of performance and tuning analysis, systems
> support, and incident and problem resolution.
>
> =C2=B7  Provides detailed guidance and consultation in solutioning produc=
tion
> incidents when required.
>
> =C2=B7  Collaborates with vendors on infrastructure designs to ensure the
> final product is what was architected or designed.
>
>
>
> *Is this a good fit? (Requirements):*
>
> =C2=B7  Bachelors degree and *8+ years of systems ServiceNow Developer *e=
xperience
> is required.
>
> =C2=B7  In lieu of degree, *10+ years of systems ServiceNow Developer*.
>
> =C2=B7  Direct experience in one or more of the following technical
> specialties: application development, application integration, Web
> Services, Scripting, and/or database programming.
>
> =C2=B7  Experience automating tasks associated with technical specialties=
.
>
> =C2=B7  Experience successfully leading ITSM projects and initiatives.
>
> =C2=B7  Experience in multiple technical specialties preferred.
>
> =C2=B7  *Experience in one or more of the following technologies (alignin=
g
> with relevant technical specialties): Integrating ServiceNow with other
> Enterprise Application via API, using REST/SOAP web services, Scripting
> Workflow, ServiceNow Discovery,*
>
> =C2=B7  Must be able to work independently and be self sufficient in defi=
ning
> and realizing infrastructure designs.
>
> =C2=B7  Team and customer service oriented, flexible and adaptable with p=
roven
> ability to solve problems in a collaborative and timely manner.
>
> =C2=B7  Solid background in data collection, analysis, and reporting.
>
> =C2=B7  Proven debugging skills
>
> =C2=B7  Excellent oral and written communication and presentation skills
>
> =C2=B7  Flexible and adaptable with focus on effectively managing change.
>
>
>
>
>
> *Thanks & Regards,*
>
> *R UMASHANKAR*
>
> *US IT Recruiter*
>
> *Contact: (315)320-3439*
>
> *Email: uma@genisists.com <uma@genisists.com>*
>
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to linux-ntb+unsubscribe@googlegroups.com.
> To post to this group, send email to linux-ntb@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/
> msgid/linux-ntb/06f801d51560%24c64e1f70%2452ea5e50%24%40com
> <https://groups.google.com/d/msgid/linux-ntb/06f801d51560%24c64e1f70%2452=
ea5e50%24%40com?utm_medium=3Demail&utm_source=3Dfooter>
> .
> For more options, visit https://groups.google.com/d/optout.
>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CA%2BPap5jYxic8ZGFwCkiEYYAzW1updgF3Hyq5Y5xAVwP6MnXkWw%40mail.gmai=
l.com.
For more options, visit https://groups.google.com/d/optout.

--0000000000002de1ae0589f4fc17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Need a private shopper in Los Angeles USA=C2=A0<br><br>On Tuesday, May 28, =
2019, Umashankar &lt;<a href=3D"mailto:uma@genisists.com">uma@genisists.com=
</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">








<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">

<div>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#222222;background:white"=
>Hi All,=C2=A0</span><span style=3D"font-size:12.0pt;font-family:&quot;Time=
s New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p=
>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><b><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222">=C2=A0</=
span></b><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><b><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222">Seeking =
a=C2=A0</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot;Verd=
ana&quot;,&quot;sans-serif&quot;;color:#222222">ServiceNow Developer/Engine=
er
for</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot;Times Ne=
w Roman&quot;,&quot;serif&quot;;color:#222222">=C2=A0our client in the heal=
th insurance field!</span></b><span style=3D"font-size:10.0pt;font-family:&=
quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222"><br>
<br>
<b>Position:</b>=C2=A0</span><span style=3D"font-size:10.0pt;font-family:&q=
uot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">ServiceNow Develope=
r/</span><span style=3D"font-size:10.0pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;;color:#222222">Engineer=C2=A0<br>
<b>Location:=C2=A0</b>Durham North Carolina 27707<br>
<b>Term:=C2=A0</b>6 Months plus</span><span style=3D"font-size:12.0pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u>=
<u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222">=C2=A0<u></=
u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222;background:y=
ellow">SENIOR ServiceNow DEVELOPER WITH 8+
YEARS.=C2=A0</span><span style=3D"font-size:12.0pt;font-family:&quot;Times =
New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Times New Roman&qu=
ot;,&quot;serif&quot;;color:#222222"><br>
<b>Day-to-Day Responsibilities:</b></span><span style=3D"font-size:12.0pt;f=
ont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222"><u>=
</u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Convert
user stories into technical solutions.</span><span style=3D"font-size:12.0p=
t;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222">=
<u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Maintains
technology currency and capacity planning in support of established SLAs.</=
span><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot=
;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Proactively
provides information and ongoing consultation for IT and business areas as =
well
as vendors directly or indirectly affected by ServiceNow Application.</span=
><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&q=
uot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Leads
the requirement gathering sessions collaborating with IT stakeholders, serv=
ice
owners and partners.</span><span style=3D"font-size:12.0pt;font-family:&quo=
t;Times New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Provides
operational readiness through the engineering, planning, coordination, and
execution of performance and tuning analysis, systems support, and incident=
 and
problem resolution.</span><span style=3D"font-size:12.0pt;font-family:&quot=
;Times New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></spa=
n></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Provides
detailed guidance and consultation in solutioning production incidents when
required.</span><span style=3D"font-size:12.0pt;font-family:&quot;Times New=
 Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Collaborates
with vendors on infrastructure designs to ensure the final product is what =
was
architected or designed.</span><span style=3D"font-size:12.0pt;font-family:=
&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u>=
</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222">=C2=A0</spa=
n><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><b><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222">Is this =
a good fit? (Requirements):</span></b><span style=3D"font-size:12.0pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u>=
<u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Bachelors
degree and=C2=A0<b>8+ years of systems ServiceNow Developer=C2=A0</b>experi=
ence
is required.</span><span style=3D"font-size:12.0pt;font-family:&quot;Times =
New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
In
lieu of degree,=C2=A0<b>10+ years of systems ServiceNow Developer</b>.</spa=
n><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Direct
experience in one or more of the following technical specialties: applicati=
on
development, application integration, Web Services, Scripting, and/or datab=
ase
programming.</span><span style=3D"font-size:12.0pt;font-family:&quot;Times =
New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Experience
automating tasks associated with technical specialties.</span><span style=
=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&qu=
ot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Experience
successfully leading ITSM projects and initiatives.</span><span style=3D"fo=
nt-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;co=
lor:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Experience
in multiple technical specialties preferred.</span><span style=3D"font-size=
:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#22=
2222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><b><span style=3D"font-size=
:10.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#22222=
2">Experience
in one or more of the following technologies (aligning with relevant techni=
cal
specialties): Integrating ServiceNow with other Enterprise Application via =
API,
using REST/SOAP web services, Scripting Workflow, ServiceNow Discovery,</sp=
an></b><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&qu=
ot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Must
be able to work independently and be self sufficient in defining and realiz=
ing
infrastructure designs.</span><span style=3D"font-size:12.0pt;font-family:&=
quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u><=
/span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Team
and customer service oriented, flexible and adaptable with proven ability t=
o
solve problems in a collaborative and timely manner.</span><span style=3D"f=
ont-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;c=
olor:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Solid
background in data collection, analysis, and reporting.</span><span style=
=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&qu=
ot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Proven
debugging skills</span><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span><=
/p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Excellent
oral and written communication and presentation skills</span><span style=3D=
"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;=
;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:0in;margin-l=
eft:47.25pt;margin-bottom:.0001pt;line-height:normal;background:white"><spa=
n style=3D"font-size:10.0pt;font-family:Symbol;color:#222222">=C2=B7</span>=
<span style=3D"font-size:7.0pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#222222">=C2=A0=C2=A0</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">=
Flexible
and adaptable with focus on effectively managing change.</span><span style=
=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&qu=
ot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222">=C2=A0<u></=
u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#222222">=C2=A0</span><sp=
an style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;=
serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><b><span style=3D"font-size:12.0pt;font-f=
amily:&quot;Cambria&quot;,&quot;serif&quot;;color:#222222">Thanks &amp; Reg=
ards,</span></b><span style=3D"font-size:12.0pt;font-family:&quot;Times New=
 Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><b><span style=3D"font-size:12.0pt;font-f=
amily:&quot;Cambria&quot;,&quot;serif&quot;;color:#222222">R UMASHANKAR</sp=
an></b><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&qu=
ot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><b><span style=3D"font-size:12.0pt;font-f=
amily:&quot;Cambria&quot;,&quot;serif&quot;;color:#222222">US IT Recruiter<=
/span></b><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman=
&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><b><span style=3D"font-size:12.0pt;font-f=
amily:&quot;Cambria&quot;,&quot;serif&quot;;color:#222222">Contact: (315)32=
0-3439</span></b><span style=3D"font-size:12.0pt;font-family:&quot;Times Ne=
w Roman&quot;,&quot;serif&quot;;color:#222222"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0in;margin-bottom:.0001pt;lin=
e-height:normal;background:white"><b><span style=3D"font-size:12.0pt;font-f=
amily:&quot;Cambria&quot;,&quot;serif&quot;;color:#222222">Email:=C2=A0<a h=
ref=3D"mailto:uma@genisists.com" target=3D"_blank"><span style=3D"color:#11=
55cc">uma@genisists.com</span></a></span></b><span style=3D"font-size:12.0p=
t;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#222222">=
<u></u><u></u></span></p>

<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>

</div>

</div>



<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com" target=3D=
"_blank">linux-ntb+unsubscribe@<wbr>googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:linux-ntb@googlegrou=
ps.com" target=3D"_blank">linux-ntb@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/06f801d51560%24c64e1f70%2452ea5e50%24%40com?utm_medium=
=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://groups.google.c=
om/d/<wbr>msgid/linux-ntb/06f801d51560%<wbr>24c64e1f70%2452ea5e50%24%40com<=
/a><wbr>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" targ=
et=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>
</blockquote>

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
om/d/msgid/linux-ntb/CA%2BPap5jYxic8ZGFwCkiEYYAzW1updgF3Hyq5Y5xAVwP6MnXkWw%=
40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goo=
gle.com/d/msgid/linux-ntb/CA%2BPap5jYxic8ZGFwCkiEYYAzW1updgF3Hyq5Y5xAVwP6Mn=
XkWw%40mail.gmail.com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

--0000000000002de1ae0589f4fc17--
