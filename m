Return-Path: <linux-ntb+bncBDC7ZQ52YQBBBYPER77AKGQEN2GLU4Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 116592C7ADC
	for <lists+linux-ntb@lfdr.de>; Sun, 29 Nov 2020 20:11:32 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id z4sf2961937pgr.22
        for <lists+linux-ntb@lfdr.de>; Sun, 29 Nov 2020 11:11:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606677089; cv=pass;
        d=google.com; s=arc-20160816;
        b=016Coq5AXYF1inrTf+QIpyT3KG+EdJj1eG+QaqhIxyYymmMGvuCuP8m/j+2OX0bi+d
         LluMSk0nxSzekP2ada/U1S8v8ggSxvU/qcUFkvvvQpHquZ4vvNp3KPo8Y06Pkc7zVs9Y
         j8fRtZHXijAbZ2OXyg/E7Yje17OAO0+N3tmRaOytMA49/HF2B+LIHmelfZ7+jPJVOh/V
         nypPIpMXcsrA+li+KJtnJ/wvUiB+ILxSg38Pyb1iJDZuITjgJPrslJWsmA11JI0oOTbf
         Gr5qjmUNBHaYQDboheMzYc4HJhJ8RUuSAqzctIbwJNkfU+YxN7t77XEW2ihc1ZnBjMBu
         jsOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:date:message-id
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=0DITPX+KHDErZogdgNjRFDKhz4MiqW4xXWCIMuTwM40=;
        b=GOYJLe4WJcW3lgXfK1EXJZ82L/WZhI5gIrbia35Z3TuFR87/PhUDkU12FjktZh6G5s
         PrT4DrwSR3xIMgtdGvOKHkVjfC2uV4AfUFO2YWjM3B64bQvsHEaPxw5Td4JCNDir6Mzg
         Dm7HqYeqaDVA/yJRiV955krgWaQ3Ha4Kk+GGzEWGogtqiCXAJhVQy33C+kjeWWJpXfeG
         7y8AXL9fbL9UoC1AHWb6Wv9sK8pDu6EUCUavXilETjtL60/xpcHJn9x61+6XW60dR9YL
         nVogkI/wjD8/NDdhXgYDtF0JF1gDhW0JrnbqqVOcyHsOHR1TnboBs9OPAO/raj2I74td
         vIRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cVQIZT4H;
       spf=pass (google.com: domain of 3ypldxw4jcvk29c1cdfii9jtus7d19c.3fdc9elo-ek27ff7c57iflgj.3fd@trix.bounces.google.com designates 2607:f8b0:4864:20::b45 as permitted sender) smtp.mailfrom=3YPLDXw4JCVk29C1CDFII9JTUS7D19C.3FDC9ELO-EK27FF7C57IFLGJ.3FD@trix.bounces.google.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0DITPX+KHDErZogdgNjRFDKhz4MiqW4xXWCIMuTwM40=;
        b=Gcgac2l8G5GnKqR2TopNBq3V8J0pDJMZYg7PPEhiNHV0q13lW4WZk8U1qlE84P9pvm
         py+Kcjtb8hOVHZ684cNXaaGD4kTBOeyl2+D5WokpBPJmSxc6Y0aXesnGWzsCu+95rXzT
         Di8EIIswnyvDsl+VGLZ5sTI/b2FspVy1oReuFvaIjgnH3yUgZ3Dlk0/UjoSuM82qf5FM
         cAiw37vFgFlMCgN7e5Kum9GhalVlr5BoUk8mcNkz2cSQpJpNIixQPMXUOSR55i2xe9Rt
         WmQhu/uiDu4KXktCSYzelnXjA6ibXhxm93pPMPpIqVO02BaAPWcyuAQG5stvAcGlXmO3
         h4KQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0DITPX+KHDErZogdgNjRFDKhz4MiqW4xXWCIMuTwM40=;
        b=c2+/HUktSlIUzFBuL4eFAUfh5OQwiRaQA7asvw5/5KVrX4iDy0ok+jCr0uW3igFUUh
         SafrIumykYiUKHjA4m3uv8RLtpq/F5t+RNTu6sl6a8L/+VWItoYWPKfN9Jc+Oc6Hi69a
         5wnHw0/mz3NctvjcpnO88Msvzf6DjR/bHenQsCsFRTuvOq6B/S1hG3gwwi2vAu4t/7W5
         uunXnEP96Uj8DtN+VqP+gt5jIK3Iwxntd/rCnQ2CiR5Nh5EEHShll/hbEtBv57jUiOcE
         a5H9hi/oRyn4H5YHLwAmVh+g2SUa+GC/StYfZdLlfISNjLX5B8hyWvn92aYlrvyiiYxr
         2sUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:message-id:date
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0DITPX+KHDErZogdgNjRFDKhz4MiqW4xXWCIMuTwM40=;
        b=alaqghRf2AdsOML4HplmPVOxO80xu2oNsW4Cqz7OAxK7eXdWMMNEW3daJEMFxrAP2U
         l7wAglP8/My/Ort3Ngy1klvzfkqXbGnPRLajYryE/TT3ZzXti3fgigm2nQyYLiPza06G
         LwuxMtJ7Fm978ZlFKeGQXXr6WmgHFpMbV9/AbeIVwo92JYRBXV6OE3yCageg6oZtQQkX
         23UKbNqe2n2ZBhCTWh8plyo/FIYJgblxfdLq/ulLldit9E5mNODPQw+rzBK+5KsTyE55
         J0vRD9SRTD6jkR8l/q8xMsyRYA0acjg315A7kuZ2PWgbL8F9z+sP7NERWYHuTm7s8JA5
         v+3Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Z7f/ML40YRuGC79rnXmSpEPofk2erHX5v4S+IsSbU8+TwbF7v
	cJb1Lly7D9p43c82IRmii+o=
X-Google-Smtp-Source: ABdhPJwR6Eu/Ioly6J17VwaCmk/X7BVbfQ0qNcpDM6tp2gSuLbithmkyMCCGRDAN5Y5XftkmWYlCMw==
X-Received: by 2002:a17:90a:3d48:: with SMTP id o8mr22466287pjf.103.1606677089218;
        Sun, 29 Nov 2020 11:11:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:524:: with SMTP id 33ls4676668plf.6.gmail; Sun, 29
 Nov 2020 11:11:28 -0800 (PST)
X-Received: by 2002:a17:902:854a:b029:da:113b:2d3f with SMTP id d10-20020a170902854ab02900da113b2d3fmr15761861plo.49.1606677088669;
        Sun, 29 Nov 2020 11:11:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606677088; cv=none;
        d=google.com; s=arc-20160816;
        b=YMed16gBNJqbGBsd1SHpDdWvCMGE+Vj+nPDeWzn8M6dWIdN1mOkpM1zO/w1nJFyerX
         KJu/58lpMs+9A3Jdh8BU0oUe0Cz6dPQchmLZJvoZ7ibOGGmd/vp5Ux+IUFUntCx5d6j2
         zESl6Q24CvZKz07+NuF5DBsDtP/3Us1CPERU6+FksC0Z2f8SW9yT4xwE7Ra9ee4hOG/+
         AsrSEH9fFFunknNP5X2DUnlyqr336ZUJ8Z83VRC2tkXMsTKd8qUTCNdWKF5CHPgzloQJ
         Nbwqdi8lz3HYixBumfs9BZnYOdRJKaV2ionpFyV6LBOlNXV51gYPUzBsU3UrNE2ZUwWG
         VuUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:reply-to:mime-version
         :dkim-signature;
        bh=6jqi3YJR39MbNnOH65mK2GjrxxzY5LE5eK7/Z6620vc=;
        b=oAIDJ4hLx4E4L9cLDi8vVe8lGEzkmQEssQjsQqIknw559Jzr/xSsbSSFfQ3K+Pu3ns
         CioFArzbQMOZ7b92diQwf3SXoER8pZ+R+ksTjz7xUjNb84qhNNuZVPhgc4lJhyXCho24
         IcQYZNmhJqqBryy+adFdJxOGxU7R1EiW41LfmcFo7sofKCAzqn3juX8QteVIPn5wsxPe
         ClBQJt15uazxiI6m/qEpQ3n4lhkl9vM/IiBBFXDwrSppuQ9TEHmBO1GQ/wmPeEAqzZ05
         +vA3o2VERqJma1e3/S99o/BYIxmPdrB48t90zH0aOfqRPQvJU2VzT4yhrSlTmiAqenz1
         Ft9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cVQIZT4H;
       spf=pass (google.com: domain of 3ypldxw4jcvk29c1cdfii9jtus7d19c.3fdc9elo-ek27ff7c57iflgj.3fd@trix.bounces.google.com designates 2607:f8b0:4864:20::b45 as permitted sender) smtp.mailfrom=3YPLDXw4JCVk29C1CDFII9JTUS7D19C.3FDC9ELO-EK27FF7C57IFLGJ.3FD@trix.bounces.google.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com. [2607:f8b0:4864:20::b45])
        by gmr-mx.google.com with ESMTPS id q32si521456pja.2.2020.11.29.11.11.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Nov 2020 11:11:28 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ypldxw4jcvk29c1cdfii9jtus7d19c.3fdc9elo-ek27ff7c57iflgj.3fd@trix.bounces.google.com designates 2607:f8b0:4864:20::b45 as permitted sender) client-ip=2607:f8b0:4864:20::b45;
Received: by mail-yb1-xb45.google.com with SMTP id c137so13240979ybf.21
        for <linux-ntb@googlegroups.com>; Sun, 29 Nov 2020 11:11:28 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a25:4c89:: with SMTP id z131mt18213781yba.339.1606677088006;
 Sun, 29 Nov 2020 11:11:28 -0800 (PST)
Reply-To: bilalmorris231@gmail.com
X-No-Auto-Attachment: 1
Message-ID: <00000000000019778b05b543a944@google.com>
Date: Sun, 29 Nov 2020 19:11:28 +0000
Subject: Congratulation! (Mega Millions Lottery)
From: bilalmorris231@gmail.com
To: linux-ntb@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000001af8eb05b543a978"
X-Original-Sender: bilalmorris231@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cVQIZT4H;       spf=pass
 (google.com: domain of 3ypldxw4jcvk29c1cdfii9jtus7d19c.3fdc9elo-ek27ff7c57iflgj.3fd@trix.bounces.google.com
 designates 2607:f8b0:4864:20::b45 as permitted sender) smtp.mailfrom=3YPLDXw4JCVk29C1CDFII9JTUS7D19C.3FDC9ELO-EK27FF7C57IFLGJ.3FD@trix.bounces.google.com;
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

--0000000000001af8eb05b543a978
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

I've invited you to fill out the following form:
Untitled form

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLSejitRsY0yrE6F4TILKy0bfmau43DYeveiXnH_uGVxYOKKetw/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

Congratulations You have won $ 850,000.00USD Your E-Mail Name Is Among
the Lucky Winners at Mega Millions Lottery Online promo, Ticket Number
(88910), For more information contact us Via Tel: +44} 7045746552. or
reply to this email: peterjeng042@gmail.com

Your winning reference numbers are PMG / EBD / 850AF and will Instruct you
on claim arrangements for your winning prize.

Please note this, You are only required to forward your Name and your  
Address.

Your Full Name.
Your Age.
Your Country / Home Address.
Your Telephone Number.
Your Occupation.

Thank you and once More Congratulations.

Yours faithfully,
Agent Morris Bilal.
Claims / verification Agent,

Google Forms: Create and analyze surveys.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/00000000000019778b05b543a944%40google.com.

--0000000000001af8eb05b543a978
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
424242;" dir=3D"auto">Congratulations You have won $ 850,000.00USD Your E-M=
ail Name Is Among<br>the Lucky Winners at Mega Millions Lottery Online prom=
o, Ticket Number<br>(88910), For more information contact us Via Tel: +44} =
7045746552. or<br>reply to this email: peterjeng042@gmail.com<br><br>Your w=
inning reference numbers are PMG / EBD / 850AF and will Instruct you<br>on =
claim arrangements for your winning prize.<br><br>Please note this, You are=
 only required to forward your Name and your Address.<br><br>Your Full Name=
.<br>Your Age.<br>Your Country / Home Address.<br>Your Telephone Number.<br=
>Your Occupation.<br><br>Thank you and once More Congratulations.<br><br>Yo=
urs faithfully,<br>Agent Morris Bilal.<br>Claims / verification Agent,</spa=
n></td></tr><tr height=3D"20px"><td></tr><tr style=3D"font-size: 20px; line=
-height: 24px;"><td dir=3D"auto"><a href=3D"https://docs.google.com/forms/d=
/e/1FAIpQLSejitRsY0yrE6F4TILKy0bfmau43DYeveiXnH_uGVxYOKKetw/viewform?vc=3D0=
&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dmail_form_link" style=3D"color: =
rgb(103,58,183); text-decoration: none; vertical-align: middle; font-weight=
: 500">Untitled form</a><div itemprop=3D"action" itemscope itemtype=3D"http=
://schema.org/ViewAction"><meta itemprop=3D"url" content=3D"https://docs.go=
ogle.com/forms/d/e/1FAIpQLSejitRsY0yrE6F4TILKy0bfmau43DYeveiXnH_uGVxYOKKetw=
/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dmail_goto_form">=
<meta itemprop=3D"name" content=3D"Fill out form"></div></td></tr><tr heigh=
t=3D"24px"></tr><tr><td><table border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" width=3D"100%"><tbody><tr><td><a href=3D"https://docs.google.com/for=
ms/d/e/1FAIpQLSejitRsY0yrE6F4TILKy0bfmau43DYeveiXnH_uGVxYOKKetw/viewform?vc=
=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&amp;usp=3Dmail_form_link" style=3D"bor=
der-radius: 3px; box-sizing: border-box; display: inline-block; font-size: =
13px; font-weight: 700; height: 40px; line-height: 40px; padding: 0 24px; t=
ext-align: center; text-decoration: none; text-transform: uppercase; vertic=
al-align: middle; color: #fff; background-color: rgb(103,58,183);" target=
=3D"_blank" rel=3D"noopener">Fill out form</a></td></tr></tbody></table></t=
d></tr><tr height=3D"24px"></tr></tbody></table></div><table align=3D"cente=
r" cellpadding=3D"0" cellspacing=3D"0" style=3D"max-width: 672px; min-width=
: 154px;" width=3D"100%" role=3D"presentation"><tbody><tr height=3D"24px"><=
td></td></tr><tr><td><a href=3D"https://docs.google.com/forms?usp=3Dmail_fo=
rm_link" style=3D"color: #424242; font-size: 13px;">Create your own Google =
Form</a></td></tr></tbody></table></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/00000000000019778b05b543a944%40google.com?utm_medium=
=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-ntb/0=
0000000000019778b05b543a944%40google.com</a>.<br />

--0000000000001af8eb05b543a978--
