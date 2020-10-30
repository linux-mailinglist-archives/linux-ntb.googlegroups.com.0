Return-Path: <linux-ntb+bncBCEOFDUJ3EKRB4XL6D6AKGQESLANFYY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id D10D62A0A41
	for <lists+linux-ntb@lfdr.de>; Fri, 30 Oct 2020 16:49:07 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id m7sf1808429pls.12
        for <lists+linux-ntb@lfdr.de>; Fri, 30 Oct 2020 08:49:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604072946; cv=pass;
        d=google.com; s=arc-20160816;
        b=DrIWqxXsM33fM9+URgeZfapWQbyEd4kok/tW4xGxWLLfsQdmEpqNXo7SU39yOzOHf9
         3+Gy50h2B3FznSKnaJacBN2Omu6y5QGQVFza8rumzPqx3tOpDUZP2KP2OPvag2U10dXd
         v2XRujlE6XbOh/tWn7wPpumlz5AS6ur4q022CfCPfW5Q8N7w8RU405QGUMZi7GBK18Fm
         Mv5wT4fHSziNAru8bOVFhIRobqxIvAz+JoXvV5xBvDQw5FiR+iDaVrQ55nX164tHbXVQ
         seJ4oezMbDjcNkJH17Z9fDp7WIE17QLAZ90jC///bHZf/s0xgrdbDmbP9Q5fJUjQKm8o
         HtEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:date:message-id
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=N0nORBkuIRDExJwKDweePQRCTPcVOHzXMTvk+S1HfLs=;
        b=sJhkpXOGY2tLIMamfCL9JJFuN7JJ2XwC96iXr7ESRRp+bS5bCwjQvHAQwIblioSVjc
         m/inKzJI55rJOCvYco37QkyqtdYCs4tZpvvrp/wMnjFRlbQrpBmW+s1zq+bLNa3xSTp6
         w+OyPUp3c8Eq29GyAtKmx5RCPeObNa1eFVNaLV9bvCtpE6IHbHvYVs73RF/tZui6Y+au
         BU7UnNuF5RVVYE6ieYFhH19mC8H9bMl8oTEaI0/uUtJSshiwtwZsZT5CDs7z7Ia6EAdZ
         f6woMXAGke3k8RIb7xhK2owX0B+jzQ3w3bFlC8gumf/uZtVH8Lk7Xrfr0Vyn5LiO00PF
         3kdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PntIyDLl;
       spf=pass (google.com: domain of 38twcxxejcda2wxd407f3a8wevmnm28w47.ya8749gj-9fx2aa2702dagbe.ya8@trix.bounces.google.com designates 2607:f8b0:4864:20::845 as permitted sender) smtp.mailfrom=38TWcXxEJCdA2wxD407F3A8wEVMNM28w47.yA8749GJ-9Fx2AA2702DAGBE.yA8@trix.bounces.google.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N0nORBkuIRDExJwKDweePQRCTPcVOHzXMTvk+S1HfLs=;
        b=PDcoee6hbzS31tKN0MKuz1blfCvcnZ9ofgYFVsEv2QjuSDFnLSBzG9zi7OdmDZZu/6
         ECBcAujExeekznMAPMuLnJ67mVVfjIeNWfKmuVetOoABkstoeHzG4Dwyou1c9sj5sRi/
         ZpAZjLGml25cSGS9q6rkNLAB6VgsyBU4XgGRQVUM3ZdA6ErZR2zEWTyd3/hXCcQJxiLg
         E4qWqzS0tl3P5adhtHkB0wtHkvjipiuQ9/kA9m7aCo97/5XYMG20MM9/ma0+NyFu48LK
         NNrdN87W57y4JYetxZozQydBJ/kj7gi3NtID10yIbxmfrFFVCKAkIazIWNuEek1cXkSk
         MX/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N0nORBkuIRDExJwKDweePQRCTPcVOHzXMTvk+S1HfLs=;
        b=IYEY2/2E7MAnL3ryOenOX3e4yTre87OyWOSsQshzyE1B/EDjjV+nk94jhe3YUn1HIl
         JeJV/jwknUxe7ZV4tCG55J0XcrSr9bl8gLgyogk6/CMEEQi+fTkRVFUnJniYhtK1CVfE
         ekh7O+3wG3HQoniaAoYQl1HQn5ImOdkjHF3dyHhfagtJaRDEQbLET6MWCcJ4qwbksH0a
         sjPHMLbJIYBzhZHcHQilOxSzz6PU0kWsq8SUJnDxb+g+KM8A7/0CVsdMQdnmIiGHIpJn
         jr0NwjWraUCMPeQ/xiIPhp+gj+daBg1nxhM1c7UGIN1FbOWcDz0iACkrukw3AIeuC1X5
         a6Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:message-id:date
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N0nORBkuIRDExJwKDweePQRCTPcVOHzXMTvk+S1HfLs=;
        b=i6ZGWKYa6sIqP2NEJmTgLkltFBDKJJW2aYjxso0NYJLlddhdXLwkFjQc2SC5bTm5Nh
         KgVFRSQ1mEVGy2Xnr+VS4vO3ZViGJOYe7rM3PcMWGKFQatMbGu0b3M1VdYbMzvBnsZhB
         canPpQUjvAZjEpdTeOdlj7fFIeJCovnhN9eSUncs3fjHz8wk8w8vOpST3RyvovtKWBFk
         CYzHIfdFeCkbXqe+oKK19g8DgnMZy3AZ32ZNTWbizymihpkfB58lHYAzrWWOtdb8+dXU
         Amhp66++kkU3Hk9H/zmUyO/URFc1JSVPU3rCNOuMnSmxOBCldZXgZcZykli7S9DMum1T
         7JDA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533gg0yD7WWor5xxjCnn1SCfxyf6PK/dRtHnoHzKvkHTOmEAfFaq
	J64eM55OCMgcGVVY6BujK30=
X-Google-Smtp-Source: ABdhPJwaZaNX0lJsrCdlj/ydSPnRWKQqzTa36BP+YORqWBBaO2fJSbkTgWzX9r+PGV4WowlA1IivVw==
X-Received: by 2002:a05:6a00:8c5:b029:142:2501:39e6 with SMTP id s5-20020a056a0008c5b0290142250139e6mr10075559pfu.53.1604072946573;
        Fri, 30 Oct 2020 08:49:06 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:5112:: with SMTP id f18ls2452901pgb.0.gmail; Fri, 30 Oct
 2020 08:49:06 -0700 (PDT)
X-Received: by 2002:a63:6d4e:: with SMTP id i75mr2774665pgc.305.1604072946054;
        Fri, 30 Oct 2020 08:49:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604072946; cv=none;
        d=google.com; s=arc-20160816;
        b=YfqLi6rQcE1LO2YIkLF2VRikKx56tvKW7zvW7Fguu6bR1+1Ey8fKMjf/hoN03PHFeZ
         JiLe2ELeZrS7vi2XwlVpUkFjQdDzGVwWgp9pBKAScVO2FQu1mX2ahmOAqBKxDlaoWosL
         hNwY+HC+Nz0HiOjyDervNz0cUyny4PvpjH3FiZkN1yC1m+cYqBPhZW/Yggh695shQ0a3
         3u2txg8fJy2VXHgCakgl8cpA+KdXEcFmklASM4LX3OVC1c8dEr5RQO8h8YttHuqXuHtW
         dcjuN22I7jx+rW9aohrmUPJ3e8dqkGjpAuQSfABNUanYgfdVuK2/ax1VV8wDjTKTxiGE
         BZfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:reply-to:mime-version
         :dkim-signature;
        bh=zKBJFrdPCnpQrIwDIbjEzJzvAgsPO3ae2RuupVC5UmE=;
        b=Xi1OttPyIbtLl300yiL5BXPTuqQkHkUMiyKcBxwpYaj+3Du9gHzBmwcjHouwLmWNgQ
         RGggHy/BuguJpuU4SJeWpTvEEiX1hVO3OdEznJOnX4bVqCXuRTQGKY7Ee6leUMzInWwS
         FaZmb7KX9soKFF3BybZBjOCqNnupBE1VkC+P25XpTgzs0+AkrQuc0waAMEzT3c7dfNDS
         zR/VvngaZr17PiD++TlDjM5FaIjklIfcCslG0Efhp517Z6ajB7zVfRyukTY9XcSDIdWJ
         5X2gmy09LH0SSZD9VuSDN2Xqim8L6LGMsJyjy3TOlP8TFsT1fKbSoYtWRCDw7TnKix7N
         NZTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PntIyDLl;
       spf=pass (google.com: domain of 38twcxxejcda2wxd407f3a8wevmnm28w47.ya8749gj-9fx2aa2702dagbe.ya8@trix.bounces.google.com designates 2607:f8b0:4864:20::845 as permitted sender) smtp.mailfrom=38TWcXxEJCdA2wxD407F3A8wEVMNM28w47.yA8749GJ-9Fx2AA2702DAGBE.yA8@trix.bounces.google.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com. [2607:f8b0:4864:20::845])
        by gmr-mx.google.com with ESMTPS id h17si284613pjv.3.2020.10.30.08.49.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 08:49:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38twcxxejcda2wxd407f3a8wevmnm28w47.ya8749gj-9fx2aa2702dagbe.ya8@trix.bounces.google.com designates 2607:f8b0:4864:20::845 as permitted sender) client-ip=2607:f8b0:4864:20::845;
Received: by mail-qt1-x845.google.com with SMTP id f10so4218490qtv.6
        for <linux-ntb@googlegroups.com>; Fri, 30 Oct 2020 08:49:06 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:ac8:832:: with SMTP id u47mt2800224qth.376.1604072945341;
 Fri, 30 Oct 2020 08:49:05 -0700 (PDT)
Reply-To: gabrielthomas9010@gmail.com
X-No-Auto-Attachment: 1
Message-ID: <00000000000019dd0d05b2e5566a@google.com>
Date: Fri, 30 Oct 2020 15:49:05 +0000
Subject: Hi;
From: gabrielthomas9010@gmail.com
To: linux-ntb@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000001b225805b2e55610"
X-Original-Sender: gabrielthomas9010@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PntIyDLl;       spf=pass
 (google.com: domain of 38twcxxejcda2wxd407f3a8wevmnm28w47.ya8749gj-9fx2aa2702dagbe.ya8@trix.bounces.google.com
 designates 2607:f8b0:4864:20::845 as permitted sender) smtp.mailfrom=38TWcXxEJCdA2wxD407F3A8wEVMNM28w47.yA8749GJ-9Fx2AA2702DAGBE.yA8@trix.bounces.google.com;
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

--0000000000001b225805b2e55610
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

I've invited you to fill out the following form:
Untitled form

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLScuNN46De4NTNDuI_3Rm2L6CNABd5Ra0TyGG6ZxgVbAw2h7Ug/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

  Hi,
Hope I am not intruding on your space here.
If you are interested in equity or loan financing,
I would be glad to assist.
We are a private financial firm that acquires well established small and  
lower
middle market businesses with predictable revenue and cash flow;
typically partnering with industry professionals
to operate them.
We also have a Capital Formation Division that assists companies at
all levels of development raise
capital through hedge funds. We charge %1 commission at the successful
closing of any deal.
Additionally, we also fund
secured as well as unsecured lines of credit and term loans.
Would that be something of interest to you and your group?
Please let me know your thoughts.
Sorry if you get this message in your spam box, poor network
connection may be responsible for such.
Best regards...... Gennadiy Medovoy.

Google Forms: Create and analyze surveys.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/00000000000019dd0d05b2e5566a%40google.com.

--0000000000001b225805b2e55610
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: Roboto,Helvetica,Arial,sans-serif; margin=
: 0; padding: 0; height: 100%; width: 100%;"><table border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"background-color:rgb(103,58,183);" width=
=3D"100%" role=3D"presentation"><tbody><tr height=3D"64px"><td style=3D"pad=
ding: 0 24px;"><img alt=3D"Google Forms" height=3D"26px" style=3D"display: =
inline-block; margin: 0; vertical-align: middle;" width=3D"143px" src=3D"ht=
tps://www.gstatic.com/docs/forms/google_forms_logo_lockup_white_2x.png"></t=
d></tr></tbody></table><div style=3D"padding: 24px; background-color:rgb(23=
7,231,246)"><div align=3D"center" style=3D"background-color: #fff; border-b=
ottom: 1px solid #e0e0e0;margin: 0 auto; max-width: 624px; min-width: 154px=
;padding: 0 24px;"><table align=3D"center" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"background-color: #fff;" width=3D"100%" role=3D"presentation">=
<tbody><tr height=3D"24px"><td></td></tr><tr><td><span style=3D"display: ta=
ble-cell; vertical-align: top; font-size: 13px; line-height: 18px; color: #=
424242;" dir=3D"auto"> Hi,<br>Hope I am not intruding on your space here.<b=
r>If you are interested in equity or loan financing,<br>I would be glad to =
assist.<br>We are a private financial firm that acquires well established s=
mall and lower<br>middle market businesses with predictable revenue and cas=
h flow;<br>typically partnering with industry professionals<br>to operate t=
hem.<br>We also have a Capital Formation Division that assists companies at=
<br>all levels of development raise<br>capital through hedge funds. We char=
ge %1 commission at the successful<br>closing of any deal.<br>Additionally,=
 we also fund<br>secured as well as unsecured lines of credit and term loan=
s.<br>Would that be something of interest to you and your group?<br>Please =
let me know your thoughts.<br>Sorry if you get this message in your spam bo=
x, poor network<br>connection may be responsible for such.<br>Best regards.=
..... Gennadiy Medovoy.</span></td></tr><tr height=3D"20px"><td></tr><tr st=
yle=3D"font-size: 20px; line-height: 24px;"><td dir=3D"auto"><a href=3D"htt=
ps://docs.google.com/forms/d/e/1FAIpQLScuNN46De4NTNDuI_3Rm2L6CNABd5Ra0TyGG6=
ZxgVbAw2h7Ug/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dmail=
_form_link" style=3D"color: rgb(103,58,183); text-decoration: none; vertica=
l-align: middle; font-weight: 500">Untitled form</a><div itemprop=3D"action=
" itemscope itemtype=3D"http://schema.org/ViewAction"><meta itemprop=3D"url=
" content=3D"https://docs.google.com/forms/d/e/1FAIpQLScuNN46De4NTNDuI_3Rm2=
L6CNABd5Ra0TyGG6ZxgVbAw2h7Ug/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D=
0&amp;usp=3Dmail_goto_form"><meta itemprop=3D"name" content=3D"Fill out for=
m"></div></td></tr><tr height=3D"24px"></tr><tr><td><table border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tbody><tr><td><a href=3D"h=
ttps://docs.google.com/forms/d/e/1FAIpQLScuNN46De4NTNDuI_3Rm2L6CNABd5Ra0TyG=
G6ZxgVbAw2h7Ug/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dma=
il_form_link" style=3D"border-radius: 3px; box-sizing: border-box; display:=
 inline-block; font-size: 13px; font-weight: 700; height: 40px; line-height=
: 40px; padding: 0 24px; text-align: center; text-decoration: none; text-tr=
ansform: uppercase; vertical-align: middle; color: #fff; background-color: =
rgb(103,58,183);" target=3D"_blank" rel=3D"noopener">Fill out form</a></td>=
</tr></tbody></table></td></tr><tr height=3D"24px"></tr></tbody></table></d=
iv><table align=3D"center" cellpadding=3D"0" cellspacing=3D"0" style=3D"max=
-width: 672px; min-width: 154px;" width=3D"100%" role=3D"presentation"><tbo=
dy><tr height=3D"24px"><td></td></tr><tr><td><a href=3D"https://docs.google=
.com/forms?usp=3Dmail_form_link" style=3D"color: #424242; font-size: 13px;"=
>Create your own Google Form</a></td></tr></tbody></table></div></body></ht=
ml>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/00000000000019dd0d05b2e5566a%40google.com?utm_medium=
=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-ntb/0=
0000000000019dd0d05b2e5566a%40google.com</a>.<br />

--0000000000001b225805b2e55610--
