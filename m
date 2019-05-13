Return-Path: <linux-ntb+bncBDK2JZONSUPRBGOR43TAKGQEOETTJBQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0031BBDE
	for <lists+linux-ntb@lfdr.de>; Mon, 13 May 2019 19:25:47 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id s6sf2003779vke.2
        for <lists+linux-ntb@lfdr.de>; Mon, 13 May 2019 10:25:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1557768346; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lgl21PuDxX2mXh2aCy8xhF7EXiXHVHOU32RaITtyQEn3JRv9U99Tou+Fh5qtPIszc1
         eGzTIExAZodb9U48he4U6HNaylfALX1pM4rG+uswIk6vghxghybG9Xugbca7RdyCKZZ/
         zRL7+KGQNap7A0n2YWAe09RG92G55QEHc1kBJtkr+3X9PDkiQUyNOwoP3UczHm0PL4FL
         S7FchbXpJ/CohQc6jxFjlj8SxzvQ4kPiwmXKu4hyw6p1e9lrNPp4by3BWtwaD6EQkQJn
         GNplV4mVGVZ/wp9pUlH72TYJoUswHbnHTnfA1yle8lspjzoPoxj5exWM0QkUMcFmyE1N
         mRUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=TmJmDqS9LP7E7UvwuLclIGdtuXLZJLqvPiv89HRw7x8=;
        b=gv2JFcT5Bw+cB2bQx+N7fu9ntVyGBFb6RxdZMos+f7CGl9tmUKiYr/X+SPP+shfJq6
         zrXRjCr11muFPqoPt7Ou0HP4Shp4sRh2X/f2b//eR5suNpIsnBSczOL665wDAeLNb4bI
         xN9y1wBz0c3wDvGCsHkpcA4gadBOzfpmACRz/GROHCTt9oFAP87rzMV1jS6wGTwSW0La
         6EkBNHuI41lQ5qTfP4UP8vEDHVVeZzQjQdLJwxR9kOJflPiEi7xUfAZaB/wAmz3xO0OV
         OoInWwcdTBHlut/dEzXgZhlS/LP8UtKqtCAdMy1IcemqntsYUA+YqUIOfZUy+51bXDdS
         tWnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M3U4pAOi;
       spf=pass (google.com: domain of sai1.solugenix@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sai1.solugenix@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TmJmDqS9LP7E7UvwuLclIGdtuXLZJLqvPiv89HRw7x8=;
        b=Fo5R7pr+cAToa9iIRsZVKPg2Rm9nlHoUOFvAQy569nYBYgX9upvXZLSKsgI4kdZV0r
         RmaPc9DUy4LWQ1JwJP1XXcSo+VBhNjcwiowPAqV6ixkA6cc60P4+owp0vhUXSRnjMD+I
         ldUjSv1b0zSxzdESxKEzKpehUVihw40cTM2kjmyhLeOVkRikw5qVkAx3r2LiRcK1XJTe
         A+HBbX2k1ZQHIe/pR84MapS3nJshLfzemdahDoZ+zAarU+7w5GL6Uxzq9Oqu3VItoezC
         7AGoZnjoIBBpd4Z8swaoRt0eh8SV7d26qPE2vieg8Q4khr0S32WbXdBq7fTeSCnEcIz5
         dNHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TmJmDqS9LP7E7UvwuLclIGdtuXLZJLqvPiv89HRw7x8=;
        b=OWzBxQMbPkmLLTupClFridzQpcDnU3BX9cflevxvHIppRvFlxfkiXBtMICc9UedC+L
         UNazFHc2gkZUOHSe3IO2KgAp8MD0zZDUjO7ob2MDiHP2syL36GzxrmOrU7C1TTHNqPmM
         zPnig8YBb8GDIrmCWgiZT9GvLIWD/BWJUJVweDDLdYHAMrtVE3QBLLqihiDay6WGoCay
         vO5NPtuUrqVicI/YWaXf1zpwgYKX80HoE2sOnBfRNQ4wdSFlv2POPZGBWMZTDv/WNSw6
         +iD8EtBQlCF+Rdmhz8JPqKZXfxVP9U/VBoCMRQMKBz384YnKeR2T9IiK09miMFg8pB9d
         U4yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TmJmDqS9LP7E7UvwuLclIGdtuXLZJLqvPiv89HRw7x8=;
        b=OJAcleC2cI5YHHmhz+xczwDeZPVIlz78r+ylEmJHqxF6ylCw6yzkIL09v60cDW7SrY
         CBtNDOCqXAiCxVSzS/8iDkKgWAi/qyE/o9FRxhj3ARFEx359uakmZF0FMFmhCtjCWiF9
         q8M2iTw1HajozUmh4gqzBiaJvPlLTPIvXlgndtOU5pTa+euMYcv6B4bouxuQQn+f6Xaw
         q2zp6eJj1797ynKYFIrpm6XuX7eZwNt7UWgpqvLsserbSNqIv9YX4k0WkQwpcDMRSw53
         MAT3uesHm4bp2FiqNj4aOx2SmZTDVK3AabQCXLatM/GBQnaE65v+DIZG6jMcK2Q1yXYB
         jepA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWF9as9QU6r+JZ0PX1x33D7x+rImZaJODBfeOFbIgFjhvts11Hj
	0uPrfrIgTwMIIeYVu1/b9lk=
X-Google-Smtp-Source: APXvYqxtkb7lHEoeZ6Rp9qHJbbYNfLJlBt++txFosT+E7YrBRsDMFgiEZRY37efRszHVvV/U3zQiqA==
X-Received: by 2002:a1f:61c6:: with SMTP id v189mr12396067vkb.87.1557768345986;
        Mon, 13 May 2019 10:25:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:324e:: with SMTP id r14ls731453uan.11.gmail; Mon, 13 May
 2019 10:25:45 -0700 (PDT)
X-Received: by 2002:ab0:3445:: with SMTP id a5mr7705135uaq.136.1557768345588;
        Mon, 13 May 2019 10:25:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1557768345; cv=none;
        d=google.com; s=arc-20160816;
        b=0dcaui9MPqUPuGI4BAewK0vHXFWAxLT6ejeXPFjRNh8yCUNir4veRsCm01sHEoBLWy
         gnlu6WR1+cXTH17OKtryB1NEPZVBHse21ee7cXMKgBOhhYq/wZE8ZN5yxH4zNhIGgDTL
         gzzWu7Ikn1d+1MU5zqUpDTtTvhmXte2ee9GS/wf0JxWTDv5CoPj0P4HGd6FVf46zp45y
         xhnq9M1csTXckZyPMmLWsJVA64sF0Lc4pji+sMoARtqJqzyKPSXc2KQ28Yw3zMP33qPc
         rb1e3YcDXZFUAeraWQHUEgDJUCYC5Ls20JKFuJaSJGJ+kx/EImoN6PjIjgoFCMExJee/
         95Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=FVsEAyMgg4Kgdj0n7FRvpQyEYw3a00qUibR0OPL9nCQ=;
        b=x4szGazafJRl+qLCNoNO7SbJwyzffWce6hRvaGhm4EFgx/+adiGLVktaeW+DFdIbXN
         alc0KjgCxx3k0PLTJ1kN6tOz1IIfb8IGhtHrCH7K+ChIfvpq+NNM6YGa8puesSvgvOEU
         AIciePwKcLtL660eOgTAte5UN6axePEOMhbJn0RTV9qmNii0bfzbS6J9m8xi3dGtPx+8
         RhWq2z9UhDrIBJxzGFLwSMUjn5JddclJ8Vt9zrv3fbeaWjvoHs3euInFTQg9NVYtfnPy
         ZSjVjnZBth7SwGR4k14rKVYc1muwjLUOa7ae+8PX+xAeH01+ApVy5j//B6CHiAP+FXqq
         JRxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M3U4pAOi;
       spf=pass (google.com: domain of sai1.solugenix@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sai1.solugenix@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id 19si861988vkv.4.2019.05.13.10.25.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 May 2019 10:25:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sai1.solugenix@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id m7so10696860ioa.6
        for <linux-ntb@googlegroups.com>; Mon, 13 May 2019 10:25:45 -0700 (PDT)
X-Received: by 2002:a05:6602:143:: with SMTP id v3mr9181538iot.45.1557768344907;
 Mon, 13 May 2019 10:25:44 -0700 (PDT)
MIME-Version: 1.0
From: Sai Kumar <sai1.solugenix@gmail.com>
Date: Mon, 13 May 2019 10:25:36 -0700
Message-ID: <CAAQxFq62SKV=AN-A6eZrvQ0coVJGtLm6nCdoFpwcHVDJS8qPyQ@mail.gmail.com>
Subject: Urgent Need : SailPoint Administrator @ Irvine CA ( Direct Client )
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000d733d90588c834f9"
X-Original-Sender: sai1.solugenix@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M3U4pAOi;       spf=pass
 (google.com: domain of sai1.solugenix@gmail.com designates
 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sai1.solugenix@gmail.com;
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

--000000000000d733d90588c834f9
Content-Type: text/plain; charset="UTF-8"

Hi,



Greetings from solugenix!!!

My Name is Sai Kumar, working as "Recuiter" for Solugenix.



Solugenix is an information technology services firm that has a rich
history of providing comprehensive technology services and solutions for
more than four decades. Since 1969, Solugenix Corporation has been
fulfilling the IT services needs of some of the most respected global
corporations in the U.S.



Please find the below direct client position open which has opened and *waiting
for the Full Job Description* . Please let me know if you are available and
interested in submitting your resume to this position.



*If you are not available, Please refer anyone whom you know in your
contacts . I would be really grateful to you.*



*Client        : Investment Management Domain*

*Position    : Sailpoint administrator*

*Location   : Irvine CA*

*Duration   : 6+ months to Long Term*





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
cid:image004.png@01D0C49A.9EEF1260] <https://twitter.com/solugenix>  [image:
cid:image005.png@01D0C49A.9EEF1260] <https://www.youtube.com/user/solugenix>

Your employment with the Company will be on an at-will basis such that both
you and the Company have the right to terminate the employment relationship
at any time with or without notice.  Nothing in this e-mail should be
construed as creating any guaranteed length of employment.  This email is
not intended to be a solicitation. It is targeted at recruiting &
consulting professionals. If you have received this in error, please accept
our apologies & reply with REMOVE as subject to be removed from our mailing
list. We regret any inconvenience caused.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAAQxFq62SKV%3DAN-A6eZrvQ0coVJGtLm6nCdoFpwcHVDJS8qPyQ%40mail.gmail.com.
For more options, visit https://groups.google.com/d/optout.

--000000000000d733d90588c834f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;fo=
nt-size:11pt;font-family:Calibri,sans-serif">Hi,</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Greetings from solugenix!!!</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">My Name is Sai Kumar, working as &quot;Recuiter=
&quot; for
Solugenix.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Solugenix is an information technology services=
 firm that
has a rich history of providing comprehensive technology services and solut=
ions
for more than four decades. Since 1969, Solugenix Corporation has been
fulfilling the IT services needs of some of the most respected global
corporations in the U.S. </p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Please find the below direct client position op=
en which has
opened and <b><span style=3D"background:yellow">waiting for
the Full Job Description</span></b> . Please let me know if you are availab=
le
and interested in submitting your resume to this position.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b><span style=3D"background:yellow">If
you are not available, Please refer anyone whom you know in your contacts .=
 I
would be really grateful to you.</span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Client=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 :
Investment Management Domain</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Position=C2=A0=C2=A0=C2=A0 : Sailpoint admin=
istrator</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Location=C2=A0=C2=A0 : Irvine CA</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Duration=C2=A0=C2=A0 : 6+ months to Long Ter=
m</b></p>

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
4,64,64)"><img width=3D"120" height=3D"120" style=3D"height: 1.25in; width:=
 1.25in;" alt=3D"cid:image006.png@01D4BD76.95F0E4D0"></span></p>
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
om/d/msgid/linux-ntb/CAAQxFq62SKV%3DAN-A6eZrvQ0coVJGtLm6nCdoFpwcHVDJS8qPyQ%=
40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goo=
gle.com/d/msgid/linux-ntb/CAAQxFq62SKV%3DAN-A6eZrvQ0coVJGtLm6nCdoFpwcHVDJS8=
qPyQ%40mail.gmail.com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

--000000000000d733d90588c834f9--
